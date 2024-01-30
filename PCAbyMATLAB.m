function result = PCAbyMATLAB( purdue )
    [ h, w, bands ] = size( purdue ) ;
    purdueReshape = reshape( purdue, h*w, bands ) ;
    [ COEFF, SCORE, latent ] = pca( purdueReshape ) ;
    PCAbyMATLABImg = reshape( ( purdueReshape * COEFF( :, 1 ) ), h, w ) ;
    result = PCAbyMATLABImg ;
end