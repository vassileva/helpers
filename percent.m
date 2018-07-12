function V = percent(A, B, varargin)
% Element-wise percentage B of A.
% eg. What percent of A(1) is B(1).
%, varargin = round to which decimal point (must be a real, whole and positive number)
% avassileva 2018

if ~any([isreal(varargin{1}), rem(varargin{1},1)~=0, varargin{1}<0, varargin{1}==0])
    error('Decimal point number should be real, whole and positive.')
end

V = round(1-B./A, 2); 
