option casemap:none

includelib kernel32.lib

extrn CreateFileA: proc
extrn CloseHandle: proc
extrn ExitProcess: proc

; Константы Windows API
GENERIC_READ      equ 80000000h
GENERIC_WRITE     equ 40000000h
FILE_SHARE_READ   equ 1
CREATE_ALWAYS     equ 2
FILE_ATTRIBUTE_NORMAL equ 80h
INVALID_HANDLE_VALUE equ -1

.data
filename db "example.txt", 0

.code
main proc
    sub rsp, 28h        ; Shadow space + alignment
    
    ; Вызов CreateFileA с непосредственными значениями
    mov rcx, offset filename             ; lpFileName
    mov edx, GENERIC_READ or GENERIC_WRITE ; dwDesiredAccess
    mov r8d, FILE_SHARE_READ             ; dwShareMode
    xor r9, r9                          ; lpSecurityAttributes = NULL
    mov qword ptr [rsp+20h], CREATE_ALWAYS ; dwCreationDisposition
    mov qword ptr [rsp+28h], FILE_ATTRIBUTE_NORMAL ; dwFlagsAndAttributes
    mov qword ptr [rsp+30h], 0           ; hTemplateFile = NULL
    call CreateFileA
    
    cmp rax, INVALID_HANDLE_VALUE
    je error_exit
    
    ; Сохраняем handle
    mov rbx, rax
    
    ; Закрываем handle
    mov rcx, rbx
    call CloseHandle
    
    ; Успешное завершение
    xor ecx, ecx
    call ExitProcess
    
error_exit:
    mov ecx, 1
    call ExitProcess
    
    add rsp, 28h
    ret
main endp
end