	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr34415.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
                                        # implicit-def: %vreg38
	i32.const	$2=, 1
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	loop                            # label0:
	copy_local	$push25=, $0
	tee_local	$push24=, $5=, $pop25
	copy_local	$0=, $pop24
	block
	i32.load8_s	$push23=, 0($5)
	tee_local	$push22=, $4=, $pop23
	i32.const	$push21=, -32
	i32.add 	$push3=, $pop22, $pop21
	i32.const	$push20=, -97
	i32.add 	$push0=, $4, $pop20
	i32.const	$push19=, 255
	i32.and 	$push1=, $pop0, $pop19
	i32.const	$push18=, 26
	i32.lt_u	$push2=, $pop1, $pop18
	i32.select	$push17=, $pop3, $4, $pop2
	tee_local	$push16=, $3=, $pop17
	i32.const	$push15=, 66
	i32.eq  	$push4=, $pop16, $pop15
	br_if   	0, $pop4        # 0: down to label2
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	copy_local	$0=, $5
	block
	i32.const	$push26=, 65
	i32.ne  	$push5=, $3, $pop26
	br_if   	0, $pop5        # 0: down to label3
.LBB0_3:                                # %do.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop                            # label4:
	i32.const	$push28=, 1
	i32.add 	$0=, $0, $pop28
	i32.load8_u	$push6=, 0($0)
	i32.const	$push27=, 43
	i32.eq  	$push7=, $pop6, $pop27
	br_if   	0, $pop7        # 0: up to label4
	br      	3               # 3: down to label2
.LBB0_4:                                # %for.end
	end_loop                        # label5:
	end_block                       # label3:
	block
	i32.const	$push8=, 3
	i32.lt_s	$push9=, $2, $pop8
	br_if   	0, $pop9        # 0: down to label6
# BB#5:                                 # %land.lhs.true17
	i32.const	$push10=, 255
	i32.and 	$push11=, $4, $pop10
	i32.const	$push12=, 58
	i32.eq  	$push13=, $pop11, $pop12
	i32.select	$push14=, $1, $5, $pop13
	return  	$pop14
.LBB0_6:                                # %if.end22
	end_block                       # label6:
	return  	$5
.LBB0_7:                                # %cleanup.thread
                                        #   in Loop: Header=BB0_1 Depth=1
	end_block                       # label2:
	i32.const	$push30=, 1
	i32.add 	$0=, $0, $pop30
	i32.const	$push29=, 1
	i32.add 	$2=, $2, $pop29
	copy_local	$1=, $5
	br      	0               # 0: up to label0
.LBB0_8:
	end_loop                        # label1:
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, .L.str
	i32.call	$push1=, foo@FUNCTION, $pop0
	i32.const	$push2=, .L.str+2
	i32.ne  	$push3=, $pop1, $pop2
	return  	$pop3
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bbb:"
	.size	.L.str, 5


	.ident	"clang version 3.9.0 "
