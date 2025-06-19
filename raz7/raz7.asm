option casemap:none

.code
; Функция AddAsm (x64 calling convention)
; Параметры: RCX (a), RDX (b)
; Возвращает: RAX (результат)
AddAsm proc
    mov eax, ecx    ; Для 32-битных int используем ECX/EDX
    add eax, edx
    ret
AddAsm endp
end