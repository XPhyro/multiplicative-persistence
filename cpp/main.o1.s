	.file	"main.cpp"
	.text
	.globl	_Z8mul_persy
	.type	_Z8mul_persy, @function
_Z8mul_persy:
.LFB1893:
	.cfi_startproc
	movq	%rdi, %rsi
	movabsq	$-3689348814741910323, %rdi
	movq	%rsi, %rax
	mulq	%rdi
	movq	%rdx, %rdi
	shrq	$3, %rdi
	leaq	(%rdi,%rdi,4), %rax
	addq	%rax, %rax
	movq	%rsi, %rdi
	subq	%rax, %rdi
	movl	$0, %eax
	cmpq	%rdi, %rsi
	je	.L8
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movabsq	$-3689348814741910323, %r8
	cmpq	$9, %rsi
	jbe	.L4
.L3:
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	movq	%rcx, %rsi
	subq	%rax, %rsi
	imulq	%rsi, %rdi
	movq	%rcx, %rax
	movq	%rdx, %rcx
	cmpq	$9, %rax
	ja	.L3
.L4:
	call	_Z8mul_persy
	addl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.L8:
	ret
	.cfi_endproc
.LFE1893:
	.size	_Z8mul_persy, .-_Z8mul_persy
	.globl	_Z12mul_pers_newy
	.type	_Z12mul_pers_newy, @function
_Z12mul_pers_newy:
.LFB1894:
	.cfi_startproc
	movl	$0, %eax
	cmpq	$9, %rdi
	jbe	.L17
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	movabsq	$-3689348814741910323, %r8
.L13:
	movq	%rdi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	movq	%rdi, %rsi
	subq	%rax, %rsi
	imull	%esi, %ecx
	movq	%rdi, %rax
	movq	%rdx, %rdi
	cmpq	$9, %rax
	ja	.L13
	movslq	%ecx, %rdi
	call	_Z12mul_pers_newy
	addl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.L17:
	ret
	.cfi_endproc
.LFE1894:
	.size	_Z12mul_pers_newy, .-_Z12mul_pers_newy
	.globl	_Z8add_persy
	.type	_Z8add_persy, @function
_Z8add_persy:
.LFB1895:
	.cfi_startproc
	movl	$0, %eax
	cmpq	$9, %rdi
	jbe	.L26
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$0, %ecx
	movabsq	$-3689348814741910323, %r8
.L22:
	movq	%rdi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	movq	%rdi, %rsi
	subq	%rax, %rsi
	addl	%esi, %ecx
	movq	%rdi, %rax
	movq	%rdx, %rdi
	cmpq	$9, %rax
	ja	.L22
	movslq	%ecx, %rdi
	call	_Z8add_persy
	addl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.L26:
	ret
	.cfi_endproc
.LFE1895:
	.size	_Z8add_persy, .-_Z8add_persy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Iteration count: "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Multiplicative persistence (old): "
	.section	.rodata.str1.1
.LC4:
	.string	"s\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Additive persistence            : "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1884:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$10000000, %esi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	movb	$10, 7(%rsp)
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	movl	$10000000, %ebx
	movabsq	$277777788888899, %rbp
.L30:
	movq	%rbp, %rdi
	call	_Z8mul_persy
	subl	$1, %ebx
	jne	.L30
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	movq	%xmm0, %rbx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	divsd	.LC3(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC4(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	movl	$10000000, %ebx
	movabsq	$277777788888899, %rbp
.L31:
	movq	%rbp, %rdi
	call	_Z12mul_pers_newy
	subl	$1, %ebx
	jne	.L31
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	movq	%xmm0, %rbx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	divsd	.LC3(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC4(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	movl	$10000000, %ebx
	movabsq	$277777788888899, %rbp
.L32:
	movq	%rbp, %rdi
	call	_Z8add_persy
	subl	$1, %ebx
	jne	.L32
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	movq	%xmm0, %rbx
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%rbx, %xmm0
	divsd	.LC3(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	.LC4(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L38
	movl	$0, %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1884:
	.size	main, .-main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2417:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2417:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.align 8
.LC3:
	.long	0
	.long	1083129856
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
