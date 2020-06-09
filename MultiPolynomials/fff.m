%k = 10;
%t = -0.2:0.01:0.2;
%p100 = Exp(p1, 100);
%y1 = Value(p100, [t;t]);
%y2 = exp(Value(p1, [t;t]));
%plot(t, y1, t, y2);
%Верно до 7.85
%p7 = 1 + 2(x1) + 1(x1)^2
x = -0.2:0.01:0.2;
y = -0.2:0.01:0.2;

[x,y] = meshgrid(x,y);

z1 = zeros(41,41);
z2 = zeros(41,41);

for i = 1:41
    for j = 1:41
        z1(i,j) = Value(p100, [x(i,j); y(i,j)]);
        z2(i,j) = exp(Value(p1, [x(i,j); y(i,j)]));
    end
end

plot3(x,y,z1, x,y,z2);

