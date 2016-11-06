T=0.5;
Fs=12;
t=0:0.01:5;  %vom reprezenta 5ms de semnal
s=zeros(1, length(t));
q=length(t);
m=0;
for r=0:0.01:5          % constuim vectorul generand numai in puncte 
                        % multiple de 0.5 elemente binare aleatoare
    m=m+1;
    if floor(r/0.5)==(r/0.5)
        s(m)=randi([0,1],1);
        
    end
end

n=0;
b=0;
p=0;
k=0;
m=length(t)
for r=0:0.01:5
    j=0;                        % verificam daca in punctele multiple de 0.5                               
    n=n+1;                      % avem 0 sau 1 si facem toate punctele care
    if floor(r/0.5)==(r/0.5)    % urmeaza pana la urmatorul multiplu de 0.5
        if(n<m)                 % sa aiba aceeasi valoare
        if s(n)==1            
            s(n:n+49)=1;
        else
            s(n:n+49)=0;
        end
        end
    end
end
length(s)
figure (1)
plot(t,s,'r'),xlabel('Timp [s]'),grid
    
F=1/0.5*1000;
Fs=12000;
w0=2*pi*F/Fs;
N=0.5*12;
r=0:N-1;
se=zeros(1,length(r))
for q=1:1:length(r)
    se(q)=s(1,1);
end

figure (2)

stem(r,se),xlabel('Time [s]'),grid
        
          

