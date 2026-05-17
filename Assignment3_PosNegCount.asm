section .data
array db 10,-12,15,-9,8,-2,7

msg1 db "Positive:"
len1 equ $-msg1

msg2 db 10,"Negative:"
len2 equ $-msg2

section .bss
pcount resb 1
ncount resb 1

section .text
global _start

_start:

mov rcx,7
mov rsi,array

mov byte[pcount],0
mov byte[ncount],0

up:
mov al,[rsi]

test al,al
js neg

inc byte[pcount]
jmp next

neg:
inc byte[ncount]

next:
inc rsi
loop up

mov rax,1
mov rdi,1
mov rsi,msg1
mov rdx,len1
syscall

add byte[pcount],30h

mov rax,1
mov rdi,1
mov rsi,pcount
mov rdx,1
syscall

mov rax,1
mov rdi,1
mov rsi,msg2
mov rdx,len2
syscall

add byte[ncount],30h

mov rax,1
mov rdi,1
mov rsi,ncount
mov rdx,1
syscall

mov rax,60
xor rdi,rdi
syscall