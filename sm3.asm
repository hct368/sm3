; mark_description "Intel(R) C++ Compiler XE for applications running on IA-32, Version 15.0.0.108 Build 20140726";
; mark_description "-DINTRIN -Wall -O2 -Os -GS- -Fa -c";
	.686P
 	.387
	OPTION DOTNAME
	ASSUME	CS:FLAT,DS:FLAT,SS:FLAT
;ident "-defaultlib:libcpmt"
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Update
TXTST0:
; -- Begin  _SM3_Update
;_SM3_Update	ENDS
_TEXT	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Update
; mark_begin;
IF @Version GE 800
  .MMX
ELSEIF @Version GE 612
  .MMX
  MMWORD TEXTEQU <QWORD>
ENDIF
IF @Version GE 800
  .XMM
ELSEIF @Version GE 614
  .XMM
  XMMWORD TEXTEQU <OWORD>
ENDIF

	PUBLIC _SM3_Update
_SM3_Update	PROC NEAR 
; parameter 1: 28 + esp
; parameter 2: 32 + esp
; parameter 3: 36 + esp
.B1.1:                          ; Preds .B1.0
        push      esi                                           ;142.56
        push      edi                                           ;142.56
        push      ebx                                           ;142.56
        push      ebp                                           ;142.56
        push      esi                                           ;142.56
        push      esi                                           ;142.56
        mov       ebp, DWORD PTR [36+esp]                       ;142.6
        test      ebp, ebp                                      ;146.14
        mov       edx, DWORD PTR [32+esp]                       ;142.6
        je        .B1.11        ; Prob 28%                      ;146.14
                                ; LOE edx ebp
.B1.3:                          ; Preds .B1.1
        mov       ecx, DWORD PTR [28+esp]                       ;142.6
        movd      xmm1, ebp                                     ;152.17
        pxor      xmm3, xmm3                                    ;152.17
        movss     xmm3, xmm1                                    ;152.17
        movq      xmm2, QWORD PTR [ecx]                         ;149.11
        movq      xmm0, QWORD PTR [_2il0floatpacket.4]          ;149.5
        paddq     xmm3, xmm2                                    ;152.5
        pand      xmm0, xmm2                                    ;149.22
        movd      eax, xmm0                                     ;149.22
        movq      QWORD PTR [ecx], xmm3                         ;152.5
        jmp       .B1.4         ; Prob 100%                     ;152.5
                                ; LOE eax edx ebp
.B1.9:                          ; Preds .B1.8
        xor       eax, eax                                      ;161.7
                                ; LOE eax edx ebp
.B1.4:                          ; Preds .B1.3 .B1.9
        mov       ebx, eax                                      ;155.11
        mov       esi, edx                                      ;156.7
        neg       ebx                                           ;155.11
        add       ebx, 64                                       ;155.11
        cmp       ebx, ebp                                      ;155.7
        mov       edi, DWORD PTR [28+esp]                       ;156.7
        cmovae    ebx, ebp                                      ;155.7
        mov       ecx, ebx                                      ;156.7
        lea       edi, DWORD PTR [40+edi+eax]                   ;156.7
        rep                                                     ;156.7
        movsb                                                   ;156.7
                                ; LOE eax edx ebx ebp
.B1.5:                          ; Preds .B1.4
        add       eax, ebx                                      ;157.18
        cmp       eax, 64                                       ;157.23
        jb        .B1.11        ; Prob 20%                      ;157.23
                                ; LOE edx ebx ebp
.B1.7:                          ; Preds .B1.5
        mov       eax, DWORD PTR [28+esp]                       ;159.7
        mov       DWORD PTR [4+esp], edx                        ;159.7
        call      _SM3_Transform.                               ;159.7
                                ; LOE ebx ebp
.B1.8:                          ; Preds .B1.7
        mov       edx, DWORD PTR [4+esp]                        ;
        add       edx, ebx                                      ;162.7
        sub       ebp, ebx                                      ;160.7
        jne       .B1.9         ; Prob 82%                      ;154.12
                                ; LOE edx ebp
.B1.11:                         ; Preds .B1.1 .B1.8 .B1.5
        pop       ecx                                           ;164.1
        pop       ecx                                           ;164.1
        pop       ebp                                           ;164.1
        pop       ebx                                           ;164.1
        pop       edi                                           ;164.1
        pop       esi                                           ;164.1
        ret                                                     ;164.1
                                ; LOE
; mark_end;
_SM3_Update ENDP
;_SM3_Update	ENDS
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _SM3_Update
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Transform
TXTST1:
; -- Begin  _SM3_Transform
;_SM3_Transform	ENDS
_TEXT	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Transform
; mark_begin;

	PUBLIC _SM3_Transform
_SM3_Transform	PROC NEAR 
; parameter 1: eax
.B2.1:                          ; Preds .B2.0
        mov       eax, DWORD PTR [4+esp]                        ;45.1
	PUBLIC _SM3_Transform.
_SM3_Transform.::
        push      ebx                                           ;45.1
        mov       ebx, esp                                      ;45.1
        and       esp, -16                                      ;45.1
        push      ebp                                           ;45.1
        push      ebp                                           ;45.1
        mov       ebp, DWORD PTR [4+ebx]                        ;45.1
        mov       DWORD PTR [4+esp], ebp                        ;45.1
        mov       ebp, esp                                      ;45.1
        push      esi                                           ;45.1
        push      edi                                           ;45.1
        sub       esp, 368                                      ;45.1
        lea       esi, DWORD PTR [8+eax]                        ;59.5
        push      32                                            ;59.5
        pop       ecx                                           ;59.5
        lea       edi, DWORD PTR [-40+ebp]                      ;59.5
        mov       DWORD PTR [-364+ebp], eax                     ;45.1
        rep                                                     ;59.5
        movsb                                                   ;59.5
                                ; LOE
.B2.2:                          ; Preds .B2.1
        xor       eax, eax                                      ;62.5
                                ; LOE eax
.B2.3:                          ; Preds .B2.3 .B2.2
        mov       edx, DWORD PTR [-364+ebp]                     ;63.14
        movdqu    xmm0, XMMWORD PTR [40+edx+eax*4]              ;63.14
        movdqa    xmm2, xmm0                                    ;63.14
        psrldq    xmm2, 4                                       ;63.14
        movd      esi, xmm2                                     ;63.14
        psrldq    xmm2, 4                                       ;63.14
        movd      edi, xmm2                                     ;63.14
        psrldq    xmm2, 4                                       ;63.14
        movd      ecx, xmm0                                     ;63.14
        movd      edx, xmm2                                     ;63.14
        bswap     ecx                                           ;63.14
        bswap     esi                                           ;63.14
        bswap     edi                                           ;63.14
        bswap     edx                                           ;63.14
        movd      xmm5, ecx                                     ;63.14
        movd      xmm1, esi                                     ;63.14
        movd      xmm4, edi                                     ;63.14
        movd      xmm3, edx                                     ;63.14
        punpcklqdq xmm5, xmm1                                   ;63.14
        punpcklqdq xmm4, xmm3                                   ;63.14
        shufps    xmm5, xmm4, 136                               ;63.14
        movaps    XMMWORD PTR [-312+ebp+eax*4], xmm5            ;63.7
        add       eax, 4                                        ;62.5
        cmp       eax, 16                                       ;62.5
        jb        .B2.3         ; Prob 93%                      ;62.5
                                ; LOE eax
.B2.4:                          ; Preds .B2.3
        push      16                                            ;67.10
        pop       edi                                           ;67.10
                                ; LOE edi
.B2.5:                          ; Preds .B2.5 .B2.4
        mov       esi, DWORD PTR [-324+ebp+edi*4]               ;68.11
        rol       esi, 15                                       ;68.11
        xor       esi, DWORD PTR [-376+ebp+edi*4]               ;71.7
        xor       esi, DWORD PTR [-348+ebp+edi*4]               ;72.7
        mov       eax, esi                                      ;75.15
        mov       edx, esi                                      ;75.15
        rol       eax, 15                                       ;75.15
        mov       ecx, DWORD PTR [-364+ebp+edi*4]               ;69.11
        xor       esi, eax                                      ;75.15
        rol       ecx, 7                                        ;69.11
        rol       edx, 23                                       ;75.15
        xor       ecx, DWORD PTR [-336+ebp+edi*4]               ;73.7
        xor       esi, edx                                      ;75.15
        xor       esi, ecx                                      ;75.23
        mov       DWORD PTR [-312+ebp+edi*4], esi               ;75.7
        inc       edi                                           ;67.22
        cmp       edi, 68                                       ;67.18
        jb        .B2.5         ; Prob 98%                      ;67.18
                                ; LOE edi
.B2.6:                          ; Preds .B2.5
        mov       eax, DWORD PTR [-12+ebp]                      ;87.13
        mov       ecx, DWORD PTR [-36+ebp]                      ;90.16
        mov       edx, DWORD PTR [-40+ebp]                      ;82.13
        mov       DWORD PTR [-324+ebp], eax                     ;87.13
        mov       DWORD PTR [-340+ebp], ecx                     ;90.16
        mov       edi, DWORD PTR [-32+ebp]                      ;90.16
        mov       eax, DWORD PTR [-16+ebp]                      ;91.16
        mov       ecx, DWORD PTR [-20+ebp]                      ;91.16
        mov       DWORD PTR [-336+ebp], edx                     ;82.13
        mov       esi, DWORD PTR [-24+ebp]                      ;83.13
        mov       edx, DWORD PTR [-28+ebp]                      ;86.13
        mov       DWORD PTR [-328+ebp], edi                     ;90.16
        mov       DWORD PTR [-332+ebp], eax                     ;91.16
        mov       DWORD PTR [-344+ebp], ecx                     ;91.16
        xor       ecx, ecx                                      ;79.5
                                ; LOE edx ecx esi
.B2.7:                          ; Preds .B2.10 .B2.6
        mov       eax, DWORD PTR [-336+ebp]                     ;82.13
        mov       edi, 2043430169                               ;83.13
        cmp       ecx, 16                                       ;83.13
        mov       DWORD PTR [-368+ebp], edx                     ;
        mov       edx, 2055708042                               ;83.13
        cmovb     edx, edi                                      ;83.13
        rol       eax, 12                                       ;82.13
        mov       DWORD PTR [-372+ebp], esi                     ;
        rol       edx, cl                                       ;83.13
        mov       DWORD PTR [-348+ebp], ecx                     ;
        add       esi, eax                                      ;83.13
        add       esi, edx                                      ;83.13
        rol       esi, 7                                        ;83.13
        mov       DWORD PTR [-356+ebp], esi                     ;83.13
        mov       esi, DWORD PTR [-312+ebp+ecx*4]               ;86.24
        mov       ecx, DWORD PTR [-296+ebp+ecx*4]               ;86.31
        xor       ecx, esi                                      ;86.31
        mov       edx, DWORD PTR [-368+ebp]                     ;86.17
        xor       eax, DWORD PTR [-356+ebp]                     ;84.7
        add       edx, ecx                                      ;86.17
        add       edx, eax                                      ;86.31
        mov       eax, DWORD PTR [-324+ebp]                     ;87.17
        add       eax, esi                                      ;87.17
        add       eax, DWORD PTR [-356+ebp]                     ;87.23
        mov       ecx, DWORD PTR [-348+ebp]                     ;89.15
        cmp       ecx, 16                                       ;89.15
        mov       esi, DWORD PTR [-372+ebp]                     ;89.15
        mov       DWORD PTR [-324+ebp], eax                     ;87.23
        jae       .B2.9         ; Prob 50%                      ;89.15
                                ; LOE rcx rsi edx ecx esi cl ch sil
.B2.8:                          ; Preds .B2.7
        mov       eax, DWORD PTR [-340+ebp]                     ;90.16
        xor       eax, DWORD PTR [-336+ebp]                     ;90.16
        xor       eax, DWORD PTR [-328+ebp]                     ;90.16
        add       eax, edx                                      ;90.9
        mov       edx, esi                                      ;91.16
        xor       edx, DWORD PTR [-344+ebp]                     ;91.16
        xor       edx, DWORD PTR [-332+ebp]                     ;91.16
        add       edx, DWORD PTR [-324+ebp]                     ;91.9
        mov       DWORD PTR [-352+ebp], eax                     ;90.9
        mov       DWORD PTR [-360+ebp], edx                     ;91.9
        jmp       .B2.10        ; Prob 100%                     ;91.9
                                ; LOE rcx rsi ecx esi cl ch sil
.B2.9:                          ; Preds .B2.7
        mov       edi, DWORD PTR [-340+ebp]                     ;93.16
        mov       DWORD PTR [-348+ebp], ecx                     ;
        mov       ecx, edi                                      ;93.16
        mov       eax, DWORD PTR [-328+ebp]                     ;93.16
        or        ecx, eax                                      ;93.16
        and       ecx, DWORD PTR [-336+ebp]                     ;93.16
        and       edi, eax                                      ;93.16
        or        ecx, edi                                      ;93.16
        mov       eax, DWORD PTR [-344+ebp]                     ;94.16
        add       ecx, edx                                      ;93.9
        mov       edx, DWORD PTR [-332+ebp]                     ;94.16
        xor       eax, edx                                      ;94.16
        and       eax, esi                                      ;94.16
        xor       eax, edx                                      ;94.16
        add       eax, DWORD PTR [-324+ebp]                     ;94.9
        mov       DWORD PTR [-352+ebp], ecx                     ;93.9
        mov       DWORD PTR [-360+ebp], eax                     ;94.9
        mov       ecx, DWORD PTR [-348+ebp]                     ;94.9
                                ; LOE rcx rsi ecx esi cl ch sil
.B2.10:                         ; Preds .B2.8 .B2.9
        mov       eax, DWORD PTR [-340+ebp]                     ;97.11
        inc       ecx                                           ;79.5
        mov       edx, DWORD PTR [-328+ebp]                     ;96.7
        rol       eax, 9                                        ;97.11
        mov       edi, DWORD PTR [-336+ebp]                     ;98.7
        mov       DWORD PTR [-328+ebp], eax                     ;97.11
        mov       eax, DWORD PTR [-352+ebp]                     ;99.7
        mov       DWORD PTR [-340+ebp], edi                     ;98.7
        mov       DWORD PTR [-336+ebp], eax                     ;99.7
        mov       edi, DWORD PTR [-332+ebp]                     ;100.7
        mov       eax, DWORD PTR [-344+ebp]                     ;101.11
        rol       eax, 19                                       ;101.11
        mov       DWORD PTR [-332+ebp], eax                     ;101.11
        mov       eax, DWORD PTR [-360+ebp]                     ;103.11
        mov       DWORD PTR [-324+ebp], edi                     ;100.7
        mov       DWORD PTR [-376+ebp], edi                     ;100.7
        mov       edi, eax                                      ;103.11
        mov       DWORD PTR [-344+ebp], esi                     ;102.7
        mov       esi, eax                                      ;103.11
        rol       edi, 9                                        ;103.11
        rol       esi, 17                                       ;103.11
        xor       eax, edi                                      ;103.11
        xor       esi, eax                                      ;103.11
        cmp       ecx, 64                                       ;79.5
        jb        .B2.7         ; Prob 98%                      ;79.5
                                ; LOE rdx edx ecx esi dl dh
.B2.11:                         ; Preds .B2.10
        mov       eax, DWORD PTR [-376+ebp]                     ;100.7
        mov       ecx, DWORD PTR [-328+ebp]                     ;97.7
        mov       DWORD PTR [-12+ebp], eax                      ;100.7
        mov       DWORD PTR [-28+ebp], edx                      ;96.7
        mov       DWORD PTR [-32+ebp], ecx                      ;97.7
        mov       edi, DWORD PTR [-340+ebp]                     ;98.7
        mov       eax, DWORD PTR [-352+ebp]                     ;99.7
        mov       edx, DWORD PTR [-332+ebp]                     ;101.7
        mov       ecx, DWORD PTR [-344+ebp]                     ;102.7
        mov       DWORD PTR [-36+ebp], edi                      ;98.7
        mov       DWORD PTR [-40+ebp], eax                      ;99.7
        mov       DWORD PTR [-16+ebp], edx                      ;101.7
        xor       edx, edx                                      ;107.5
        mov       DWORD PTR [-20+ebp], ecx                      ;102.7
        mov       DWORD PTR [-24+ebp], esi                      ;103.7
                                ; LOE edx
.B2.12:                         ; Preds .B2.12 .B2.11
        mov       eax, DWORD PTR [-364+ebp]                     ;108.7
        movdqu    xmm0, XMMWORD PTR [8+eax+edx*4]               ;108.7
        pxor      xmm0, XMMWORD PTR [-40+ebp+edx*4]             ;108.7
        movdqu    XMMWORD PTR [8+eax+edx*4], xmm0               ;108.7
        add       edx, 4                                        ;107.5
        cmp       edx, 8                                        ;107.5
        jb        .B2.12        ; Prob 87%                      ;107.5
                                ; LOE edx
.B2.13:                         ; Preds .B2.12
        lea       esp, DWORD PTR [-8+ebp]                       ;118.1
        pop       edi                                           ;118.1
        pop       esi                                           ;118.1
        pop       ebp                                           ;118.1
        mov       esp, ebx                                      ;118.1
        pop       ebx                                           ;118.1
        ret                                                     ;118.1
                                ; LOE
; mark_end;
_SM3_Transform ENDP
;_SM3_Transform	ENDS
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _SM3_Transform
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Final
TXTST2:
; -- Begin  _SM3_Final
;_SM3_Final	ENDS
_TEXT	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Final
; mark_begin;

	PUBLIC _SM3_Final
_SM3_Final	PROC NEAR 
; parameter 1: 16 + esp
; parameter 2: 20 + esp
.B3.1:                          ; Preds .B3.0
        push      edi                                           ;172.1
        push      ebx                                           ;172.1
        push      esi                                           ;172.1
        xor       eax, eax                                      ;178.5
        mov       ebx, DWORD PTR [20+esp]                       ;171.6
        mov       edx, DWORD PTR [ebx]                          ;176.18
        and       edx, 63                                       ;176.29
        mov       ecx, edx                                      ;178.5
        neg       ecx                                           ;178.5
        add       ecx, 64                                       ;178.5
        lea       edi, DWORD PTR [40+ebx+edx]                   ;178.5
        rep   stosb                                             ;178.5
                                ; LOE edx ebx ebp esi
.B3.2:                          ; Preds .B3.1
        mov       BYTE PTR [40+edx+ebx], 128                    ;180.5
        cmp       edx, 56                                       ;182.16
        jb        .B3.5         ; Prob 78%                      ;182.16
                                ; LOE ebx ebp esi
.B3.3:                          ; Preds .B3.2
        mov       eax, ebx                                      ;183.7
        call      _SM3_Transform.                               ;183.7
                                ; LOE ebx ebp esi
.B3.4:                          ; Preds .B3.3
        xor       eax, eax                                      ;185.7
        lea       edi, DWORD PTR [40+ebx]                       ;185.7
        push      64                                            ;185.7
        pop       ecx                                           ;185.7
        rep   stosb                                             ;185.7
                                ; LOE ebx ebp esi
.B3.5:                          ; Preds .B3.4 .B3.2
        mov       edi, DWORD PTR [ebx]                          ;188.21
        mov       ecx, edi                                      ;188.21
        mov       edx, DWORD PTR [4+ebx]                        ;188.21
        mov       eax, ebx                                      ;190.5
        shr       ecx, 29                                       ;188.21
        shl       edx, 3                                        ;188.21
        shl       edi, 3                                        ;188.21
        or        ecx, edx                                      ;188.21
        bswap     edi                                           ;188.21
        bswap     ecx                                           ;188.21
        mov       DWORD PTR [96+ebx], ecx                       ;188.5
        mov       DWORD PTR [100+ebx], edi                      ;188.5
        call      _SM3_Transform.                               ;190.5
                                ; LOE ebx ebp esi
.B3.6:                          ; Preds .B3.5
        mov       edi, DWORD PTR [16+esp]                       ;171.6
        xor       ecx, ecx                                      ;193.10
                                ; LOE ecx ebx ebp esi edi
.B3.7:                          ; Preds .B3.7 .B3.6
        mov       edx, DWORD PTR [8+ebx+ecx*4]                  ;194.29
        bswap     edx                                           ;194.29
        mov       DWORD PTR [edi+ecx*4], edx                    ;194.19
        inc       ecx                                           ;193.29
        cmp       ecx, 8                                        ;193.17
        jl        .B3.7         ; Prob 87%                      ;193.17
                                ; LOE ecx ebx ebp esi edi
.B3.8:                          ; Preds .B3.7
        pop       ecx                                           ;196.1
        pop       ebx                                           ;196.1
        pop       edi                                           ;196.1
        ret                                                     ;196.1
                                ; LOE
; mark_end;
_SM3_Final ENDP
;_SM3_Final	ENDS
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _SM3_Final
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Init
TXTST3:
; -- Begin  _SM3_Init
;_SM3_Init	ENDS
_TEXT	ENDS
_TEXT	SEGMENT  DWORD PUBLIC FLAT  'CODE'
;	COMDAT _SM3_Init
; mark_begin;

	PUBLIC _SM3_Init
_SM3_Init	PROC NEAR 
; parameter 1: 4 + esp
.B4.1:                          ; Preds .B4.0
        xor       eax, eax                                      ;126.5
        mov       edx, DWORD PTR [4+esp]                        ;125.6
                                ; LOE eax edx ebx ebp esi edi
.B4.2:                          ; Preds .B4.2 .B4.1
        movdqa    xmm0, XMMWORD PTR [_2__cnst_pck.5+eax*4]      ;126.19
        movdqu    XMMWORD PTR [8+edx+eax*4], xmm0               ;126.5
        add       eax, 4                                        ;126.5
        cmp       eax, 8                                        ;126.5
        jb        .B4.2         ; Prob 50%                      ;126.5
                                ; LOE eax edx ebx ebp esi edi
.B4.3:                          ; Preds .B4.2
        pxor      xmm0, xmm0                                    ;134.5
        movq      QWORD PTR [edx], xmm0                         ;134.5
                                ; LOE
.B4.6:                          ; Preds .B4.3
        ret                                                     ;135.1
                                ; LOE
; mark_end;
_SM3_Init ENDP
;_SM3_Init	ENDS
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _SM3_Init
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
_2__cnst_pck.5	DD	1937774191
	DD	1226093241
	DD	388252375
	DD	3666478592
	DD	2842636476
	DD	372324522
	DD	3817729613
	DD	2969243214
_2il0floatpacket.4	DD	00000003fH,000000000H
_RDATA	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMT>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	INCLUDELIB <libdecimal>
	END
