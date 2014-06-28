%Exercise 5 - Q1

%Launched as a function with the function with symbolic constants
%and the range as a vector

function ex5_1(fx, range)
    %Using fzero
    funct = matlabFunction(fx);
    res = fzero(funct, range);

    fprintf('By fzero function, computed result is x = %f\n', res);

    %Using Newton Raphson
    dfx = matlabFunction(diff(fx));
    fx = matlabFunction(fx);

    error = 1;
    res = mean(range);
    while (error > 1e-10)
        fres = fx(res);
        dfres = dfx(res);
        old_res = res;
        res = res - (fres/dfres);
        error = abs(res - old_res);
    end

    fprintf('By NR iteration, computed result is x = %f\n', res);
end



