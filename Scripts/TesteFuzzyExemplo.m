## Create new FIS.
a = newfis ('Heart-Disease-Risk', 'sugeno', ...
             'min', 'max', 'min', 'max', 'wtaver');

## Add two inputs and their membership functions.
a = addvar (a, 'input', 'LDL-Level', [0 300]);
a = addmf (a, 'input', 1, 'Low', 'trapmf', [-1 0 90 110]);
a = addmf (a, 'input', 1, 'Low-Borderline', 'trapmf', ...
           [90 110 120 140]);
a = addmf (a, 'input', 1, 'Borderline', 'trapmf', ...
           [120 140 150 170]);
a = addmf (a, 'input', 1, 'High-Borderline', 'trapmf', ...
           [150 170 180 200]);
a = addmf (a, 'input', 1, 'High', 'trapmf', [180 200 300 301]);

a = addvar (a, 'input', 'HDL-Level', [0 100]);
a = addmf (a, 'input', 2, 'Low-HDL', 'trapmf', [-1 0 35 45]);
a = addmf (a, 'input', 2, 'Moderate-HDL', 'trapmf', [35 45 55 65]);
a = addmf (a, 'input', 2, 'High-HDL', 'trapmf', [55 65 100 101]);

## Plot the input membership functions.
plotmf (a, 'input', 1);
plotmf (a, 'input', 2);
