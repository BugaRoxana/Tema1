% Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
% 200ms pentru un semnal continuu de tipul: 
% Semnal dreptunghiular periodic cu
% -Perioad?: 2 s.
% -Factor de umplere: 25%.
% -Nivel maxim: +0.5.
% -Nivel minim: -1. 

t=2;
t1=0:0.002:4;
x1=zeros(1,length(t1));
k=0;

for r=2:0.002:6         %construim semnalul    
    k=k+1;
    c=floor(r/t);
    v=r-c*t;
        
    if(v<=t/4)
       x1(1,k)=0.5;
    else
        x1(1,k)=-1;
    end
end

t2=0:0.02:4;
x2=zeros(1,length(t2));
k=0;

for r=2:0.02:6
    
    k=k+1;
    c=floor(r/t);
    v=r-c*t;
        
    if(v<=t/4)
       x2(1,k)=0.5;
    else
        x2(1,k)=-1;
    end
end

t3=0:0.2:4;
x3=zeros(1,length(t3));
k=0;

for r=2:0.2:6
    
    k=k+1;
    c=floor(r/t);
    v=r-c*t;
        
    if(v<=t/4)
       x3(1,k)=0.5;
    else
        x3(1,k)=-1;
    end
end

subplot(3,1,1), plot(t1,x1),xlabel('Timp [s]'),grid, title('t1=2ms')
subplot(3,1,2), plot(t2,x2),xlabel('Timp [s]'),grid, title('t1=20ms')
subplot(3,1,3), plot(t3,x3),xlabel('Timp [s]'),grid, title('t1=200ms')

