include irvine32.inc
.data 
msg byte 'Qasim',0
msg1 byte 'before reversing string is:',0
msg2 byte 'after reversing string is:',0
.code
main proc
mov edx,offset msg1
call writestring
mov edx,offset msg
call writestring
call crlf
mov edx,offset msg2
call writestring
mov eax,0
mov ecx,sizeof msg
mov esi,offset msg
tostack:
mov al,[esi]
push eax
inc esi
loop tostack
mov ecx,sizeof msg
fromstack:
pop eax
call writechar
loop fromstack
call crlf
exit
main endp
end main