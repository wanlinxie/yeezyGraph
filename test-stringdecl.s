	.text
	.file	"test-stringdecl.ll"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushl	%eax
.Ltmp0:
	.cfi_def_cfa_offset 8
	movl	$.Lstr, (%esp)
	xorl	%eax, %eax
	popl	%edx
	retl
.Ltmp1:
	.size	main, .Ltmp1-main
	.cfi_endproc

	.type	.Lfmt,@object           # @fmt
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lfmt:
	.asciz	"%d\n"
	.size	.Lfmt, 4

	.type	.Lfmt1,@object          # @fmt1
.Lfmt1:
	.asciz	"%s\n"
	.size	.Lfmt1, 4

	.type	.Lfmt2,@object          # @fmt2
.Lfmt2:
	.asciz	"%d"
	.size	.Lfmt2, 3

	.type	.Lfmt3,@object          # @fmt3
.Lfmt3:
	.asciz	"%s"
	.size	.Lfmt3, 3

	.type	.Lfmt4,@object          # @fmt4
.Lfmt4:
	.asciz	"%f\n"
	.size	.Lfmt4, 4

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"hello"
	.size	.Lstr, 6


	.section	".note.GNU-stack","",@progbits
