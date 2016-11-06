
%Exemplu

f = 50;
t = 0:0.001:0.2;
s = 2*sin(2*pi*f*t);
figure(1)
plot(t,s,'.-'),xlabel('Timp [s]'),grid 

%a) Modifica?i pasul de varia?ie a variabilei t la 0.01 ?i apoi la 0.0002

t = 0:0.01:0.2;
s = 2*sin(2*pi*f*t);
figure(2)
plot(t,s,'.-'),xlabel('Timp [s]'),grid, title('variatie cu 0.01')

t = 0:0.0002:0.2;
s = 2*sin(2*pi*f*t);
figure(3)
plot(t,s,'.-'),xlabel('Timp [s]'),grid, title('variatie cu 0.0002')

% Alegand pasul de 0.01 sinusul va fi intotdeana 0. Dar in MATLAB sin(pi) nu
% este egal cu zero ci este egal cu 1.2246e-16, de aceea in reprezentarea
% grafica nu apare o dreapta ci o variatie foarte slaba in jurul lui 0.
% Celelalte grafice, in care pasul este de 0.0002, respectiv 0.001 cuprinde
% o mai mare parte din punctele de pe sinusoida redand o imagine cat mai
% aproape de realitate a semnalului. 


% b) M?sura?i pe grafic perioada semnalului sinusoidal în cele 3 situa?ii.

% Uitandu-ne pe grafice remarcam ca semnalul se repeta atunci cand t creste
% cu 0.02, aceasta fiind periada semnalului. Insa acest lucru nu se observa 
% si din graficul in care pasul este de 0.01 intrucat acesta nu se mai
% repeta deloc.

% c) Genera?i un semnal cosinusoidal de frecven?? 20 Hz pe care s?-l reprezenta?i
% cu culoare ro?ie pe acela?i grafic peste semnalul sinusoidal. 

f = 50;
t = 0:0.001:0.2;
s = 2*sin(2*pi*f*t);
figure(4)
plot(t,s,'.-'),xlabel('Timp [s]'),grid
hold on

f=20;
c=2*cos(2*pi*f*t)
plot(t,c,'.- r'),xlabel('Timp [s]'),grid
hold off


