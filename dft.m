function [x] = dft(signal)
    n = length(signal);

    size = ceil(n/2);

    x(size)=0;

    for k=1:size
        for b=1:n
            x(k) = x(k) + signal(b) * cos(2*pi*(k-1)*b/n);
            x(k) = x(k) - 1i*signal(b) * sin(2*pi*(k-1)*b/n);
        end
    end
end

