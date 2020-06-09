function degree = Degree(p1)
    keys = conv2num(p1.coefs.keys());
    e = 1 + zeros(p1.dimX, 1);
    degree = 0;
    for i = 1:length(keys)
        sum = keys{i}*e;
        if sum > degree
            degree = sum;
        end
    end
end