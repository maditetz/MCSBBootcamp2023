% How much caffeine is there in the jar?

% n - number of days
% x - fraction of caffeinated 

nMax = 500; % max number of days to simulate
% rArray = [2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2, 3.3];
% rMax = numel(rArray);

%N = 10; % number of scoops in each jar
x = zeros(1,nMax); % population output, initialized
x(1) = 0.2; % initial fraction caffeinated
r= 2.3;
K= 0.6;

Inf=1000;
R= 3*(1:Inf)/Inf;

figure
    ylabel('Population Number');
    xlabel('Growth Rate');
    hold on
   for rnot=R
       r=rnot;
       x= zeros(1,nMax); % population output, initialized
       x(1) = 0.2;
    for n=2:nMax
        x(n) = x(n-1) + r*(1-x(n-1)/K)*(x(n-1));
        %x(n) = (1-1/N) * x(n-1);
        %x(n) = x(n-1) - 1/N*x(n-1);
    end
    xplot = x((nMax-99):nMax)
    v = r*ones(1,100);
    scatter(v, xplot);
    hold on;
end % finished loop through growht rates

% THE MODEL ^
% ------------------------------------------
% THE BEHAVIOR / THE OUTPUT ? 

% figure(1); 
% hold on
% plot(x,'-ok');
% plot(r)
% ylabel('Population Number')
% xlabel('Growth Rate')
