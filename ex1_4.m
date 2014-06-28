iGal=2;
iPint=4;

%In Gallons
inGals = iGal + iPint/8;
inPints = iGal*8 + iPint;
inLiters = inPints * (1/1.76);

%Printing the results
fprintf('In Gallons: %f\n',inGals);
fprintf('In Pints: %f\n',inPints);
fprintf('In Liters: %f\n',inLiters);
