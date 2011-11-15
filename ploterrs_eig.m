function ploterrs_eig(AX_h, b)
h = ploterrs(AX_h, b); hold on

cx = zeros(size(h));
for i = 1:length(h)
  [A,X] = AX_h(h(i));
  cx(i) = cond(X);
end

loglog(1./h, cx, 'b;condition of X;');

hold off
