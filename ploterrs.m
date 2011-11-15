function ploterrs(A_h, b)
h = 2.^-(1:20);
e = zeros(size(h));

for i = 1:length(h)
  e(i) = errsolve(A_h(h(i)), b);
end

loglog(1./h, e);
xlabel '1/h'
ylabel 'relative error'
