function p = ChangeX0(p1, x0)
    degree = Degree(p1);
    dimX = p1.dimX;
    keys = cell(1,dimX);
    I = eye(dimX);
    for i = 1:dimX
        keys{i} = I(i,:);
    end
    diff = CreateMPoly(keys, ones(1,dimX), x0);
    Str(diff)
end