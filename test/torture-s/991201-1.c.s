	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/991201-1.c"
	.section	.text.reset_palette,"ax",@progbits
	.hidden	reset_palette
	.globl	reset_palette
	.type	reset_palette,@function
reset_palette:                          # @reset_palette
	.param  	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$push0=, 2
	i32.shl 	$push1=, $0, $pop0
	i32.const	$push2=, vc_cons
	i32.add 	$1=, $pop1, $pop2
	i32.const	$2=, 6
	i32.const	$0=, -64
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label0:
	i32.load	$push4=, 0($1)
	i32.add 	$push5=, $pop4, $2
	i32.const	$push17=, -2
	i32.add 	$push6=, $pop5, $pop17
	i32.load	$push3=, default_red+64($0)
	i32.store8	$discard=, 0($pop6), $pop3
	i32.load	$push8=, 0($1)
	i32.add 	$push9=, $pop8, $2
	i32.const	$push16=, -1
	i32.add 	$push10=, $pop9, $pop16
	i32.load	$push7=, default_grn+64($0)
	i32.store8	$discard=, 0($pop10), $pop7
	i32.load	$push12=, 0($1)
	i32.add 	$push13=, $pop12, $2
	i32.load	$push11=, default_blu+64($0)
	i32.store8	$discard=, 0($pop13), $pop11
	i32.const	$push15=, 3
	i32.add 	$2=, $2, $pop15
	i32.const	$push14=, 4
	i32.add 	$0=, $0, $pop14
	br_if   	0, $0           # 0: up to label0
# BB#2:                                 # %bar.exit
	end_loop                        # label1:
	return
	.endfunc
.Lfunc_end0:
	.size	reset_palette, .Lfunc_end0-reset_palette

	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32
# BB#0:                                 # %entry
	block
	i32.const	$push0=, 48
	i32.ne  	$push1=, $0, $pop0
	br_if   	0, $pop1        # 0: down to label2
# BB#1:                                 # %if.end
	return
.LBB1_2:                                # %if.then
	end_block                       # label2:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	reset_palette@FUNCTION, $pop0
	i32.const	$push1=, 0
	call    	exit@FUNCTION, $pop1
	unreachable
	.endfunc
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.hidden	a_con                   # @a_con
	.type	a_con,@object
	.section	.bss.a_con,"aw",@nobits
	.globl	a_con
	.p2align	2
a_con:
	.skip	52
	.size	a_con, 52

	.hidden	vc_cons                 # @vc_cons
	.type	vc_cons,@object
	.section	.data.vc_cons,"aw",@progbits
	.globl	vc_cons
	.p2align	4
vc_cons:
	.int32	a_con
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.skip	4
	.size	vc_cons, 252

	.hidden	default_red             # @default_red
	.type	default_red,@object
	.section	.bss.default_red,"aw",@nobits
	.globl	default_red
	.p2align	4
default_red:
	.skip	64
	.size	default_red, 64

	.hidden	default_grn             # @default_grn
	.type	default_grn,@object
	.section	.bss.default_grn,"aw",@nobits
	.globl	default_grn
	.p2align	4
default_grn:
	.skip	64
	.size	default_grn, 64

	.hidden	default_blu             # @default_blu
	.type	default_blu,@object
	.section	.bss.default_blu,"aw",@nobits
	.globl	default_blu
	.p2align	4
default_blu:
	.skip	64
	.size	default_blu, 64


	.ident	"clang version 3.9.0 "
