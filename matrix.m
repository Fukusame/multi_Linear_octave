X = [
10 20 15;
9 19 14;
8 18 13; 
7 17 12;
6 16 11;
5 15 10;
4 14 9;
3 13 8;
2 12 7;
];
y = [
2.36*10^12;
2.20*10^12;
2.04*10^12;
1.88*10^12;
1.73*10^12;
1.57*10^12;
1.41*10^12;
1.26*10^12;
1.10*10^12;
];
m = length(y);
[X mu sigma] = featureNormalize(X);
X = [ones(m, 1) X];
alpha = 0.00001;
num_iters = 2000;
theta = zeros(4, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
theta
clear