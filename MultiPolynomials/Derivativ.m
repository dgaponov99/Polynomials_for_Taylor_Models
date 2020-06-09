function p = Derivativ(p1, order)
    keys = conv2num(p1.coefs.keys);
    values = [];
    coefs = containers.Map;
    for i = 1:length(keys)
        newKey = keys{i} - order;
        if min(newKey)>=0
            
        end
    end
end

function c = getMultiplier(degree, order)
    c = 1;
    for i = 1:max(oerder)
        for j = length(degree)
            degree(j) = degree(j) - 1;
            if degree(j) > order(j)
                
        end
    end
end