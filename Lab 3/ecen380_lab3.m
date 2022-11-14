%%% Lab 3 MATLAB CODE %%%


n = 10;
p = 1/2;
k = 5;

prob = binomialpdf(n,p,k)


function ans = binomialpdf (n, p, k)
% n is number of trials
% p is probability 
% k is number of possible successes

ans = nchoosek(n,k)*p^k*(1-p)^(n-k);

end