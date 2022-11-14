%%% Lab 3 Task 1 MATLAB Code %%%


n = 10;
p = 1/2;
k = 5;

prob = binomialpdf(n,p,k)


function ans = binomialpdf (n, p, k)
% n is number of trials
% p is probability 
% k is number of possible successes

    ans = 0;
    
    for i = k:n
        ans = ans + nchoosek(n,i)*p^i*(1-p)^(n-i);
    end
    
end