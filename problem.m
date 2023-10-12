
%clear window
clc

%variables 
syms x ; 
% take these from user q is the initializing number and n determines
% iterations 
syms q ;
syms n ;

n = double(input("Enter the number of the iterations "));
q = double(input("Enter first guess for x value"));


nprime = 0 ;
xzero = q ; 

options = optimset('Display','iter');


while nprime < n
    fun = @(x)( cos(x)*cosh(x)- q );
    x = fzero(fun,xzero,options);
    nprime = nprime +1 ;
    xzero = x ; 
    
end;

disp("result for x -->>")
disp(x)



