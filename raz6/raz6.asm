option casemap:none        ; Учитывать регистр символов

.data
    value1 dq 15          ; Первое число
    value2 dq 7           ; Второе число
    result dq ?           ; Переменная для результата

.code
main proc
    ; Выравнивание стека
    sub rsp, 28h          ; Shadow space (32) + выравнивание (8)
    
    ; 1. Сложение (15 + 7 = 22)
    mov rax, value1
    add rax, value2       ; RAX = 22
    
    ; 2. Вычитание (15 - 7 = 8)
    mov rbx, value1
    sub rbx, value2       ; RBX = 8
    
    ; 3. Умножение (15 * 7 = 105)
    mov rcx, value1
    imul rcx, value2      ; RCX = 105
    
    ; 4. Деление (15 / 7 = 2)
    xor rdx, rdx          ; Обнуляем RDX перед делением
    mov rax, value1
    mov rsi, value2
    div rsi               ; RAX = 2, RDX = 1 (остаток)
    
    ; Сохраняем результаты
    mov result, rax       ; Сохраняем результат деления
    
    ; Завершение программы
    mov ecx, 0            ; Код возврата 0
    call ExitProcess
    
    add rsp, 28h          ; Восстановление стека (не выполнится)
    ret
main endp

; Импорт функций
includelib kernel32.lib
extrn ExitProcess: proc
end