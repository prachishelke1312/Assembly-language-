; ==========================================
; Assignment 6
; Menu driven arithmetic operations
; ==========================================

section .data
menu db 10,"1.Addition",10
     db "2.Subtraction",10
     db "3.Multiplication",10
     db "4.Division",10
     db "5.Exit",10
     db "Enter choice: "
len equ $-menu

section .bss
choice resb 2

section .text
global _start

_start:

mov rax,1
mov rdi,1
mov rsi,menu
mov rdx,len
syscall

mov rax,0
mov rdi,0
mov rsi,choice
mov rdx,2
syscall

mov rax,60
xor rdi,rdi
syscall