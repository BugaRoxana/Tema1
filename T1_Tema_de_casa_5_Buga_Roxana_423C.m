%Punctul 5


t=4;
F=1/4;

t1=0:0.002:6;
t2=0:0.02:6;
t3=0:0.2:6;

x1=1.5*sin(2*pi*F*t1);
x2=1.5*sin(2*pi*F*t2);
x3=1.5*sin(2*pi*F*t3);

q=0;

for r=0:0.002:6
    q=q+1;
    if(x1(q)<0)
        x1(q)=abs(x1(q));
    end
end

q=0;
for r=0:0.02:6
    q=q+1;
    if(x2(q)<0)
        x2(q)=abs(x2(q));
    end
end

q=0;
for r=0:0.2:6
    q=q+1;
    if(x3(q)<0)
        x3(q)=abs(x3(q));
    end
end
    
subplot(3,1,1),plot(t1,x1),grid, title('t1=2ms'),xlabel('Timp [s]')
subplot(3,1,2),plot(t2,x2),grid, title('t1=20ms'),xlabel('Timp [s]')
subplot(3,1,3),plot(t3,x3),grid, title('t1=200ms'),xlabel('Timp [s]')