%Exercise 5 - Q5
format shortg
%Given Constants
Tc = 304.2 ; Pc = 7.376/0.101325; omega = 0.225;
R = 0.0821;

%Generated data
%P=200;
%Calc
V=[];
for T = 200:100:1200
    Tr = T/Tc;
    B0 = 0.083 + 0.422/(Tr.^1.6);
    B1 = 0.139 - (0.172/(Tr.^4.2));
    B = (B0 + omega*B1) * R * Tc / Pc;
    
    tempV = [];
    for P=1:50:200
        funct = @(V) R * T * (1/V + B/V.^2) - P;
        res = fsolve(funct, 0.5);
        if(res < 0)
            tempV(end + 1) = fzero(funct,0.5);
        else
            tempV(end + 1) = res;
        end
        %fprintf('For T: %f P: %f V:%f\n',T,P,V(end));
    end
    %disp(tempV);
    V = [ V ; tempV];
end

P = 1:50:200;
T = 200:100:1200;
disp(V);
surf(P,T,V);

