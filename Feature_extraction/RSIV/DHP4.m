function V=DHP4(V1)
len_V1=length(V1);%length of sequence

%classify amino acids into 4 groups based on DHP
V2=zeros(1,len_V1);
for i=1:len_V1
    if (V1(i)=='P' || V1(i)=='A'|| V1(i)=='L' ||V1(i)=='V'  || V1(i)=='I' || V1(i)=='F' || V1(i)=='W'  || V1(i)=='M' )
            V2(i)='A';
        elseif(V1(i)=='Q'  || V1(i)=='S' || V1(i)=='T'||V1(i)=='Y'||V1(i)=='C'||V1(i)=='N'||V1(i)=='G')
           V2(i)='B';
        elseif(V1(i)=='H' ||V1(i)=='K'||V1(i)=='R'  )
           V2(i)='C';
        elseif (V1(i)=='D'||V1(i)=='E')
            V2(i)='D';       
    end
end
%count occurrences of character
%A
aa=0;
for i=1:len_V1
    if( V2(i)=='A')
        aa=aa+1;
    end
end
%B
bb=0;
for i=1:len_V1
    if(V2(i)=='B')
        bb=bb+1;
    end
end
%C
cc=0;
for i=1:len_V1
    if( V2(i)=='C')
        cc=cc+1;
    end
end
%D
dd=0;
for i=1:len_V1
    if( V2(i)=='D')
        dd=dd+1;
    end
end


%count occurrences of 20 amino acids
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
a=0;
for i=1:len_V1
    if(V1(i)=='A')
        a=a+1;
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
c=0;
for i=1:len_V1
    if(V1(i)=='C')
        c=c+1;
    end
end

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
%AD
a4=0;
for i=1:len_V1-1
    if(V2(i)=='A'&&V2(i+1)=='D')
        a4=a4+1;
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
%BD
b4=0;
for i=1:len_V1-1
    if(V2(i)=='B'&&V2(i+1)=='D')
        b4=b4+1;
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
%CD
c4=0;
for i=1:len_V1-1
    if(V2(i)=='C'&&V2(i+1)=='D')
        c4=c4+1;
    end
end

%DA
d1=0;
for i=1:len_V1-1
    if(V2(i)=='D'&&V2(i+1)=='A')
        d1=d1+1;
    end
end
%DB
d2=0;
for i=1:len_V1-1
    if(V2(i)=='D'&&V2(i+1)=='B')
        d2=d2+1;
    end
end
%DC
d3=0;
for i=1:len_V1-1
    if(V2(i)=='D'&&V2(i+1)=='C')
        d3=d3+1;
    end
end
%DD
d4=0;
for i=1:len_V1-1
    if(V2(i)=='D'&&V2(i+1)=='D')
        d4=d4+1;
    end
end



%construct vector
V3=zeros(1,4);  
V3(1)=aa/len_V1;
V3(2)=bb/len_V1;
V3(3)=cc/len_V1;
V3(4)=dd/len_V1;


V4=zeros(1,20); 
V4(1)=p/max(1,aa);
V4(2)=a/max(1,aa);
V4(3)=l/max(1,aa);
V4(4)=v/max(1,aa);
V4(5)=u/max(1,aa);
V4(6)=f/max(1,aa);
V4(7)=w/max(1,aa);
V4(8)=m/max(1,aa);
V4(9)=q/max(1,bb);
V4(10)=s/max(1,bb);
V4(11)=t/max(1,bb);
V4(12)=y/max(1,bb);
V4(13)=c/max(1,bb);
V4(14)=n/max(1,bb);
V4(15)=g/max(1,bb);
V4(16)=k/max(1,cc);
V4(17)=r/max(1,cc);
V4(18)=h/max(1,cc);
V4(19)=d/max(1,dd);
V4(20)=e/max(1,dd);

V5=zeros(1,16);   
V5(1)=a1/max(1,aa);
V5(2)=a2/max(1,aa);
V5(3)=a3/max(1,aa);
V5(4)=a4/max(1,aa);
V5(5)=b1/max(1,bb);
V5(6)=b2/max(1,bb);
V5(7)=b3/max(1,bb);
V5(8)=b4/max(1,bb);
V5(9)=c1/max(1,cc);
V5(10)=c2/max(1,cc);
V5(11)=c3/max(1,cc);
V5(12)=c4/max(1,cc);
V5(13)=d1/max(1,dd);
V5(14)=d2/max(1,dd);
V5(15)=d3/max(1,dd);
V5(16)=d4/max(1,dd);



A=zeros(1,len_V1);%CMV
B=zeros(1,len_V1);
C=zeros(1,len_V1);
D=zeros(1,len_V1);
for i=1:len_V1
    if V2(i)=='A'
        A(i)=i;
    elseif V2(i)=='B'
        B(i)=i ;
    elseif V2(i)=='C'
         C(i)=i;
    elseif V2(i)=='D'
        D(i)=i ;
    end
end

AA=sum(A);
BB=sum(B);
CC=sum(C);
DD=sum(D);
n=len_V1*(len_V1-1);
V6=[AA/n,BB/n,CC/n,DD/n];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% V=[V3,V4,V5,V6];
% V=[V3,V4,V5];
V=[V4,V5];

end