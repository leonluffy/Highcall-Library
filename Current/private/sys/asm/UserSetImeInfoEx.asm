; Hc/NtUserSetImeInfoEx
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetImeInfoEx:DWORD

.DATA
.CODE

HcUserSetImeInfoEx PROC
	mov r10, rcx
	mov eax, sciUserSetImeInfoEx
	syscall
	ret
HcUserSetImeInfoEx ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetImeInfoEx:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetImeInfoEx PROC
	mov eax, sciUserSetImeInfoEx
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
HcUserSetImeInfoEx ENDP

ENDIF

END