% How much caffeine is there in the jar?

% n - number of days
% x - fraction of caffeinated 

nMax = 120; % max number of days to simulate

%N = 10; % number of scoops in each jar
x = zeros(1,nMax); % population output, initialized
x(1) = 0.2; % initial fraction caffeinated
r= 2.3
K= 0.6

for n=2:nMax
    
    x(n) = x(n-1) + r*(1-x(n-1)/K)*(x(n-1)
    %x(n) = (1-1/N) * x(n-1);
    %x(n) = x(n-1) - 1/N*x(n-1);
   
end % finished loop through days

% THE MODEL ^
% ------------------------------------------
% THE BEHAVIOR / THE OUTPUT ? 

figure(1); 
plot(x,'-ok');
ylabel('fraction caffeinated')
xlabel('Days')