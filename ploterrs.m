function h = ploterrs(A_h, b)
h = 2.^-(1:40);
e = zeros(size(h));
c = zeros(size(h));

for i = 1:length(h)
  e(i) = errsolve(A_h(h(i)), b);
  c(i) = cond(A_h(h(i)));
end

loglog(1./h, e, 'r;error;'); hold on
loglog(1./h, c, 'g;condition;');
xlabel '1/h'
hold off
