; Hc/NtUserSetProcessInteractionFlags
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetProcessInteractionFlags:DWORD

.DATA
.CODE

HcUserSetProcessInteractionFlags PROC
	mov r10, rcx
	mov eax, sciUserSetProcessInteractionFlags
	syscall
	ret
HcUserSetProcessInteractionFlags ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetProcessInteractionFlags:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetProcessInteractionFlags PROC
	mov eax, sciUserSetProcessInteractionFlags
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
HcUserSetProcessInteractionFlags ENDP

ENDIF

END