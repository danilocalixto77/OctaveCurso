# Curso de Programação em Octave
#### Canal: [Estudar Engenharia - Youtube](https://www.youtube.com/@EstudarEngenharia)

---

## 01 - Como Instalar

[Vídeo Aula 1](https://www.youtube.com/watch?v=MoKKDVAMjDQ&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=1)

Faça o donwload do instaladr conforme versão do seu sistema operacioanal.(Windows, Linux, MacOS) no link a seguir: https://octave.org/

## 02 - Primeiros Passos

Comandos:

    clc : limpa a tela


Operadores: 

    Soma : +
    Subtração : -
    Multiplicação : *
    Divisão : /
    Exponeciação : ^

Formatação casas decimais:

    format short    : 4 dígitos decimais
    format long     : 14 dígitos decimais  
    format short e  : Notação científica com 4 dígitos decimais  
    format long e   : Notação científica com 15 dígitos decimais  
    format short g  : 5 dígitos decimais 
    format long g   : 16 dígitos decimais  
    format bank     : 2 dígitos decimais

## 03 - Funções Elementares

    sqrt(x)      : Raiz quadrada
    exp(x)       : Exponencial
    abs(x)       : Módulo/valor absoluto
    log(x)       : Logaritimo
    log2(x)      : Logaritimo log de 10
    log100(x)    : Logaritimo log de 100
    factorial(x) : Fatorial
    pi           : pi
    sin(x)       : Seno (valor em radianos)
    cosseno(x)   : Cosseno
    tan(x)       : Tangente
    cot(x)       : Cotangente
    asin(x)      : Seno (valor em radianos) inverso
    acosseno(x)  : Cosseno inverso
    atan(x)      : Tangente inverso
    acot(x)      : Cotangente inverso
    sinh(x)      : Seno (valor em radianos) hiperbólicas
    cossenoh(x)  : Cosseno hiperbólicas
    tanh(x)      : Tangente hiperbólicas
    coth(x)      : Cotangente hiperbólicas
    round(x)     : Arredondamento maior inteiro
    fix(x)       : Arredondamento menor inteiro
    ceil(x)      : Arredonda para maior
    floor(x)     : Arredonda para maior negativo
    rem(x,y)     : Resto de um número
    sing(x)      : Sinal, retorna o numero 1 e o seu sinal.

## 04 - Variáveis

Declaração

    x = 8
    y = 5
    z = x + y
    z = 13

Variáveis predefinidas:

    ans : Assume o valor da última expressão não atribuída a uma variável especificada.
    pi  : Aproximação do número π
    e   : Aproximação do número e
    inf : Infinito
    i   : 0+1i
    j   : O mesmo que i
    NaN : Abreviação de Not-a-Number. Usando quando o Octave não pode determinar um valor numérico válido. Por exemplo: 0/0.

    Ao teclar enter o prompt já retorná o valor da variável. Para não retornar o valor utilizar ';' (ponto virgula ao final da declaraçao).

    Variáveis no Octave são case sensitive, portanto variáveis com letras maiúsculas são diferentes de minúsculas.

    Variáveis também devem ser inicialmente declaradas com letras.

Comandos para variáveis:

    clear       : Apaga da memória todas as variáveis
    clear x y z : Apaga apenas da memória as variáveis x y z
    who         : Exibe uma lista de variáveis declaradas/ ativas na memória.
    whos        : Exibe uma lista de variáveis declaradas/ ativas na memória, com o respectivo tamanho em bytes e a classe de armazenamento.


## 05 - Exercícios

    ...

## 06 - Criando Arranjos (Vetores e Matrizes)

[Vídeo Aula 6](https://www.youtube.com/watch?v=BAANtvP1iTc&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=7)


Declaração:

**Vetores**

    Separando por espaços em branco:
    [3 8 7 5]
    Separado por vírgula
    [3, 8, 7, 5]

    Vetores com espaçamentos constantes. Do zero ao cinquenta, com salto de cinco em cinco:
    [0:5:50]

    linspace(0,50,10) semelhante a notação acima o seu funcionamento. Caso o último valor que refere-se a quantidade de repetições em que o vetor será dividido, caso não seja informado, o Octave por padrão contará 100.


**Matrizes**

    Separado funciona semelhante aos vetores, entretanto, casa linha é separada por ponto e virgula.
    [1 4 6; 6 9 2; 5 11 3]

    Duas outras funções existem para criar matrizes:

    zeros(3,3)

    0   0   0
    0   0   0
    0   0   0

    ones(2,3)

    1   1
    1   1
    1   1 

    eye(5) : Matriz identidade

    1   0   0   0   0
    0   1   0   0   0
    0   0   1   0   0
    0   0   0   1   0
    0   0   0   0   1


## 07 - Transposição e Referência em Arranjos

## 08 - Adicionando e Elimando Elementos de Arranjos

*Adicionando em Vetores*

    Declarando vetor
    v=[2 4 6 9]

    Adicionando na coluna 5

    v(5) = 20

    Adicionando em valores por faixa das posições 6 a 10

    v(6:10)=[1 5 3 7]

    Adicionando a uma posição superior ao tamanho atual

    v(15)= 3

    Neste caso adicionou o 3 na posição 15 e entre as posições 11 e 14 será preenchido com 0.


*Adicionando em Matrizes*

    Declarando matriz

    m = [3 5 4; 7 9 1; 2 7 4]

    Inserindo uma coluna

    m(:,4)=[6 7 8]

    Inserindo uma linha
    
    m(4,:)=[2 9 7 5]

*Removendo do vetor*

    v(5)=[]

    Informa a posição e o cochete vazio, já é identificado para ser removido.

    Removendo por faixa

    v(6:9)=[]

*Removendo da matriz*

    Removendo linha
    m=(3,:)=[]

    Removendo coluna
    m=(:,1)=[]


*Funções Nativas para Manipulação de Arranjos*

    length(v)   : Retorna o número de elementos do vetor v.

    >> v=[4 3 6 7];
    >> length(v)
    >> ans = 4

---

    size(A)     : Retorna um vetor linha [m, n], onde m e n representam a dimensão (m x n) da matriz A.

    >> A=[4 3 6 7;4 5 2 5; 3 4 1 6];
    >> size(A)
    >> ans = 3 4
    
---

reshape(A,m,n)  : Rearranja uma matriz "A" com "r" linhas e "s" colunas para m linhas e n colunas. r vezes s deve ser igual numericamente igual a m vezes n.

    >> A =
    4 3 6 7
    4 5 2 5
    3 4 1 6
    >> reshape(A,4,3)
    ans =
    4 5 1
    4 4 7
    3 6 5
    3 2 6
    
---
diag(v) : Quando v é um vetor, cria uma matriz quadrada contendo os elementos de v na 
diagonal principal.

    >> v=[3 9 1 2];
    >> diag(v)
    ans =
    Diagonal Matrix
    3 0 0 0
    0 9 0 0
    0 0 1 0
    0 0 0 2

diag(A) : Quando A é uma matriz, cria um vetor coluna a partir dos elementos na  diagonal principal.


## 09 - O que é uma String ?

[Vídeo Aula 9](https://www.youtube.com/watch?v=GCgyIFWn1jI&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=9)


    x='Programa: '
    x=Programa;

**Concatenando**

    >> x(11:16)='Octave'
    x= Programa: Octave

**Matriz de Sring**

    >> info=char('Nome: ', 'Joao','Idade','22' )
    info =
        Nome:
        Joao
        Idade
        22


## 10 - Exercícios

    
[Vídeo Aula 10](https://www.youtube.com/watch?v=mhNhdi0MUsQ&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=10)


## 11 - Adição e Subtração em Arranjos

[Vídeo Aula 11](https://www.youtube.com/watch?v=LXx190fQuUY&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=11)


CONTINUAR DA AULA 11

***Salto entre aulas 8 e 21, para iniciar utilização da IDE e scripts*** 
    Multiplicação em Arranjos #12

    Divisão em Arranjos #13

    Operações Elementares em Arranjos #14

    Funções Nativas para Arranjos #15

    Gere Números Aleatórios com o Comando Rand #16

    Gráficos 2D - Aprenda o comando Plot #17

    Gráficos 2D - Comando Fplot #18

    Múltiplos Gráficos #19

    Construindo outros Gráficos 2D (pizza, hastes, barras...) #21

 
## 22 - O que são Scripts ou Rotinas? 

[Vídeo Aula 22](https://www.youtube.com/watch?v=JpvWv5awdD4&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=22)

    Criação de script para calculo do volume do cone.

    Exemplo de comandos:

    input   : entrada de dados.
    disp    : saida simples
    fprintf : saida com mais recursos/interpolação/formatação e etc...

    Formatações de casas decimais dentro das mensagens com interpolação


## 23 Operadores Lógicos e Relacionais

[Vídeo Aula 23](https://www.youtube.com/watch?v=cEpOeQu4wJQ&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=23)

**Operadores Relacionais**

    < menor
    > maior
    <= menor ou igual
    >= maior ou igual
    == igual
    ~= diferente


**Operadores Lógicos**

    & e
    | ou
    ~ negação


## 24 Como funcionam os comandos If - Elseif - Else #24    

[Vídeo Aula 24](https://www.youtube.com/watch?v=ZtDPQNXgllE&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=24)

*Algorítmo exemplo:*

    clear
    clc
    x = input('Digite um numero: ');
    if x > 5
        disp('O numero é maior que 5')
    elseif x == 5
        disp('O numero é igual a 5')
    else
        disp('O numero é menor que 5')
    endif


## 25 Como funcionam os comandos Switch - Case - Otherwise
 
[Vídeo Aula 25](https://www.youtube.com/watch?v=WXOeiqoC8ns&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=25)


*Algorítmo exemplo:*

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



## 26 Loops - Como utilizar o comando For

[Vídeo Aula 26](https://www.youtube.com/watch?v=nzWIzcVY_wk&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=26)


*Algorítmo exemplo 1:*

    clear
    clc
    #Iniciar no 1, salta de 1 em 1 até 10
    for k=1:1:10
        x=(k^2); #ponto-virgula suprime a impressão do resultado na tela do prompt
        fprintf('O quadrado de %d é %d\n',k, x) #\n quebra linha
    endfor

*Algorítmo exemplo 2:*

    clear
    clc
    soma=0;
    #Iniciar no 1, salta de 1(quando nao informa o incremento o default é 1, e irá
    for k=1:100
        soma = (soma+k);
        fprintf('A soma de %d mais %d\n',k, soma) #\n quebra linha
    endfor


## 27 Loops - Como utilizar o comando While 

[Vídeo Aula 27](https://www.youtube.com/watch?v=SOoM0KEoMCo&list=PLUfT_zSB_TFTFhB87Boy3RTzB0CpcMJ4C&index=27)


*Algorítmo exemplo 1:*


    clear
    clc
    x=1;
    n=input('Digite o valor desejado: ');
    while x<=n
        x=(2*x)
    endwhile

