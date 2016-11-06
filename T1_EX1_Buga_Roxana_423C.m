% a)
a=0:0.1:2
length(a)
b=ones(21,1)
c=a*b;

% b)
d=b*a

% c) produsul elementelor utilizand prod
e=prod(a)
f=prod(b)
%inmultirea element cu element a celor doi vectori utilizand ' .* ' nu se
%poate realiza deoarece numarul de linii si de colone difera
p=a.*b
q=b.*a