function Xsc = scale01(X, varargin)
%% Scale X to be between 0 and 1 with respect to the min and max values in C
% Xsc = scale01(X, C);
% avassileva 2018

if ~isempty(varargin)
    C = varargin{:};
else
    C = X;
end

[~, b] = find(C>1);
b = unique(b);
for l = 1:numel(b)
    C(:,b(l)) = scaleins(X(:,b(l)));
end
Xsc = C;

function Xsc = scaleins(X, varargin)
if ~isempty(varargin)
    C = varargin{:};
else
    C = X;
end
Xsc = bsxfun(@minus, X, min(C))/...
    (max(C)-min(C));
