function ploterrs_eig(AX_h, b)
epsilon = ploterrs(AX_h, b); hold on

cx = zeros(size(epsilon));
for i = 1:length(epsilon)
  [A,X] = AX_h(epsilon(i));
  cx(i) = cond(X);
end

loglog(1./epsilon, cx, 'm;condition of X;');

hold off
