section .data
msg1 db "Enter String:"
len1 equ $-msg1

msg2 db 10,"Length is:"
len2 equ $-msg2

section .bss
string resb 20
count resb 1

section .text
global _start

_start:

mov rax,1
mov rdi,1
mov rsi,msg1
mov rdx,len1
syscall

mov rax,0
mov rdi,0
mov rsi,string
mov rdx,20
syscall

dec rax
mov [count],al

mov rax,1
mov rdi,1
mov rsi,msg2
mov rdx,len2
syscall

add byte[count],30h

mov rax,1
mov rdi,1
mov rsi,count
mov rdx,1
syscall

mov rax,60
xor rdi,rdi
syscall