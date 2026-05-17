section .data
msg1 db "Enter first number:"
len1 equ $-msg1

msg2 db 10,"Enter second number:"
len2 equ $-msg2

msg3 db 10,"Result:"
len3 equ $-msg3

section .bss
num1 resb 1
num2 resb 1
result resb 1

section .text
global _start

_start:

mov rax,0
mov rdi,0
mov rsi,num1
mov rdx,2
syscall

sub byte[num1],30h

mov rax,0
mov rdi,0
mov rsi,num2
mov rdx,2
syscall

sub byte[num2],30h

mov al,[num1]
mov bl,[num2]

mov cl,bl
mov bl,al

mov al,0

up:
add al,bl
dec cl
jnz up

mov [result],al

add byte[result],30h

mov rax,1
mov rdi,1
mov rsi,result
mov rdx,1
syscall

mov rax,60
xor rdi,rdi
syscall