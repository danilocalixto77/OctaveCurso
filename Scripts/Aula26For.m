clear
clc
#Iniciar no 1, salta de 1 em 1 até 10
for k=1:1:10
  x=(k^2); #ponto-virgula suprime a impressão do resultado na tela do prompt
  fprintf('O quadrado de %d é %d\n',k, x) #\n quebra linha
endfor
