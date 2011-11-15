function plots
makeplot(@svdm, svdv, @ploterrs, 'fig_svd.eps')
makeplot(@vanderm, vanderv, @ploterrs, 'fig_vander.eps')
makeplot(@eigm, eigv, @ploterrs_eig, 'fig_eig.eps')

function makeplot(A_h, b, pe, fn)
pe(A_h, b);
print(fn, "-tight", "-color", "-S500,300")
