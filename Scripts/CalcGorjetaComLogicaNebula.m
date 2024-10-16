a = newfis ('Qualidade Comida e Servico', 'sugeno', ...
           'min', 'max', 'min', 'max', 'wtaver');

## Add two inputs and their membership functions.
a = addvar (a, 'input', 'Gorjeta', [0 15]);
a = addmf (a, 'input', 1, 'Ruim', 'trapmf', [-1 0 2.5 5]);
a = addmf (a, 'input', 1, 'Medio', 'trapmf', [5 5.5 7.5 10]);
a = addmf (a, 'input', 1, 'Bom', 'trapmf', [10 10.5 12.5 15]);

a = addvar (a, 'input', 'Comida', [0 10]);
a = addmf (a, 'input', 2, 'Ruim', 'trapmf', [-1 1 2 2.5]);
a = addmf (a, 'input', 2, 'Regular', 'trapmf', [2.6 3.5 4.5 5]);
a = addmf (a, 'input', 2, 'Bom', 'trapmf', [5.1 6.5 7 7.5]);
a = addmf (a, 'input', 2, 'Ótimo', 'trapmf', [7.6 8.5 9 10]);

a = addvar (a, 'input', 'Servico', [0 10]);
a = addmf (a, 'input', 3, 'Ruim', 'trapmf', [-1 1 2 2.5]);
a = addmf (a, 'input', 3, 'Regular', 'trapmf', [2.6 3.5 4.5 5]);
a = addmf (a, 'input', 3, 'Bom', 'trapmf', [5.1 6.5 7 7.5]);
a = addmf (a, 'input', 3, 'Ótimo', 'trapmf', [7.6 8.5 9 10]);

## Plot the input membership functions.
plotmf (a, 'input', 1);
plotmf (a, 'input', 2);
plotmf (a, 'input', 3);

