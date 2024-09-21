clear
clc
x = input('Digire um numero de 1 a 4:');

switch x
  case 1
    disp('Digitou numero 1');
  case 2
    disp('Digitou numero 2');
  case 3
    disp('Digitou numero 3');
  case 4
    disp('Digitou numero 4');
  otherwise
    disp('Digitou num numero não classificado');
endswitch

