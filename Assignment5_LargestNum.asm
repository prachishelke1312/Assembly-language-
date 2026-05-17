section .data
array db 11h,59h,33h,22h,44h

msg db "Largest Number:"
len equ $-msg

section .bss
largest resb 1

section .text
global _start

_start:

mov rcx,5
mov rsi,array

mov al,[rsi]
mov [largest],al

inc rsi
dec rcx

up:
cmp al,[rsi]
jg next

mov al,[rsi]
mov [largest],al

next:
inc rsi
loop up

mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,len
syscall

mov rax,60
xor rdi,rdi
syscall