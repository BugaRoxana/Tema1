% Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
% 200ms pentru un semnal continuu de tipul: 
% Semnal sinusoidal redresat mono alternan??
% -Perioada semnalului sinusoidal ini?ial (neredresat) 3 s.
% -Amplitudine: 0.8. 

t=3;
F=1/3;
t1=0:0.002:6;
t2=0:0.02:6;
t3=0:0.2:6;

x1=0.8*sin(2*pi*F*t1);
x2=0.8*sin(2*pi*F*t2);
x3=0.8*sin(2*pi*F*t3);

q=0;

for r=0:0.002:6
    q=q+1;
    if(x1(q)<0)
        x1(q)=0;
    end
end

q=0;
for r=0:0.02:6
    q=q+1;
    if(x2(q)<0)
        x2(q)=0;
    end
end

q=0;
for r=0:0.2:6
    q=q+1;
    if(x3(q)<0)
        x3(q)=0;
    end
end

subplot(3,1,1),plot(t1,x1),grid,title('t1=2ms'),xlabel('Timp [s]')
subplot(3,1,2),plot(t2,x2),grid,title('t2=20ms'),xlabel('Timp [s]')
subplot(3,1,3),plot(t3,x3),grid,title('t3=200ms'),xlabel('Timp [s]')

