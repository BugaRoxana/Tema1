% Realiza?i un program MATLAB în care s? genera?i ?i s? reprezenta?i grafic
% folosind func?ia stem urm?torii vectori:
% a) z = [0,0,0,0,0,1,0,0,...,0], vectorul z având lungimea 21. Reprezentarea
% grafic? se va face în dou? “miniferestre” (func?ia subplot) vectorul z în
% func?ie de n = 0:20 respectiv de m= –5:15

z=zeros(1,21);
z(6)=1;
n=0:1:20;
m=-5:1:15;

figure(1)
subplot(1,2,1), stem(n,z), title('dependenta z de n=0:20')
subplot(1,2,2), stem(m,z), title('dependenta z de n=-5:15')

% b)t=|10-n| , reprezentat grafic în func?ie de n = 0:20

t=zeros(1,21);
    
for r=1:1:21
    if r-1<=10
        t(r)=11-r;
    else
        t(r)=r-11;
    end
end

figure(2)
stem(n,t), title('dependenta t de n=0:20')

% c)

a=-15:1:25;
b=0:1:50;

for p=1:1:41
    q=a(p)
    x1(p)=sin((pi*q)/17)
end

for p=1:1:51
    q=b(p)
    x2(p)=cos((pi*q)/sqrt(23))
end

figure(3)     % x1 si x2 pe acelasi grafic utilizand comanda plot
plot(a,x1,b,x2), title('sinus si cosinus; plot')


figure(4)     % x1 si x2 – folosind dou? “miniferestre” grafice plasate
              % una sub alta utilizand comanda plot
subplot(2,1,1), plot(a,x1), ylabel('x1'), title('sinus; plot'),grid
subplot(2,1,2), plot(b,x2), ylabel('x2'), title('cosinus; plot'),grid


figure(5)     % x1 si x2 pe acelasi grafic utilizand comanda stem
stem(a,x1), title('sinus si cosinus; stem'),
hold on
stem(b,x2)
hold off


figure(6)     % x1 si x2 – folosind dou? “miniferestre” grafice plasate
              % una sub alta utilizand comanda stem
subplot(2,1,1), stem(a,x1), ylabel('x1'), title('sinus; stem'),grid
subplot(2,1,2), stem(b,x2), ylabel('x2'), title('cosinus; stem'),grid

