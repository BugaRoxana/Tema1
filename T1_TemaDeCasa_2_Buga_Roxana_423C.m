% Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
% 200ms pentru un semnal continuu de tipul:
% Semnal triunghiular periodic
% - Perioad?: 5 s.
% - Nivel maxim: +1.
% - Nivel minim: -2.
% - Panta+ 1 V/s Observa?ie: Panta– [V/s] rezult? din calcule 

t=5;
m=1;
t1=0:0.002:15;
t2=0:0.02:15;
t3=0:0.2:15;
x1=zeros(1,length(t1));
x2=zeros(1,length(t2));
x3=zeros(1,length(t3));
j=0;

for r=5:0.002:20
    j=j+1;
    q=j-1;
    c=floor(r/t);
    r=r-c*t;
    if(j==1)
        x1(1,j)=m*(t1(1,j)-0)+0;
    else if (r<=1)
            x1(1,j)=m*(t1(1,j)-0)+0-5*(c-1);            
        else
            if (r>=3)
                x1(1,j)=m*(t1(1,j)-0)+0-5*c;
            else
                if(r>1&&r<3&&c==1)
                    x1(1,j)=(-2-1)*((t1(1,j)-1)/(3-1))+1-5*(c-1);
                else
                    x1(1,j)=(-2-1)*((t1(1,j)-1)/(3-1))+1+(7.5*(c-1));
                end
            end
        end
    end
end



j=0;

for r=5:0.02:20
    j=j+1;
    q=j-1;
    c=floor(r/t);
    r=r-c*t;
    
    if(j==1)
        x2(1,j)=m*(t2(1,j)-0)+0;
    else
        if (r<=1)
            x2(1,j)=m*(t2(1,j)-0)+0-5*(c-1);           
        else
            if (r>=3)
                x2(1,j)=m*(t2(1,j)-0)+0-5*c;
            else
                if(r>1&&r<3&&c==1)
                    x2(1,j)=(-2-1)*((t2(1,j)-1)/(3-1))+1-5*(c-1);
                else
                    x2(1,j)=(-2-1)*((t2(1,j)-1)/(3-1))+1+(7.5*(c-1));
                end
            end
        end
    end
end

j=0;

for r=5:0.2:20
    j=j+1;
    q=j-1;
    c=floor(r/t);
    r=r-c*t;
    
    if(j==1)
        x3(1,j)=m*(t3(1,j)-0)+0;
    else
        if (r<=1)
            x3(1,j)=m*(t3(1,j)-0)+0-5*(c-1);            
        else
            if (r>=3)
                x3(1,j)=m*(t3(1,j)-0)+0-5*c;
            else
                if(r>1&&r<3&&c==1)
                    x3(1,j)=(-2-1)*((t3(1,j)-1)/(3-1))+1-5*(c-1);
                else
                    x3(1,j)=(-2-1)*((t3(1,j)-1)/(3-1))+1+(7.5*(c-1));
                end
            end
        end
    end
end

subplot(1,3,1),plot(t1,x1),grid, title('t1=2ms'),xlabel('Timp [s]')
subplot(1,3,2),plot(t2,x2),grid, title('t1=20ms'),xlabel('Timp [s]')
subplot(1,3,3),plot(t3,x3),grid, title('t1=200ms'),xlabel('Timp [s]')