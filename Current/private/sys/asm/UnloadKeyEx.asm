; Hc/NtUnloadKeyEx
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUnloadKeyEx:DWORD

.DATA
.CODE

HcUnloadKeyEx PROC
	mov r10, rcx
	mov eax, sciUnloadKeyEx
	syscall
	ret
HcUnloadKeyEx ENDP

ELSE
; 32bit

EXTERNDEF C sciUnloadKeyEx:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUnloadKeyEx PROC
	mov eax, sciUnloadKeyEx
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
HcUnloadKeyEx ENDP

ENDIF

END