function plots
makeplot(@svdm, svdv, @ploterrs, 'fig_svd.eps')
makeplot(@vanderm, vanderv, @ploterrs, 'fig_vander.eps')
makeplot(@(epsilon) eigm(epsilon,4), eigv, @ploterrs_eig, 'fig_eig.eps')
makeplot(@(epsilon) eigm(epsilon,100), eigv, @ploterrs_eig, 'fig_eig100.eps')

function makeplot(A_h, b, pe, fn)
pe(A_h, b);
print(fn, '-tight', '-color', '-S500,350')
