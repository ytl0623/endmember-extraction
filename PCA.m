function result=PCA(purdue)
    [ h, w, bands ] = size(purdue);
    purdue = reshape(purdue, h*w, bands);
    
    cov_mat = cov(purdue);
    [V,D] = eig(cov_mat);
    [D,index] = sort(diag(D),'descend');
    plot(D,'r--x');
    xlim( [0 210] )
    ylim( [0 10000] )
    transMatrix = V(:,end);
    
    PCAImg = reshape( (purdue* transMatrix), h, w );
    result = PCAImg;
end