clear
clc
soma=0;
#Iniciar no 1, salta de 1(quando nao informa o incremento o default é 1, e irá
for k=1:10
  soma = (soma+k);
  fprintf('A soma de %d mais %d\n',k, soma) #\n quebra linha
endfor
