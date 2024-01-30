clc ; clear ;

load( 'purdue.mat' ) ;
purdue = HIM ;

% PPI
% endmembers = PPI( purdue ) ;
% figure
% plot( transpose( endmembers ) )
% xlabel( 'Band Number' )
% ylabel( 'Pixel Value' )
% xlim( [0 210] )

% MATLAB
% endmembersbyMATLAB = ppi( purdue, 20 ) ;
% figure
% plot( endmembersbyMATLAB )
% xlabel( 'Band Number' )
% ylabel( 'Pixel Value' )
% xlim( [0 210] )

% PCA
PCAImg = PCA( purdue ) ;
% figure
% subplot( 1, 2, 1 ) ;
% imshow( PCAImg, [] ) ;
% title( 'PCA' ) ;

% MATLAB
% PCAbyMATLABImg = PCAbyMATLAB( purdue ) ;
% subplot( 1, 2, 2 )
% imshow( PCAbyMATLABImg, [] ) ;
% title( 'PCA by MATLAB' ) ;

% figure;
% imshow(PCAImg,[]);
% hold on;
% plot(endmembers(:,204),endmembers(:,203),'rx');










