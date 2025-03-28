.code
asm_syscall proc
    db 48h
    push [rcx + 8h]
    mov r10, [rcx + 10h]
    dd 498B48h
    db 44h
    lea rax, callreturn
    push rax
    mov rax, rsp
    lea rsp, [rsp-680h]
    xchg [rsp], rbp
    sub rsp, 8h
    mov [rsp], rax
    lea rsp, [rsp-120h]
    push [rax]
    mov [rax], ebp
    lea rax, [rax+8h]
    movups xmm0, [rax+30h]
    movups [rsp+28h], xmm0
    movups xmm0, [rax+40h]
    movups [rsp+38h], xmm0
    movups xmm0, [rax+50h]
    movups [rsp+48h], xmm0
    movups xmm0, [rax+60h]
    movups [rsp+58h], xmm0
    dd 408748h
    db 44h
    not rcx
    jmp rcx
    int 3h
    int 3h
    dd 0CCCCCCCCh
    dq 0CCCCCCCCCCCCCCCCh
    dq 0CCCCCCCCCCCCCCCCh

callreturn:
    lea rsp, [rsp-1000h]
    lea rsp, [rsp-1000h]
    lea rsp, [rsp+2120h]
    xchg [rsp], rax
    xchg rsp, rax
    mov rbp, [rax+8h]
    dd 408B48h
    add rsp, 10h
    ret
    int 3h
asm_syscall endp

end
