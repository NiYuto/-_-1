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
MOV Ax, X ; добавление в регистр числа х
ADD Ax, Y ; сложение 
ADD Ax, Z ; сложение
MOV Bx, AX ; дублирование регистра
AND Ax, X ; Логическое И
ROL Y, 4 ; Сдвиг вправо
AND Bx, Y ; Логическое И
SUB Ax, Bx ; Вычитание
NEG Ax ; Смена знака числа
exit:
+Invoke ExitProcess,1
End Start