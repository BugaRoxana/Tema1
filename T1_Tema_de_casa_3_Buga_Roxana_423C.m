T=0.25;
%Schimbam paul deoarece nu se va suprapune peste punctele necesare
t1=0:0.0001:2.5;
t2=0:0.001:2.5;
t3=0:0.01:2.5;

n1=length(t1);
n2=length(t2);
n3=length(t3);

s11=zeros(1,n1);
s12=zeros(1,n2);
s13=zeros(1,n3);


s21=zeros(1,n1);
s22=zeros(1,n2);
s23=zeros(1,n3);


s31=zeros(1,n1);
s32=zeros(1,n2);
s33=zeros(1,n3);


s41=zeros(1,n1);
s42=zeros(1,n2);
s43=zeros(1,n3);


for i=1:2500:n1
    
    if(i<n1)
    s11(i:i+2499)=randi([-1,1],1);
    while(s11(1,i)==0)
        s11(1,i)=randi([-1,1],1);
    end
    end
end

for i=1:250:n2
    if(i<n2)
    s12(i:i+249)=randi([-1,1],1);
    while(s12(1,i)==0)
        s12(1,i)=randi([-1,1],1);
    end
    end
end

for i=1:25:n3
    if(i<n3)
    s13(i:i+24)=randi([-1,1],1);
    while(s13(1,i)==0)
        s13(1,i)=randi([-1,1],1);
    end
    end
end




for i=1:2500:n1
    if(i<n1)
    s21(i:i+2499)=randi([-3,3],1);
    while(s21(1,i)==0 || s21(1,i)==-2 || s21(1,i)==2)
        s21(1,i)=randi([-3,3],1);
    end
    end
end

for i=1:250:n2
    if(i<n2)
    s22(i:i+249)=randi([-3,3],1);
    while(s22(1,i)==0 || s22(1,i)==-2 || s22(1,i)==2)
        s22(1,i)=randi([-3,3],1);
    end
    end
end

for i=1:25:n3
    if(i<n3)
    s23(i:i+24)=randi([-3,3],1);
    while(s23(1,i)==0 || s23(1,i)==-2 || s23(1,i)==2)
        s23(1,i)=randi([-3,3],1);
    end
    end
end




for i=1:2500:n1
    if(i<n1)
    s31(i:i+2499)=randi([-5,5],1);
    while(s31(1,i)==0 || s31(1,i)==-2 || s31(1,i)==2 || s31(1,i)==4|| s31(1,i)==-4)
        s31(1,i)=randi([-5,5],1);
    end
    end
end

for i=1:250:n2
    if(i<n2)
    s32(i:i+249)=randi([-5,5],1);
    while(s32(1,i)==0 || s32(1,i)==-2 || s32(1,i)==2 || s32(1,i)==4 || s32(1,i)==-4)
        s32(1,i)=randi([-5,5],1);
    end
    end
end


for i=1:25:n3
    if(i<n3)
    s33(i:i+24)=randi([-5,5],1);
    while(s33(1,i)==0 || s33(1,i)==-2 || s33(1,i)==2 || s33(1,i)==4 || s33(1,i)==-4)
        s33(1,i)=randi([-5,5],1);
    end
    end
end

for i=1:2500:n1
    if(i<n1)
    s41(i:i+2499)=randi([-7,7],1);
    while(s41(1,i)==0 || s41(1,i)==-2 || s41(1,i)==2 || s41(1,i)==4|| s41(1,i)==-4 || s41(1,i)==6 || s41(1,i)==-6)
        s41(1,i)=randi([-7,7],1);
    end
    end
end

for i=1:250:n2
    if(i<n2)
    s42(i:i+249)=randi([-7,7],1);
    while(s42(1,i)==0 || s42(1,i)==-2 || s42(1,i)==2 || s42(1,i)==4 || s42(1,i)==-4 || s42(1,i)==6 || s42(1,i)==-6)
        s42(1,i)=randi([-7,7],1);
    end
    end
end

for i=1:25:n3
    if(i<n3)
    s43(i:i+24)=randi([-7,7],1);
    while(s43(1,i)==0 || s43(1,i)==-2 || s43(1,i)==2 || s43(1,i)==4 || s43(1,i)==-4 || s43(1,i)==6 || s43(1,i)==-6)
        s43(1,i)=randi([-7,7],1);
    end
    end
end

figure (1)
subplot(3,1,1),plot(t1,s11),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 1 cu o rezolutie de 0.1ms')
subplot(3,1,2),plot(t2,s12),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 1 cu o rezolutie de 1ms')
subplot(3,1,3),plot(t3,s13),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 1 cu o rezolutie de 10ms')
figure(2)
subplot(3,1,1),plot(t1,s21),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 2 cu o rezolutie de 0.1ms')
subplot(3,1,2),plot(t2,s22),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 2 cu o rezolutie de 1ms')
subplot(3,1,3),plot(t3,s23),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 2 cu o rezolutie de 10ms')
figure(3)
subplot(3,1,1),plot(t1,s31),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 3 cu o rezolutie de 0.1ms')
subplot(3,1,2),plot(t2,s32),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 3 cu o rezolutie de 1ms')
subplot(3,1,3),plot(t3,s33),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 3 cu o rezolutie de 10ms')
figure(4)
subplot(3,1,1),plot(t1,s41),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 4 cu o rezolutie de 0.1ms')
subplot(3,1,2),plot(t2,s42),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 4 cu o rezolutie de 1ms')
subplot(3,1,3),plot(t3,s43),xlabel('Timp [s]'),grid,title('Dependenta impulsului aleator 4 cu o rezolutie de 10ms')