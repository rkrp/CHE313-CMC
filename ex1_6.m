num1=50;
num2=100;

%Printing before swap
fprintf('Before Swap:\n');
fprintf('Number 1: %d\n',num1);
fprintf('Number 2: %d\n\n',num2);

%Saving the difference
num2=num1-num2;

%Swapping 2 to 1
num1=num1-num2;

%Swapping 1 to 2
num2=num2+num1;

%Printing after swap
fprintf('After Swap:\n');
fprintf('Number 1: %d\n',num1);
fprintf('Number 2: %d\n',num2);
