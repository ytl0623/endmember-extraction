function result=PPI(purdue)

    [ h, w, bands ] = size(purdue);
    purdue = reshape(purdue, h*w, bands);
    
	
	
    iterative = 1000;    
    endmembersCalculation = zeros(1, size(purdue, 1));
    dotValue = zeros(1, size(purdue, 1));
	
    for i = 1:iterative
        rand = random('normal', 0, 1, 1, size(purdue,2));
        for j =1:size(purdue, 1) 
            dotValue(j) = dot(purdue(j, :), rand);
        end
        [MaxValue,Location] = max(dotValue);
        endmembersCalculation(1, Location) = endmembersCalculation(1, Location)+ 1; 
         
        c = clock;
        fprintf('Calculate: %d/%d %02d:%02d:%02d\n',...
        i,iterative,c(4),c(5),floor(c(6)));
    end
    
    [sortValue,sortIndex] = sort(endmembersCalculation,'descend');
    Endmembers = zeros(20,202);
	row = zeros(20,1);
    col = zeros(20,1);
	
    for i = 1:20
        Endmembers(i, :) = purdue(sortIndex(i), :);
		row(i,1) = sortIndex(i) / 145;
        col(i,1) = mod(sortIndex(i),145);
    end
    result = [Endmembers, row, col];
end