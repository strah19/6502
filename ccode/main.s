;
; File generated by cc65 v 2.19 - Git 29801a2
;
	.fopt		compiler,"cc65 v 2.19 - Git 29801a2"
	.setcpu		"65SC02"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_rs232_tx
	.export		_main

.segment	"RODATA"

S0001:
	.byte	$48,$65,$6C,$6C,$6F,$20,$57,$6F,$72,$6C,$64,$21,$00

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

L0002:	lda     #<(S0001)
	ldx     #>(S0001)
	jsr     _rs232_tx
	bra     L0002

.endproc
