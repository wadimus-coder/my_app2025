	.file	"app.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2768, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -2752(%rbp)
	movl	$12, -2748(%rbp)
	call	initscr@PLT
	movq	stdscr(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	keypad@PLT
	call	noecho@PLT
	movl	$0, %edi
	call	curs_set@PLT
	movq	stdscr(%rip), %rax
	testq	%rax, %rax
	je	.L2
	movq	stdscr(%rip), %rax
	movzwl	4(%rax), %eax
	cwtl
	addl	$1, %eax
	jmp	.L3
.L2:
	movl	$-1, %eax
.L3:
	movl	%eax, -2728(%rbp)
	movq	stdscr(%rip), %rax
	testq	%rax, %rax
	je	.L4
	movq	stdscr(%rip), %rax
	movzwl	6(%rax), %eax
	cwtl
	addl	$1, %eax
	jmp	.L5
.L4:
	movl	$-1, %eax
.L5:
	movl	%eax, -2724(%rbp)
.L24:
	movl	$0, -2744(%rbp)
	jmp	.L6
.L11:
	movl	$0, -2740(%rbp)
	jmp	.L7
.L10:
	movl	-2740(%rbp), %eax
	movslq	%eax, %rdx
	movl	-2744(%rbp), %eax
	cltq
	imulq	$90, %rax, %rax
	addq	%rbp, %rax
	addq	%rdx, %rax
	subq	$2720, %rax
	movb	$35, (%rax)
	movq	stdscr(%rip), %rax
	movl	-2740(%rbp), %edx
	movl	-2744(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L9
	movq	stdscr(%rip), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	waddch@PLT
.L9:
	addl	$1, -2740(%rbp)
.L7:
	movl	-2740(%rbp), %eax
	cmpl	-2724(%rbp), %eax
	jle	.L10
	addl	$1, -2744(%rbp)
.L6:
	movl	-2744(%rbp), %eax
	cmpl	-2728(%rbp), %eax
	jle	.L11
	movl	$7, -2736(%rbp)
	jmp	.L12
.L17:
	movl	$7, -2732(%rbp)
	jmp	.L13
.L16:
	movl	-2732(%rbp), %eax
	movslq	%eax, %rdx
	movl	-2736(%rbp), %eax
	cltq
	imulq	$90, %rax, %rax
	addq	%rbp, %rax
	addq	%rdx, %rax
	subq	$2720, %rax
	movb	$32, (%rax)
	movq	stdscr(%rip), %rax
	movl	-2732(%rbp), %edx
	movl	-2736(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L15
	movq	stdscr(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	waddch@PLT
.L15:
	addl	$1, -2732(%rbp)
.L13:
	movl	-2724(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -2732(%rbp)
	jle	.L16
	addl	$1, -2736(%rbp)
.L12:
	movl	-2728(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -2736(%rbp)
	jle	.L17
	cmpl	$259, -2756(%rbp)
	jne	.L18
	movl	-2752(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-2748(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rax
	imulq	$90, %rax, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$2720, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L18
	subl	$1, -2752(%rbp)
	jmp	.L19
.L18:
	cmpl	$258, -2756(%rbp)
	jne	.L20
	movl	-2752(%rbp), %eax
	leal	1(%rax), %edx
	movl	-2748(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rax
	imulq	$90, %rax, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$2720, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L20
	addl	$1, -2752(%rbp)
	jmp	.L19
.L20:
	cmpl	$260, -2756(%rbp)
	jne	.L21
	movl	-2748(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movl	-2752(%rbp), %eax
	cltq
	imulq	$90, %rax, %rax
	addq	%rbp, %rax
	addq	%rdx, %rax
	subq	$2720, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L21
	subl	$1, -2748(%rbp)
	jmp	.L19
.L21:
	cmpl	$261, -2756(%rbp)
	jne	.L19
	movl	-2748(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movl	-2752(%rbp), %eax
	cltq
	imulq	$90, %rax, %rax
	addq	%rbp, %rax
	addq	%rdx, %rax
	subq	$2720, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L19
	addl	$1, -2748(%rbp)
.L19:
	movq	stdscr(%rip), %rax
	movl	-2748(%rbp), %edx
	movl	-2752(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L23
	movq	stdscr(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	waddch@PLT
.L23:
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	movl	%eax, -2756(%rbp)
	cmpl	$27, -2756(%rbp)
	jne	.L24
	call	endwin@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
