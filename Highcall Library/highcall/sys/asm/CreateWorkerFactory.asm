; Hc/NtCreateWorkerFactory
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciCreateWorkerFactory:DWORD

.DATA
.CODE

HcCreateWorkerFactory PROC
	mov r10, rcx
	mov eax, sciCreateWorkerFactory
	syscall
	ret
HcCreateWorkerFactory ENDP

ELSE
; 32bit

EXTERNDEF C sciCreateWorkerFactory:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcCreateWorkerFactory PROC
	mov eax, sciCreateWorkerFactory
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
HcCreateWorkerFactory ENDP

ENDIF

END