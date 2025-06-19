option casemap:none        ; Учитывать регистр символов

; Импорт функций
includelib kernel32.lib
extrn ExitProcess: proc

.code
; Процедура AddTwoNumbers
; Принимает: RCX - первое число, RDX - второе число
; Возвращает: RAX - сумма чисел
AddTwoNumbers proc
    mov rax, rcx        ; Копируем первое число в RAX
    add rax, rdx        ; Складываем с вторым числом
    ret                 ; Возвращаем результат в RAX
AddTwoNumbers endp

; Главная процедура для тестирования
main proc
    sub rsp, 28h        ; Выделяем shadow space (32 байта + 8 для выравнивания)
    
    ; Тестируем процедуру
    mov rcx, 15         ; Первый аргумент
    mov rdx, 25         ; Второй аргумент
    call AddTwoNumbers   ; Вызываем процедуру (результат в RAX)
    
    ; Используем результат (например, как код возврата)
    mov ecx, eax        ; Копируем результат в ECX для ExitProcess
    
    ; Завершаем программу
    call ExitProcess
    
    add rsp, 28h        ; Восстановление стека (не выполнится)
    ret
main endp

end