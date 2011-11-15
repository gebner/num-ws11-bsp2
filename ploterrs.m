function epsilon = ploterrs(A_h, b)
epsilon = 2.^-(1:40);
e = zeros(size(epsilon));
c = zeros(size(epsilon));

for i = 1:length(epsilon)
  e(i) = errsolve(A_h(epsilon(i)), b);
  c(i) = cond(A_h(epsilon(i)));
end

loglog(1./epsilon, e, 'r;relative error;'); hold on
loglog(1./epsilon, c, 'b;condition;');
xlabel '1/\epsilon'
hold off
