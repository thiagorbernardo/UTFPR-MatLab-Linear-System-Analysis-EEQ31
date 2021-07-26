%% Copyright (C) 2001 Alceo Carta Neto
%%
%% This file is part of Octave.
%%
%% Octave is free software; you can redistribute it and/or modify it
%% under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2, or (at your option)
%% any later version.
%%
%% Octave is distributed in the hope that it will be useful, but
%% WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%% General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with Octave; see the file COPYING.  If not, write to the Free
%% Software Foundation, 59 Temple Place - Suite 330, Boston, MA
%% 02111-1307, USA.

%% uso: [Y]=ruido2(fa, t, media, desvio)
%%
%% Plota ruido randômico com freqëncia de amostragem 'fa' (Hz) e tempo
%%'t' (s), utilizando a técnica:
%%	Y[n]=rand+rand+...(12 vezes)

function [Y]=ruido2(fa, t, media, desvio)

	amostras=1:(t*fa); #cria vetor de amostragem

 	for i=1:(t*fa)
 		Y(i)=0;
 		aux=0;
 		for j=1:12
 			Y(i)=Y(i)+rand;
 		endfor;
 		Y(i)=Y(i)/12;
 		for j=1:6
 			aux=aux+rand;
 		endfor;
 		Y(i)=Y(i)-(aux/6);
 		Y(i)=(Y(i)*desvio)+media;
 	endfor;

 	%%plota gráfico do ruido
	title('ruído randômico');xlabel('número da amostra');ylabel('amplitude(V)');plot(amostras,Y);grid;

endfunction;

