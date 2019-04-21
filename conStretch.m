function stretched = conStretch(g)
[M,N] = size(g);

ma = max(g(:));
mi = min(g(:));
out = (zeros(M,N));
out=double(g);
out = out-double(mi);
out=out.*255;
div = double(ones(M,N));
div = double((ma-mi)).*div;
out=out./div;
stretched=out