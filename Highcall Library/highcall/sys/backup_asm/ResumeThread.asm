; ResumeThread

IFDEF RAX
; 64bit
  
EXTERNDEF sciResumeThread:DWORD
 
.DATA
.CODE
 
HcResumeThread PROC 
	mov r10, rcx
	mov eax, sciResumeThread
	syscall
	ret
HcResumeThread ENDP 

ELSE
; 32bit

EXTERNDEF C sciResumeThread:DWORD

.586              
.MODEL FLAT, C   
.STACK         
.DATA
.CODE
 
ASSUME FS:NOTHING	
 
HcResumeThread PROC 
	mov eax, sciResumeThread
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
HcResumeThread ENDP 

ENDIF

END