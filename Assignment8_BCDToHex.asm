; ==========================================
; Assignment 8
; BCD to HEX conversion
; ==========================================

section .data
msg db "Enter BCD Number: "
len equ $-msg

section .bss
num resb 6

section .text
global _start

_start:

mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,len
syscall

mov rax,0
mov rdi,0
mov rsi,num
mov rdx,6
syscall

mov rax,60
xor rdi,rdi
syscall