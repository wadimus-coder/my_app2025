	.file	"app.c"
	.text
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "cls\0"
.LC1:
	.ascii "@\0"
.LC2:
	.ascii "#\0"
.LC3:
	.ascii "\12\0"
.LC4:
	.ascii "#\12\0"
.LC5:
	.ascii " \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	movl	$11, -12(%rbp)
	movl	$6, -16(%rbp)
	call	getch
	movb	%al, -17(%rbp)
.L19:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	system
	cmpb	$119, -17(%rbp)
	jne	.L4
	subl	$1, -16(%rbp)
	jmp	.L5
.L4:
	cmpb	$115, -17(%rbp)
	jne	.L6
	addl	$1, -16(%rbp)
	jmp	.L5
.L6:
	cmpb	$97, -17(%rbp)
	jne	.L7
	subl	$1, -12(%rbp)
	jmp	.L5
.L7:
	cmpb	$100, -17(%rbp)
	jne	.L5
	addl	$1, -12(%rbp)
.L5:
	movl	$0, -8(%rbp)
	jmp	.L8
.L18:
	movl	$0, -4(%rbp)
	jmp	.L9
.L17:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L10
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L10
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L11
.L10:
	cmpl	$0, -8(%rbp)
	je	.L12
	cmpl	$10, -8(%rbp)
	jne	.L13
.L12:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	cmpl	$20, -4(%rbp)
	jne	.L11
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L11
.L13:
	cmpl	$0, -4(%rbp)
	jne	.L15
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L11
.L15:
	cmpl	$20, -4(%rbp)
	jne	.L16
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L11
.L16:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L11:
	addl	$1, -4(%rbp)
.L9:
	cmpl	$20, -4(%rbp)
	jle	.L17
	addl	$1, -8(%rbp)
.L8:
	cmpl	$10, -8(%rbp)
	jle	.L18
	call	getch
	movb	%al, -17(%rbp)
	cmpb	$0, -17(%rbp)
	jne	.L19
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	getch;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef
