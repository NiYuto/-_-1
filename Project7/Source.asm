.686
.model flat,stdcall
.stack 100h
.data
X dw 58
Y dw 23
Z dw 11
.code
ExitProcess PROTO STDCALL :DWORD
Start:
xor eAx,eAx
xor eBx,eBx
xor eCx,eCx
xor eDx,eDx
MOV Ax, X ; ���������� � ������� ����� �
ADD Ax, Y ; �������� 
ADD Ax, Z ; ��������
MOV Bx, AX ; ������������ ��������
AND Ax, X ; ���������� �
ROL Y, 4 ; ����� ������
AND Bx, Y ; ���������� �
SUB Ax, Bx ; ���������
NEG Ax ; ����� ����� �����
exit:
+Invoke ExitProcess,1
End Start