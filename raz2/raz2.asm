option casemap:none        ; Указываем, что регистр символов важен

.code
main proc
    ; Сохраняем два числа в регистры
    mov rcx, 10            ; Первое число в RCX
    mov rdx, 20            ; Второе число в RDX
    
    ; Складываем числа и сохраняем результат в RAX
    mov rax, rcx           ; Копируем первое число в RAX
    add rax, rdx           ; Прибавляем второе число (результат в RAX)
    
    ; Возвращаем результат через RAX
    ret                    ; Выход из программы, возвращая значение в RAX
main endp
end