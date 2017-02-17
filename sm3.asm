; mark_description "Intel(R) C++ Compiler XE for applications running on IA-32, Version 15.0.0.108 Build 20140726";
; mark_description "-O2 -Os -GS- -c -Fa";
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
        push      esi                                           ;134.56
        push      edi                                           ;134.56
        push      ebx                                           ;134.56
        push      ebp                                           ;134.56
        push      esi                                           ;134.56
        push      esi                                           ;134.56
        mov       ebp, DWORD PTR [36+esp]                       ;134.6
        pxor      xmm3, xmm3                                    ;142.17
        mov       ecx, DWORD PTR [28+esp]                       ;134.6
        test      ebp, ebp                                      ;144.12
        movq      xmm0, QWORD PTR [_2il0floatpacket.4]          ;139.5
        movd      xmm1, ebp                                     ;142.17
        movq      xmm2, QWORD PTR [ecx]                         ;139.11
        movss     xmm3, xmm1                                    ;142.17
        paddq     xmm3, xmm2                                    ;142.5
        pand      xmm0, xmm2                                    ;139.22
        mov       edx, DWORD PTR [32+esp]                       ;134.6
        movd      eax, xmm0                                     ;139.22
        movq      QWORD PTR [ecx], xmm3                         ;142.5
        jne       .B1.3         ; Prob 90%                      ;144.12
        jmp       .B1.10        ; Prob 100%                     ;144.12
                                ; LOE eax edx ebp
.B1.8:                          ; Preds .B1.7
        xor       eax, eax                                      ;151.7
                                ; LOE eax edx ebp
.B1.3:                          ; Preds .B1.1 .B1.8
        mov       ebx, eax                                      ;145.11
        mov       esi, edx                                      ;146.7
        neg       ebx                                           ;145.11
        add       ebx, 64                                       ;145.11
        cmp       ebx, ebp                                      ;145.7
        mov       edi, DWORD PTR [28+esp]                       ;146.7
        cmovae    ebx, ebp                                      ;145.7
        mov       ecx, ebx                                      ;146.7
        lea       edi, DWORD PTR [40+edi+eax]                   ;146.7
        rep                                                     ;146.7
        movsb                                                   ;146.7
                                ; LOE eax edx ebx ebp
.B1.4:                          ; Preds .B1.3
        add       eax, ebx                                      ;147.18
        cmp       eax, 64                                       ;147.23
        jb        .B1.10        ; Prob 20%                      ;147.23
                                ; LOE edx ebx ebp
.B1.6:                          ; Preds .B1.4
        mov       eax, DWORD PTR [28+esp]                       ;149.7
        mov       DWORD PTR [4+esp], edx                        ;149.7
        call      _SM3_Transform.                               ;149.7
                                ; LOE ebx ebp
.B1.7:                          ; Preds .B1.6
        mov       edx, DWORD PTR [4+esp]                        ;
        add       edx, ebx                                      ;152.7
        sub       ebp, ebx                                      ;150.7
        jne       .B1.8         ; Prob 82%                      ;144.12
                                ; LOE edx ebp
.B1.10:                         ; Preds .B1.7 .B1.4 .B1.1
        pop       ecx                                           ;154.1
        pop       ecx                                           ;154.1
        pop       ebp                                           ;154.1
        pop       ebx                                           ;154.1
        pop       edi                                           ;154.1
        pop       esi                                           ;154.1
        ret                                                     ;154.1
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
        push      ebp                                           ;45.1
        mov       ebp, esp                                      ;45.1
        and       esp, -16                                      ;45.1
        push      esi                                           ;45.1
        push      edi                                           ;45.1
        push      ebx                                           ;45.1
        sub       esp, 340                                      ;45.1
        xor       ecx, ecx                                      ;59.10
        mov       DWORD PTR [328+esp], eax                      ;45.1
                                ; LOE ecx
.B2.2:                          ; Preds .B2.2 .B2.1
        mov       eax, DWORD PTR [328+esp]                      ;60.14
        mov       edx, DWORD PTR [40+eax+ecx*4]                 ;60.14
        bswap     edx                                           ;60.14
        mov       DWORD PTR [32+esp+ecx*4], edx                 ;60.7
        inc       ecx                                           ;59.21
        cmp       ecx, 16                                       ;59.17
        jb        .B2.2         ; Prob 93%                      ;59.17
                                ; LOE ecx
.B2.3:                          ; Preds .B2.2
        push      16                                            ;64.10
        pop       esi                                           ;64.10
                                ; LOE esi
.B2.4:                          ; Preds .B2.4 .B2.3
        mov       edx, DWORD PTR [-32+esp+esi*4]                ;65.14
        mov       eax, DWORD PTR [20+esp+esi*4]                 ;65.14
        xor       edx, DWORD PTR [-4+esp+esi*4]                 ;65.14
        rol       eax, 15                                       ;65.14
        xor       edx, eax                                      ;65.14
        mov       ebx, edx                                      ;65.14
        rol       ebx, 15                                       ;65.14
        xor       ebx, edx                                      ;65.14
        rol       edx, 23                                       ;65.14
        mov       ecx, DWORD PTR [-20+esp+esi*4]                ;68.11
        xor       ebx, edx                                      ;65.14
        rol       ecx, 7                                        ;68.11
        xor       ebx, ecx                                      ;68.11
        xor       ebx, DWORD PTR [8+esp+esi*4]                  ;69.18
        mov       DWORD PTR [32+esp+esi*4], ebx                 ;65.7
        inc       esi                                           ;64.22
        cmp       esi, 68                                       ;64.18
        jb        .B2.4         ; Prob 98%                      ;64.18
                                ; LOE esi
.B2.5:                          ; Preds .B2.4
        mov       eax, DWORD PTR [328+esp]                      ;73.5
        lea       edi, DWORD PTR [esp]                          ;73.5
        push      32                                            ;73.5
        pop       ecx                                           ;73.5
        lea       esi, DWORD PTR [8+eax]                        ;73.5
        rep                                                     ;73.5
        movsb                                                   ;73.5
                                ; LOE
.B2.6:                          ; Preds .B2.5
        mov       ebx, DWORD PTR [esp]                          ;78.13
        mov       esi, DWORD PTR [16+esp]                       ;79.13
        mov       eax, DWORD PTR [4+esp]                        ;84.16
        mov       edx, DWORD PTR [8+esp]                        ;84.16
        mov       ecx, DWORD PTR [20+esp]                       ;85.16
        mov       edi, DWORD PTR [24+esp]                       ;85.16
        mov       DWORD PTR [316+esp], ebx                      ;78.13
        mov       DWORD PTR [304+esp], esi                      ;79.13
        mov       esi, DWORD PTR [12+esp]                       ;81.13
        mov       ebx, DWORD PTR [28+esp]                       ;82.13
        mov       DWORD PTR [312+esp], eax                      ;84.16
        mov       DWORD PTR [324+esp], edx                      ;84.16
        mov       DWORD PTR [308+esp], ecx                      ;85.16
        xor       ecx, ecx                                      ;76.5
        mov       DWORD PTR [320+esp], edi                      ;85.16
                                ; LOE ecx ebx esi
.B2.7:                          ; Preds .B2.10 .B2.6
        mov       edx, 2055708042                               ;77.17
        mov       eax, 2043430169                               ;77.17
        cmp       ecx, 16                                       ;77.17
        cmovb     edx, eax                                      ;77.17
        mov       eax, DWORD PTR [316+esp]                      ;78.13
        rol       eax, 12                                       ;78.13
        mov       edi, DWORD PTR [304+esp]                      ;79.13
        rol       edx, cl                                       ;79.13
        mov       DWORD PTR [332+esp], ecx                      ;
        add       edi, eax                                      ;79.13
        add       edi, edx                                      ;79.13
        mov       edx, edi                                      ;79.13
        shl       edx, 7                                        ;79.13
        shr       edi, 25                                       ;79.13
        or        edx, edi                                      ;79.13
        mov       edi, DWORD PTR [32+esp+ecx*4]                 ;81.24
        xor       eax, edx                                      ;80.7
        mov       ecx, DWORD PTR [48+esp+ecx*4]                 ;81.31
        add       ebx, edi                                      ;82.17
        xor       ecx, edi                                      ;81.31
        add       ebx, edx                                      ;82.23
        add       esi, ecx                                      ;81.17
        mov       ecx, DWORD PTR [332+esp]                      ;83.15
        add       esi, eax                                      ;81.31
        cmp       ecx, 16                                       ;83.15
        jae       .B2.9         ; Prob 50%                      ;83.15
                                ; LOE rcx ecx ebx esi cl ch
.B2.8:                          ; Preds .B2.7
        mov       edx, DWORD PTR [312+esp]                      ;84.16
        mov       eax, DWORD PTR [304+esp]                      ;85.16
        xor       edx, DWORD PTR [316+esp]                      ;84.16
        xor       eax, DWORD PTR [308+esp]                      ;85.16
        xor       edx, DWORD PTR [324+esp]                      ;84.16
        xor       eax, DWORD PTR [320+esp]                      ;85.16
        add       edx, esi                                      ;84.9
        add       eax, ebx                                      ;85.9
        jmp       .B2.10        ; Prob 100%                     ;85.9
                                ; LOE rcx eax edx ecx cl ch
.B2.9:                          ; Preds .B2.7
        mov       edi, DWORD PTR [312+esp]                      ;87.16
        mov       edx, edi                                      ;87.16
        mov       eax, DWORD PTR [324+esp]                      ;87.16
        xor       edx, eax                                      ;87.16
        and       edx, DWORD PTR [316+esp]                      ;87.16
        and       edi, eax                                      ;87.16
        xor       edx, edi                                      ;87.16
        add       edx, esi                                      ;87.9
        mov       esi, DWORD PTR [304+esp]                      ;88.16
        mov       eax, esi                                      ;88.16
        not       esi                                           ;88.16
        and       eax, DWORD PTR [308+esp]                      ;88.16
        and       esi, DWORD PTR [320+esp]                      ;88.16
        xor       eax, esi                                      ;88.16
        add       eax, ebx                                      ;88.9
                                ; LOE rcx eax edx ecx cl ch
.B2.10:                         ; Preds .B2.8 .B2.9
        mov       edi, DWORD PTR [316+esp]                      ;92.7
        inc       ecx                                           ;76.5
        mov       ebx, DWORD PTR [312+esp]                      ;91.11
        mov       esi, DWORD PTR [324+esp]                      ;90.7
        rol       ebx, 9                                        ;91.11
        mov       DWORD PTR [312+esp], edi                      ;92.7
        mov       DWORD PTR [324+esp], ebx                      ;91.11
        mov       edi, DWORD PTR [308+esp]                      ;95.11
        mov       ebx, DWORD PTR [320+esp]                      ;94.7
        rol       edi, 19                                       ;95.11
        mov       DWORD PTR [320+esp], edi                      ;95.11
        mov       edi, DWORD PTR [304+esp]                      ;96.7
        mov       DWORD PTR [308+esp], edi                      ;96.7
        mov       edi, eax                                      ;97.11
        rol       edi, 9                                        ;97.11
        xor       edi, eax                                      ;97.11
        rol       eax, 17                                       ;97.11
        xor       edi, eax                                      ;97.11
        cmp       ecx, 64                                       ;76.5
        mov       DWORD PTR [316+esp], edx                      ;93.7
        mov       DWORD PTR [304+esp], edi                      ;97.11
        jb        .B2.7         ; Prob 98%                      ;76.5
                                ; LOE rdx rbx rsi edx ecx ebx esi dl bl dh bh sil
.B2.11:                         ; Preds .B2.10
        mov       eax, ebx                                      ;94.7
        mov       DWORD PTR [28+esp], eax                       ;94.7
        mov       DWORD PTR [esp], edx                          ;93.7
        mov       ecx, esi                                      ;90.7
        mov       ebx, DWORD PTR [324+esp]                      ;91.7
        mov       esi, DWORD PTR [312+esp]                      ;92.7
        mov       edx, DWORD PTR [320+esp]                      ;95.7
        mov       edi, DWORD PTR [308+esp]                      ;96.7
        mov       eax, DWORD PTR [304+esp]                      ;97.7
        mov       DWORD PTR [12+esp], ecx                       ;90.7
        mov       DWORD PTR [8+esp], ebx                        ;91.7
        mov       DWORD PTR [4+esp], esi                        ;92.7
        mov       DWORD PTR [24+esp], edx                       ;95.7
        xor       edx, edx                                      ;99.5
        mov       DWORD PTR [20+esp], edi                       ;96.7
        mov       DWORD PTR [16+esp], eax                       ;97.7
                                ; LOE edx
.B2.12:                         ; Preds .B2.12 .B2.11
        mov       eax, DWORD PTR [328+esp]                      ;100.7
        movdqu    xmm0, XMMWORD PTR [8+eax+edx*4]               ;100.7
        pxor      xmm0, XMMWORD PTR [esp+edx*4]                 ;100.7
        movdqu    XMMWORD PTR [8+eax+edx*4], xmm0               ;100.7
        add       edx, 4                                        ;99.5
        cmp       edx, 8                                        ;99.5
        jb        .B2.12        ; Prob 87%                      ;99.5
                                ; LOE edx
.B2.13:                         ; Preds .B2.12
        add       esp, 340                                      ;110.1
        pop       ebx                                           ;110.1
        pop       edi                                           ;110.1
        pop       esi                                           ;110.1
        mov       esp, ebp                                      ;110.1
        pop       ebp                                           ;110.1
        ret                                                     ;110.1
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
        push      edi                                           ;162.1
        push      ebx                                           ;162.1
        push      esi                                           ;162.1
        xor       eax, eax                                      ;168.5
        mov       ebx, DWORD PTR [20+esp]                       ;161.6
        mov       edx, DWORD PTR [ebx]                          ;166.18
        and       edx, 63                                       ;166.29
        mov       ecx, edx                                      ;168.5
        neg       ecx                                           ;168.5
        add       ecx, 64                                       ;168.5
        lea       edi, DWORD PTR [40+ebx+edx]                   ;168.5
        rep   stosb                                             ;168.5
                                ; LOE edx ebx ebp esi
.B3.2:                          ; Preds .B3.1
        mov       BYTE PTR [40+edx+ebx], 128                    ;170.5
        cmp       edx, 56                                       ;172.16
        jb        .B3.5         ; Prob 78%                      ;172.16
                                ; LOE ebx ebp esi
.B3.3:                          ; Preds .B3.2
        mov       eax, ebx                                      ;173.7
        call      _SM3_Transform.                               ;173.7
                                ; LOE ebx ebp esi
.B3.4:                          ; Preds .B3.3
        xor       eax, eax                                      ;175.7
        lea       edi, DWORD PTR [40+ebx]                       ;175.7
        push      64                                            ;175.7
        pop       ecx                                           ;175.7
        rep   stosb                                             ;175.7
                                ; LOE ebx ebp esi
.B3.5:                          ; Preds .B3.4 .B3.2
        mov       edi, DWORD PTR [ebx]                          ;178.21
        mov       ecx, edi                                      ;178.21
        mov       edx, DWORD PTR [4+ebx]                        ;178.21
        mov       eax, ebx                                      ;180.5
        shr       ecx, 29                                       ;178.21
        shl       edx, 3                                        ;178.21
        shl       edi, 3                                        ;178.21
        or        ecx, edx                                      ;178.21
        bswap     edi                                           ;178.21
        bswap     ecx                                           ;178.21
        mov       DWORD PTR [96+ebx], ecx                       ;178.5
        mov       DWORD PTR [100+ebx], edi                      ;178.5
        call      _SM3_Transform.                               ;180.5
                                ; LOE ebx ebp esi
.B3.6:                          ; Preds .B3.5
        mov       edi, DWORD PTR [16+esp]                       ;161.6
        xor       ecx, ecx                                      ;183.10
                                ; LOE ecx ebx ebp esi edi
.B3.7:                          ; Preds .B3.7 .B3.6
        mov       edx, DWORD PTR [8+ebx+ecx*4]                  ;184.30
        bswap     edx                                           ;184.30
        mov       DWORD PTR [edi+ecx*4], edx                    ;184.19
        inc       ecx                                           ;183.29
        cmp       ecx, 8                                        ;183.17
        jl        .B3.7         ; Prob 87%                      ;183.17
                                ; LOE ecx ebx ebp esi edi
.B3.8:                          ; Preds .B3.7
        pop       ecx                                           ;186.1
        pop       ebx                                           ;186.1
        pop       edi                                           ;186.1
        ret                                                     ;186.1
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
        xor       eax, eax                                      ;118.5
        mov       edx, DWORD PTR [4+esp]                        ;117.6
                                ; LOE eax edx ebx ebp esi edi
.B4.2:                          ; Preds .B4.2 .B4.1
        movdqa    xmm0, XMMWORD PTR [_2__cnst_pck.5+eax*4]      ;118.19
        movdqu    XMMWORD PTR [8+edx+eax*4], xmm0               ;118.5
        add       eax, 4                                        ;118.5
        cmp       eax, 8                                        ;118.5
        jb        .B4.2         ; Prob 50%                      ;118.5
                                ; LOE eax edx ebx ebp esi edi
.B4.3:                          ; Preds .B4.2
        pxor      xmm0, xmm0                                    ;126.5
        movq      QWORD PTR [edx], xmm0                         ;126.5
                                ; LOE
.B4.6:                          ; Preds .B4.3
        ret                                                     ;127.1
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
