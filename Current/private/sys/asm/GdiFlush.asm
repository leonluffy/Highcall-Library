; Hc/NtGdiFlush
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiFlush:DWORD

.DATA
.CODE

HcGdiFlush PROC
	mov r10, rcx
	mov eax, sciGdiFlush
	syscall
	ret
HcGdiFlush ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiFlush:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiFlush PROC
	mov eax, sciGdiFlush
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiFlush ENDP

ENDIF

END