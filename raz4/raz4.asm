option casemap:none

; Подключаем необходимые функции из Windows API
includelib kernel32.lib
extrn GetStdHandle: proc
extrn WriteConsoleA: proc
extrn ExitProcess: proc

.data
    msg db 'Hello, Assembly World!', 0   ; Сообщение для вывода (с нуль-терминатором)
    msg_len equ $ - msg - 1              ; Длина сообщения (без нуль-терминатора)
    
    stdout_handle dq ?                   ; Переменная для хранения дескриптора консоли
    bytes_written dq ?                   ; Переменная для количества записанных байт

.code
main proc
    ; Выравниваем стек и резервируем shadow space (32 байта)
    sub rsp, 28h
    
    ; 1. Получаем дескриптор стандартного вывода (STD_OUTPUT_HANDLE = -11)
    mov ecx, -11                         ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov stdout_handle, rax               ; Сохраняем дескриптор
    
    ; 2. Выводим сообщение с помощью WriteConsoleA
    mov rcx, stdout_handle               ; Дескриптор консоли
    lea rdx, msg                         ; Указатель на сообщение
    mov r8d, msg_len                     ; Длина сообщения
    lea r9, bytes_written                ; Указатель на переменную для количества записанных байт
    mov qword ptr [rsp+20h], 0           ; Пятый параметр (резервирование места, можно NULL)
    call WriteConsoleA
    
    ; 3. Завершаем программу с кодом 0
    mov ecx, 0
    call ExitProcess
    
    add rsp, 28h                         ; Восстановление стека (не выполнится)
    ret
main endp
end