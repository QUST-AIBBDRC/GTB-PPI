function V=reduced(seq1)
seq1 = strrep(seq1,'X','');  % omit 'X'
seq1 = strrep(seq1,'Z','');  % omit 'Z'
%input sequences, output reduced sequences based on acidity
len=length(seq1);
%classify proteins into 3 groups
seq2=zeros(1,len);
for i=1:len
    if (seq1(i)=='D' || seq1(i)=='E' )
            seq2(i)='A';
        elseif(seq1(i)=='K' || seq1(i)=='H' ||seq1(i)=='R' )
           seq2(i)='K';
        elseif(seq1(i)=='A' || seq1(i)=='C' ||seq1(i)=='F' ||seq1(i)=='G' || seq1(i)=='I' ||seq1(i)=='L' ||seq1(i)=='M' || seq1(i)=='N' ||seq1(i)=='P'||seq1(i)=='Q' || seq1(i)=='S' ||seq1(i)=='T' ||seq1(i)=='V' || seq1(i)=='W' ||seq1(i)=='Y'  )
           seq2(i)='N';
    end
end
%count occurrences of A, K, and N.
%A
a=0;
for i=1:len
    if( seq2(i)=='A')
        a=a+1;
    end
end
%K
k=0;
for i=1:len
    if(seq2(i)=='K')
        k=k+1;
    end
end
%N
n=0;
for i=1:len
    if( seq2(i)=='N')
        n=n+1;
    end
end

%count occurrences of di-characters
%AA
a1=0;
for i=1:len-1
    if(seq2(i)=='A'&&seq2(i+1)=='A')
        a1=a1+1;
    end
end
%AK
a2=0;
for i=1:len-1
    if(seq2(i)=='A'&&seq2(i+1)=='K' )
        a2=a2+1;
    end
end
%AN
a3=0;
for i=1:len-1
    if(seq2(i)=='A'&&seq2(i+1)=='N')
        a3=a3+1;
    end
end

%KN
k3=0;
for i=1:len-1
    if(seq2(i)=='K'&&seq2(i+1)=='N')
        k3=k3+1;
    end
end

%KK
k1=0;
for i=1:len-1
    if(seq2(i)=='K'&&seq2(i+1)=='K')
        k1=k1+1;
    end
end
%KA
k2=0;
for i=1:len-1
    if(seq2(i)=='K'&&seq2(i+1)=='A')
        k2=k2+1;
    end
end
%NN
n1=0;
for i=1:len-1
    if(seq2(i)=='N'&&seq2(i+1)=='N')
        n1=n1+1;
    end
end
%NA
n2=0;
for i=1:len-1
    if(seq2(i)=='N'&&seq2(i+1)=='A' )
        n2=n2+1;
    end
end
%NK
n3=0;
for i=1:len-1
    if(seq2(i)=='N'&&seq2(i+1)=='K')
        n3=n3+1;
    end
end

%count occurrences of 20 amino acids 
%R
r=0;
for i=1:len
    if(seq1(i)=='R')
        r=r+1;
    end
end

%D
d=0;
for i=1:len
    if(seq1(i)=='D')
        d=d+1;
    end
end
%E
e=0;
for i=1:len
    if(seq1(i)=='E')
        e=e+1;
    end
end
%N
nn=0;
for i=1:len
    if(seq1(i)=='N')
        nn=nn+1;
    end
end
%Q
q=0;
for i=1:len
    if(seq1(i)=='Q')
        q=q+1;
    end
end
%K
kk=0;
for i=1:len
    if(seq1(i)=='K')
        kk=kk+1;
    end
end
%H
h=0;
for i=1:len
    if(seq1(i)=='H')
        h=h+1;
    end
end
%L
l=0;
for i=1:len
    if(seq1(i)=='L')
        l=l+1;
    end
end
%I
u=0;
for i=1:len
    if(seq1(i)=='I')
        u=u+1;
    end
end
%V
v=0;
for i=1:len
    if(seq1(i)=='V')
        v=v+1;
    end
end
%A
aa=0;
for i=1:len
    if(seq1(i)=='A')
        aa=aa+1;
    end
end
%M
m=0;
for i=1:len
    if(seq1(i)=='M')
        m=m+1;
    end
end
%F
f=0;
for i=1:len
    if(seq1(i)=='F')
        f=f+1;
    end
end
%S
s=0;
for i=1:len
    if(seq1(i)=='S')
        s=s+1;
    end
end
%Y
y=0;
for i=1:len
    if(seq1(i)=='Y')
        y=y+1;
    end
end
%T
t=0;
for i=1:len
    if(seq1(i)=='T')
        t=t+1;
    end
end
%W
w=0;
for i=1:len
    if(seq1(i)=='W')
        w=w+1;
    end
end
%P
p=0;
for i=1:len
    if(seq1(i)=='P')
        p=p+1;
    end
end
%G
g=0;
for i=1:len
    if(seq1(i)=='G')
        g=g+1;
    end
end
%C
c=0;
for i=1:len
    if(seq1(i)=='C')
        c=c+1;
    end
end



%construct vector
V1=zeros(1,3);
V1(1)=a/len;
V1(2)=k/len;
V1(3)=n/len;
%%%%%%%%%%%%%%%%%%%
V3=zeros(1,20);
V3(1)=d/max(1,a);
V3(2)=e/max(1,a);
V3(3)=kk/max(1,k);
V3(4)=h/max(1,k);
V3(5)=r/max(1,k);
V3(6)=aa/max(1,n);
V3(7)=c/max(1,n);
V3(8)=f/max(1,n);
V3(9)=g/max(1,n);
V3(10)=u/max(1,n);
V3(11)=l/max(1,n);
V3(12)=m/max(1,n);
V3(13)=nn/max(1,n);
V3(14)=p/max(1,n);
V3(15)=q/max(1,n);
V3(16)=s/max(1,n);
V3(17)=t/max(1,n);
V3(18)=v/max(1,n);
V3(19)=w/max(1,n);
V3(20)=y/max(1,n);
%construct vector   
V4=zeros(1,9);
V4(1)=a1/(a+1);
V4(2)=a2/(a+1);
V4(3)=a3/(a+1);
V4(4)=k1/(k+1);
V4(5)=k2/(k+1);
V4(6)=k3/(k+1);
V4(7)=n1/(n+1);
V4(8)=n2/(n+1);
V4(9)=n3/(n+1);



% V=[V1,V3,V4];%
V=[V3,V4];%

end