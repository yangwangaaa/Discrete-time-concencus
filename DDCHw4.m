clear all
clc
close all

%A matrix for third problem
a3= [0 0.5 0.5 0.5 0.5 0.5;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0;
    0.5 0 0 0 0 0];

%A matrix for seventh problem
a7= [0 0.5 0 0 0 0;
    0.5 0 0.5 0 0 0;
    0 0.5 0 0.5 0 0;
    0 0 0.5 0 0.5 0;
    0 0 0 0.5 0 0.5;
    0 0 0 0 0.5 0];


%In degree matrix for third problem
d3= diag([sum(a3(1,:));sum(a3(2,:));sum(a3(3,:));sum(a3(4,:));sum(a3(5,:));sum(a3(6,:))]);
%In degree matrix for seventh problem
d7= diag([sum(a7(1,:));sum(a7(2,:));sum(a7(3,:));sum(a7(4,:));sum(a7(5,:));sum(a7(6,:))]);

%Graph aplacian matrix for third problem
l3= d3-a3;
%Graph aplacian matrix for seventh problem
l7= d7-a7;

%Random initial values for third problem
x3= (2)*rand(1,6)-1;
%Random initial values for seventh problem
x7= (2)*rand(1,6)-1;

for k=1:80
     %for third problem
     x3(k+1,:) = (eye(6)-(inv(eye(6)+d3))*l3)* x3(k,:)';
     %for seventh problem
     x7(k+1,:) = (eye(6)-(inv(eye(6)+d7))*l7)* x7(k,:)';
end

%plot for third problem
figure
plot(0:80,x3)
legend('1','2','3','4','5','6')
title('State vs. Time')
xlabel('Time');
ylabel('State');

%plot for seventh problem
figure
plot(0:80,x7)
legend('1','2','3','4','5','6')
title('State vs. Time')
xlabel('Time');
ylabel('State');
     
    