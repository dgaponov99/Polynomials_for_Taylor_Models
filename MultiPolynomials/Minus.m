function p = Minus(p1, p2)
    coefs1 = p1.coefs;
    keys1 = coefs1.keys;
    coefs2 = p2.coefs;
    keys2 = coefs2.keys();
    
    newValues = zeros(1,length(keys2));
    coefs = containers.Map;
    
    k = 0;
    commonKey = 0;
    for i = 1:length(keys2)
        key = keys2{i};
        if coefs1.isKey(key)
            commonKey = commonKey + 1;
            s = Coef(p1,key) - Coef(p2, key);
            if s ~= 0
                k = k + 1;
                newValues(k) = s;
                coefs(key) = k;
            end
        else
            k = k + 1;
            newValues(k) = -Coef(p2, key);
            coefs(key) = k;
        end
    end
    
    if (k + length(keys1) - commonKey) < length(keys2)
        newValues = newValues(1:k + length(keys1) - commonKey);
    else
        newValues = [newValues zeros(1,length(keys1) - commonKey - length(keys2) + k)];
    end
    for i = 1:length(keys1)
        key = keys1{i};
        if ~coefs2.isKey(key)
            k = k + 1;
            newValues(k) = Coef(p1, key);
            coefs(key) = k;
        end
    end
    p1.coefs = coefs;
    p1.values = newValues;
    p = p1;
end