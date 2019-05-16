function V=Hydrophobicity(V1)
len_V1=length(V1);%the length of seqeuence
%classify amino acids into 4 groups based on Hydrophobicity
V2=zeros(1,len_V1);
for i=1:len_V1
    if (V1(i)=='R' || V1(i)=='K' ||V1(i)=='E'  || V1(i)=='D' || V1(i)=='Q' || V1(i)=='N' )
            V2(i)='A';
        elseif(V1(i)=='G' || V1(i)=='A' ||V1(i)=='S'  || V1(i)=='T' || V1(i)=='P' ||V1(i)=='H' ||V1(i)=='Y')
           V2(i)='B';
    elseif (V1(i)=='C' || V1(i)=='L' ||V1(i)=='V'  || V1(i)=='I' || V1(i)=='M' || V1(i)=='F'|| V1(i)=='W')
           V2(i)='C';
    end
end
%A
a=0;
for i=1:len_V1
    if( V2(i)=='A')
        a=a+1;
    end
end
%B
b=0;
for i=1:len_V1
    if(V2(i)=='B')
        b=b+1;
    end
end
%C
c=0;
for i=1:len_V1
    if( V2(i)=='C')
        c=c+1;
    end
end


%R
r=0;
for i=1:len_V1
    if(V1(i)=='R')
        r=r+1;
    end
end

%D
d=0;
for i=1:len_V1
    if(V1(i)=='D')
        d=d+1;
    end
end
%E
e=0;
for i=1:len_V1
    if(V1(i)=='E')
        e=e+1;
    end
end
%N
n=0;
for i=1:len_V1
    if(V1(i)=='N')
        n=n+1;
    end
end
%Q
q=0;
for i=1:len_V1
    if(V1(i)=='Q')
        q=q+1;
    end
end
%K
k=0;
for i=1:len_V1
    if(V1(i)=='K')
        k=k+1;
    end
end
%H
h=0;
for i=1:len_V1
    if(V1(i)=='H')
        h=h+1;
    end
end
%L
l=0;
for i=1:len_V1
    if(V1(i)=='L')
        l=l+1;
    end
end
%I
u=0;
for i=1:len_V1
    if(V1(i)=='I')
        u=u+1;
    end
end
%V
v=0;
for i=1:len_V1
    if(V1(i)=='V')
        v=v+1;
    end
end
%A
aa=0;
for i=1:len_V1
    if(V1(i)=='A')
        aa=aa+1;
    end
end
%M
m=0;
for i=1:len_V1
    if(V1(i)=='M')
        m=m+1;
    end
end
%F
f=0;
for i=1:len_V1
    if(V1(i)=='F')
        f=f+1;
    end
end
%S
s=0;
for i=1:len_V1
    if(V1(i)=='S')
        s=s+1;
    end
end
%Y
y=0;
for i=1:len_V1
    if(V1(i)=='Y')
        y=y+1;
    end
end
%T
t=0;
for i=1:len_V1
    if(V1(i)=='T')
        t=t+1;
    end
end
%W
w=0;
for i=1:len_V1
    if(V1(i)=='W')
        w=w+1;
    end
end
%P
p=0;
for i=1:len_V1
    if(V1(i)=='P')
        p=p+1;
    end
end
%G
g=0;
for i=1:len_V1
    if(V1(i)=='G')
        g=g+1;
    end
end
%C
cc=0;
for i=1:len_V1
    if(V1(i)=='C')
        cc=cc+1;
    end
end
%AA
a1=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='A')
        a1=a1+1;
    end
end
%AB
a2=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='B' )
        a2=a2+1;
    end
end
%AC
a3=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='C')
        a3=a3+1;
    end
end


%BA
b1=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='A')
        b1=b1+1;
    end
end
%BB
b2=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='B')
        b2=b2+1;
    end
end
%BC
b3=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='C')
        b3=b3+1;
    end
end


%CA
c1=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='A')
        c1=c1+1;
    end
end
%CB
c2=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='B')
        c2=c2+1;
    end
end
%CC
c3=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='C')
        c3=c3+1;
    end
end


%construct vectors
V3=zeros(1,3);  
V3(1)=a/len_V1;
V3(2)=b/len_V1;
V3(3)=c/len_V1;

V4=zeros(1,20); 
V4(1)=r/max(1,a);
V4(2)=k/max(1,a);
V4(3)=e/max(1,a);
V4(4)=d/max(1,a);
V4(5)=q/max(1,a);
V4(6)=n/max(1,a);
V4(7)=g/max(1,b);
V4(8)=aa/max(1,b);
V4(9)=s/max(1,b);
V4(10)=t/max(1,b);
V4(11)=p/max(1,b);
V4(12)=h/max(1,b);
V4(13)=y/max(1,b);
V4(14)=cc/max(1,c);
V4(15)=l/max(1,c);
V4(16)=v/max(1,c);
V4(17)=u/max(1,c);
V4(18)=m/max(1,c);
V4(19)=f/max(1,c);
V4(20)=w/max(1,c);

V5=zeros(1,9);   
V5(1)=a1/max(1,a);
V5(2)=a2/max(1,a);
V5(3)=a3/max(1,a);
V5(4)=b1/max(1,b);
V5(5)=b2/max(1,b);
V5(6)=b3/max(1,b);
V5(7)=c1/max(1,c);
V5(8)=c2/max(1,c);
V5(9)=c3/max(1,c);

A=zeros(1,len_V1);%CMV
B=zeros(1,len_V1);
C=zeros(1,len_V1);
for i=1:len_V1
    if V2(i)=='A'
        A(i)=i;
    elseif V2(i)=='B'
        B(i)=i ;
    elseif V2(i)=='C'
         C(i)=i;
    end
end

AA=sum(A);
BB=sum(B);
CC=sum(C);
n=len_V1*(len_V1-1);
V6=[AA/n,BB/n,CC/n];


% V=[V3,V4,V5,V6];
%V=[V3,V4,V5];
V=[V4,V5];
end