function [y] = quantiza_round(signal,bits)
    y = round(signal / (2^(8-bits)));
end
    
