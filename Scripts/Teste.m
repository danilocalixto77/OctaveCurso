pkg load fuzzy-logic-toolkit

% Criação de um novo sistema fuzzy de inferência
a = newfis('Qualidade Comida e Servico', 'sugeno', 'min', 'max', 'min', 'max', 'wtaver');

% Adicionando variável de entrada 'Gorjeta'
a = addvar(a, 'input', 'Gorjeta', [0 15]);

% Adicionando funções de pertinência para 'Gorjeta'
a = addmf(a, 'input', 1, 'Ruim', 'trapmf', [-1 0 4.9 5]);
a = addmf(a, 'input', 1, 'Medio', 'trapmf', [5 9.8 9.9 10]);
a = addmf(a, 'input', 1, 'Bom', 'trapmf', [10 14.8 14.9 15]);

% Adicionando variável de entrada 'Comida'
a = addvar(a, 'input', 'Comida', [0 10]);

% Adicionando funções de pertinência para 'Comida'
a = addmf(a, 'input', 2, 'Ruim', 'trapmf', [-1 0 2 3]);
a = addmf(a, 'input', 2, 'Bom', 'trapmf', [3.1 4.5 6 7.9]);
a = addmf(a, 'input', 2, 'Ótimo', 'trapmf', [8 8.5 9 10]);

% Adicionando variável de entrada 'Servico'
a = addvar(a, 'input', 'Servico', [0 10]);

% Adicionando funções de pertinência para 'Servico'
a = addmf(a, 'input', 3, 'Ruim', 'trapmf', [-1 0 2 3]);
a = addmf(a, 'input', 3, 'Bom', 'trapmf', [3.1 4.5 6 7.9]);
a = addmf(a, 'input', 3, 'Ótimo', 'trapmf', [8 8.5 9 10]);

% Adicionando variável de saída 'Classificacao'
a = addvar(a, 'output', 'Classificacao', [0 100]);

% Adicionando funções de pertinência para 'Classificacao' (valores de saída)
a = addmf(a, 'output', 1, 'Ruim', 'constant', 20);
a = addmf(a, 'output', 1, 'Medio', 'constant', 50);
a = addmf(a, 'output', 1, 'Bom', 'constant', 80);

% Definindo algumas regras
rule1 = [1 1 1 1 1]; % Se gorjeta é 'Ruim' e comida é 'Ruim' e serviço é 'Ruim', então classificação é 'Ruim'
rule2 = [2 2 2 2 1]; % Se gorjeta é 'Medio' e comida é 'Media' e serviço é 'Bom', então classificação é 'Medio'
rule3 = [3 3 3 3 1]; % Se gorjeta é 'Bom' e comida é 'Ótimo' e serviço é 'Ótimo', então classificação é 'Bom'

% Adicionando regras ao FIS
a = addrule(a, [rule1; rule2; rule3]);

% Criando a malha de valores para as entradas
[g, c, s] = meshgrid(0:1:15, 0:1:10, 0:1:10);

% Avaliando o sistema fuzzy para cada combinação de entradas
y = zeros(size(g));
for i = 1:size(g, 1)
  for j = 1:size(g, 2)
    for k = 1:size(g, 3)
      y(i, j, k) = evalfis([g(i, j, k) c(i, j, k) s(i, j, k)], a);
    end
  end
end

% Plotando o gráfico 3D
figure;
surf(g(:,:,1), c(:,:,1), y(:,:,1));
xlabel('Gorjeta (%)');
ylabel('Qualidade da Comida');
zlabel('Classificação');
title('Avaliação da Qualidade do Restaurante');

hold on;
surf(c(:,:,1), s(:,:,1), y(:,:,1));
xlabel('Qualidade da Comida');
ylabel('Qualidade do Serviço');
zlabel('Classificação');

surf(s(:,:,1), g(:,:,1), y(:,:,1));
xlabel('Qualidade do Serviço');
ylabel('Gorjeta (%)');
zlabel('Classificação');

hold off;

