option casemap:none      ; Учитывать регистр символов

.data
    num1 dq 15          ; Первое число (64-битное)
    num2 dq 4           ; Второе число (64-битное)
    result dq ?         ; Переменная для результата

.code
main proc
    ; Загружаем числа в регистры
    mov rax, num1       ; Первый операнд в RAX
    mov rbx, num2       ; Второй операнд в RBX
    
    ; Выполняем умножение (RAX * RBX)
    imul rax, rbx       ; Результат в RAX
    
    ; Сохраняем результат в переменную
    mov result, rax     ; Сохраняем произведение
    
    ; Возвращаем результат через RAX (опционально)
    ret                 ; Можно проверить через echo %ERRORLEVEL%
main endp
end