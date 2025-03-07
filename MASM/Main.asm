.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD


.data
	;define your variables here
	adword DWORD ?
	mystring byte "Hello", 0
.code

;	EAX						AH			  AL
;	---- ---- ---- ----   ---- ----   ---- ----

main PROC
	; write your assembly code here

	

	mov		eax, 3
	mov		ebx, 8
	add		eax, ebx
	mov		ecx, eax
	mov		eax, 5
	mov		eax, 11223h ; in hex
	mov		ebx, eax
	mov		adword, eax
	mov		al, 7   ;al is a subregister

	mov eax, 0
	mov  ebx, offset mystring
	;this program does a loop until eax > 5 then sets value to 33 in hex
	start:
		;mov  ebx, offset mystring
		inc  eax
		
		cmp eax, 5
		jle start
		mov eax, 33h

	


	INVOKE ExitProcess, 0
main ENDP
END main