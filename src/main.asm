*=$c000

main
		jsr _write_str

.ifdef DEBUG
		jsr _blip
.endif
		rts

_string
		.screen "putaria maluca" ; if jsr $ffd2 then .text

_write_str
		ldx #0
_loop
		lda _string,x
		sta $0400,x	; screen address
		;jsr $ffd2
		inx
		cpx #14
		bne _loop
		rts

.ifdef DEBUG
_blip
		;lda #147  ; CLR char
		;jsr $ffd2 ; CHROUT  (A)
_yey
		inc $d020
		jmp _yey
		rts
.endif
