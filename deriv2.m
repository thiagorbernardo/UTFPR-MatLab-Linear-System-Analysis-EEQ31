function [diff] = deriv2(signal)
    diff = conv(signal, [1,-2,1]);
end

