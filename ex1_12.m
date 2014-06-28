%Initializing
vct=[0 1 0];
for(q=1:1:4)
	vct(1)=vct(1)+vct(2);
	vct(3)=vct(3)+(vct(2)/vct(1));
end

%Printing the results
fprintf('a: %f\nx: %f\n',vct(1),vct(3));

