y=0;
j=0;
sum=0;

A=[4 9 20 28 40 51 63 71];
B=[14 31 38 84 59 67 81 91];
C=[17 54 62 64 87 93 95 99];
D=[7 34 19 60 24 73 75 78];

for a=1:1000000
    while(y<100)


    r=randi([1 6]);
    y=y+r;
     for i=1:8
    
        if y==A(i)
             y=B(i);
        end
      
        if y==C(i)
            y=D(i);
        end
    
    end

    j++;
    end
    sum=sum+j;
y=0;
j=0;
end

sum/1000000


