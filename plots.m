function plots
makeplot(@svdm, svdv, @ploterrs, 'fig_svd.eps')
makeplot(@vanderm, vanderv, @ploterrs, 'fig_vander.eps')
X4=jsingm(4);
X100=jsingm(100);
makeplot(@(epsilon) eigm(epsilon,4,X4), eigv(4), @ploterrs_eig, 'fig_eig.eps')
makeplot(@(epsilon) eigm(epsilon,100,X100), eigv(100), @ploterrs_eig, 'fig_eig100.eps')

function makeplot(A_h, b, pe, fn)
pe(A_h, b);
print(fn, '-tight', '-color', '-S500,350')
