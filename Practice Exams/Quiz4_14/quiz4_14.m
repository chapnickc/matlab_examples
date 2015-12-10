% assuming the object starts at the ground
a = 9.81; %m/s^2
v_o = 60; %m/s
t = 0:0.1:100;
x = v_o.*t - 0.5*a.*t.^2; %

xmax = max(x);
tmax = t(find(max(x)));

%% Problem 2

% let's look at the plot
figure(2), plot(t,x), grid on, axis([0,20,-0.5e4, 0.5e4])
% okay this helps a little

interval = find(t == 10 | t == 15);
xsub = abs(x(interval(1):interval(2)) - 0);

tzero = t(find(abs(x) == min(xsub))); % when x == 0 

%%

