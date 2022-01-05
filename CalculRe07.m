%Pour x = 0.7 : 
e = 0.0674;

data = load("superline07.txt");

uj = data(51,2);

y = data(:,1);
u = data(:,2);

Ret= zeros(51);

for i=1:50
    Ret(i) = 10*(e/y(i))^2*(acosh(2*(uj./u(i))-1))^2
end


plot(y,Ret)
ylabel('Reynolds turbulent')
xlabel('Y')