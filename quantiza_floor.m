function [y] = quantiza_floor(signal,bits)
    y = floor(signal / (2^(8-bits)));
end
    
    