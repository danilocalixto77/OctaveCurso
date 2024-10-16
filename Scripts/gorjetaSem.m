% Função para cálculo de gorjeta sem lógica nebulosa

function gorjetaSem(comida, servico)
    % Parâmetros para determinar o nível de qualidade
    limite = 7; % Pontuação acima de 7 é considerada boa

    % Inicialização da gorjeta base
    percentual_gorjeta = 10; % Valor padrão

    % Condições baseadas nas qualidades da comida e do serviço
    if (comida < limite) && (servico <  limite)
        percentual_gorjeta = 5
    elseif (comida >= limite) && (servico >= limite)
        percentual_gorjeta = 15
    else
        percentual_gorjeta = 10
    endif

    % Exibindo o percentual da gorjeta
    fprintf("\n");
    fprintf("Nota para comida: %d. Nota para servico: %d. Gorjeta sugerida: %d \n\n\n", comida, servico, percentual_gorjeta);
endfunction





