	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Iteration count: "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Multiplicative persistence (old)        : "
	.section	.rodata.str1.1
.LC4:
	.string	"s\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Multiplicative persistence (new)        : "
	.align 8
.LC6:
	.string	"Additive persistence                    : "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1884:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$17, %edx
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10000000, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	23(%rsp), %rsi
	movl	$1, %edx
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$42, %edx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rbx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	8(%rsp), %xmm0
	divsd	.LC3(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$42, %edx
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rbx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	8(%rsp), %xmm0
	divsd	.LC3(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$42, %edx
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%rbx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movsd	8(%rsp), %xmm0
	divsd	.LC3(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L5
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1884:
	.size	main, .-main
	.text
	.p2align 4
	.globl	_Z8mul_persy
	.type	_Z8mul_persy, @function
_Z8mul_persy:
.LFB1893:
	.cfi_startproc
	movabsq	$-3689348814741910323, %r8
	movq	%rdi, %rax
	mulq	%r8
	movq	%rdx, %rsi
	shrq	$3, %rsi
	leaq	(%rsi,%rsi,4), %rax
	movq	%rdi, %rsi
	addq	%rax, %rax
	subq	%rax, %rsi
	cmpq	%rsi, %rdi
	je	.L11
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%rdi, %rax
	mulq	%r8
	movq	%rdx, %rcx
	shrq	$3, %rcx
	cmpq	$9, %rdi
	jbe	.L8
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rcx, %rax
	movq	%rcx, %rdi
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	subq	%rax, %rdi
	movq	%rcx, %rax
	movq	%rdx, %rcx
	imulq	%rdi, %rsi
	cmpq	$9, %rax
	ja	.L9
.L8:
	movq	%rsi, %rax
	movl	%r9d, %r10d
	addl	$1, %r9d
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	%rsi, %rdx
	addq	%rax, %rax
	subq	%rax, %rdx
	cmpq	%rsi, %rdx
	je	.L12
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	jmp	.L10
.L11:
	xorl	%r10d, %r10d
.L12:
	movl	%r10d, %eax
	ret
	.cfi_endproc
.LFE1893:
	.size	_Z8mul_persy, .-_Z8mul_persy
	.p2align 4
	.globl	_Z12mul_pers_newy
	.type	_Z12mul_pers_newy, @function
_Z12mul_pers_newy:
.LFB1894:
	.cfi_startproc
	movabsq	$-3689348814741910323, %r8
	xorl	%r9d, %r9d
	cmpq	$9, %rdi
	jbe	.L18
	.p2align 4,,10
	.p2align 3
.L14:
	movq	%rdi, %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%rcx, %rax
	movq	%rcx, %rsi
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	subq	%rax, %rsi
	movq	%rcx, %rax
	movq	%rdx, %rcx
	imulq	%rsi, %rdi
	cmpq	$9, %rax
	ja	.L15
	addl	$1, %r9d
	cmpq	$9, %rdi
	ja	.L14
.L18:
	movl	%r9d, %eax
	ret
	.cfi_endproc
.LFE1894:
	.size	_Z12mul_pers_newy, .-_Z12mul_pers_newy
	.p2align 4
	.globl	_Z8add_persy
	.type	_Z8add_persy, @function
_Z8add_persy:
.LFB1895:
	.cfi_startproc
	movabsq	$-3689348814741910323, %r8
	xorl	%r9d, %r9d
	cmpq	$9, %rdi
	jbe	.L26
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rdi, %rcx
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L23:
	movq	%rcx, %rax
	movq	%rcx, %rsi
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	subq	%rax, %rsi
	movq	%rcx, %rax
	movq	%rdx, %rcx
	addq	%rsi, %rdi
	cmpq	$9, %rax
	ja	.L23
	addl	$1, %r9d
	cmpq	$9, %rdi
	ja	.L22
.L26:
	movl	%r9d, %eax
	ret
	.cfi_endproc
.LFE1895:
	.size	_Z8add_persy, .-_Z8add_persy
	.section	.text.startup
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2417:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
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
