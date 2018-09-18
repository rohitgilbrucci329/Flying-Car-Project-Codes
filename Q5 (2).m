x=[27.08*60:25:31.25*60]

y=[791 856 978 1050 1262 1544 1650 2532 6122 8170 11560]

x1 = linspace(27.08*60,31.25*60);

p=polyfit(x,y,10);
y1=polyval(p,x1);

plot(x,y,'o')
hold on

plot(x,y);
hold on

plot(x1,y1);


