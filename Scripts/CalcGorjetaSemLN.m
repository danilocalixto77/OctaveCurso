% Função para cálculo de gorjeta sem lógica nebulosa

function tip = calculate_tip(food_quality, service_quality)
    % Parâmetros para determinar o nível de qualidade
    threshold = 7; % Pontuação acima de 7 é considerada boa

    % Inicialização da gorjeta base
    tip_percentage = 10; % Valor padrão

    % Condições baseadas nas qualidades da comida e do serviço
    if food_quality < threshold && service_quality < threshold
        tip_percentage = 5; % Comida e serviço ruins, gorjeta baixa
    elseif food_quality >= threshold && service_quality >= threshold
        tip_percentage = 15; % Comida e serviço bons, gorjeta alta
    else
        tip_percentage = 10; % Um bom e outro ruim, gorjeta intermediária
    end

    % Exibindo o percentual da gorjeta
    tip = tip_percentage;
endfunction

% Exemplo de uso
food_quality = 8; % Avaliação da comida
service_quality = 6; % Avaliação do serviço

% Chamada da função para calcular a gorjeta
tip = calculate_tip(food_quality, service_quality);

fprintf('A gorjeta sugerida é de %d%%\n', tip);

