x=[1,0,0,0;1,0,0,0;2,1,0,1]
%-----------------------------------
% x =
% 
%      1     0     0     0
%      1     0     0     0
%      2     1     0     1
%------------------------------------
x(8,8)=0
%------------------------------------
% x =
% 
%      1     0     0     0     0     0     0     0
%      1     0     0     0     0     0     0     0
%      2     1     0     1     0     0     0     0
%      0     0     0     0     0     0     0     0
%      0     0     0     0     0     0     0     0
%      0     0     0     0     0     0     0     0
%      0     0     0     0     0     0     0     0
%      0     0     0     0     0     0     0     0
%-------------------------------------
X=fft2(x);
X=real(X);

for k=1:3
fprintf ('X(1+1,k)==X(2+1,k): %d\n',X(1+1,k)==X(2+1,k)),
end
% X(1+1,k)==X(2+1,k): 0
% X(1+1,k)==X(2+1,k): 0
% X(1+1,k)==X(2+1,k): 0
for k=1:4
fprintf ('X(k,0+1)==X(k,2+1): %d\n',X(k,0+1)==X(k,2+1)),
end
% X(k,0+1)==X(k,2+1): 0
% X(k,0+1)==X(k,2+1): 1
% X(k,0+1)==X(k,2+1): 0
% X(k,0+1)==X(k,2+1): 1
fprintf('\n--------------------------------\n');
fprintf('X(0,0)=%d\n',X(1,1));