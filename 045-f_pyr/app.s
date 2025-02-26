	.file	"app.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "C:/Sock_FdCatalog/045-f_pyr" "app.c"
	.globl	var1
	.data
	.align 2
var1:
	.word	4386
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "addr var2 : %p\12\0"
.LC1:
	.ascii "addr va1 :%p\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB0:
	.file 1 "app.c"
	.loc 1 6 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 6 1
	call	__main
	.loc 1 7 11
	movw	$17493, -2(%rbp)
.LBB2:
	.loc 1 10 15
	movw	$17493, -4(%rbp)
	.loc 1 11 9
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
.LBE2:
	.loc 1 13 5
	leaq	var1(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 14 5
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 15 12
	movl	$0, %eax
	.loc 1 16 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xfe
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x3
	.ascii "GNU C17 13.2.0 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x4
	.ascii "var1\0"
	.byte	0x1
	.byte	0x3
	.byte	0x7
	.long	0x70
	.uleb128 0x9
	.byte	0x3
	.quad	var1
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x5
	.ascii "printf\0"
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.long	0x97
	.long	0x97
	.uleb128 0x6
	.long	0x9e
	.uleb128 0x7
	.byte	0
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x8
	.byte	0x8
	.long	0xac
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x9
	.long	0xa4
	.uleb128 0xa
	.ascii "main\0"
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.long	0x97
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.ascii "var2\0"
	.byte	0x7
	.byte	0xb
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xb
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2
	.ascii "var2\0"
	.byte	0xa
	.byte	0xf
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "C:\\Sock_FdCatalog\\045-f_pyr\0"
.LASF0:
	.ascii "app.c\0"
	.ident	"GCC: (GNU) 13.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
