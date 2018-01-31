clear; 
x=1:100000;
y1=2*atan(1./(x*150*1e-6));
max=0;
max_rc=0;
for rc2=800*1e-6:1e-7:1600*1e-6
    count=1;
    y2=2*atan(1./(x*rc2));
    y=y1-y2;
    for i=1:100000
        if (y(i)>=pi*85/180 && y(i)<=pi*95/180)  && (y(i+1)>=pi*85/180 && y(i)<=pi*95/180)
            count=count+1;
        else if (y(i)>=pi*85/180 && y(i)<=pi*95/180)  && (y(i+1)< pi*85/180 || y(i)>pi*95/180)
                break;
            end
        end
    end
    if count>max
        max=count;
        max_rc=rc2;
    end
end
            
