; Hc/NtUserDisableImmersiveOwner
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDisableImmersiveOwner:DWORD

.DATA
.CODE

HcUserDisableImmersiveOwner PROC
	mov r10, rcx
	mov eax, sciUserDisableImmersiveOwner
	syscall
	ret
HcUserDisableImmersiveOwner ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDisableImmersiveOwner:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDisableImmersiveOwner PROC
	mov eax, sciUserDisableImmersiveOwner
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
HcUserDisableImmersiveOwner ENDP

ENDIF

END