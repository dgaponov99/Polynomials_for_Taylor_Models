function p = Multiply(p1, p2)
    coefs1 = p1.coefs;
    keys1 = coefs1.keys;
    coefs2 = p2.coefs;
    keys2 = coefs2.keys;

    coefs = containers.Map;
    values = [];
    
    k = 0;
    for i = 1:length(keys1)
        key1 = keys1{i};
        for j = 1:length(keys2)
            key2 = keys2{j};
            newKey = num2str(str2num(key1) + str2num(key2));
            newCoef = Coef(p1, key1) * Coef(p2, key2);
            if coefs.isKey(newKey)
                newCoef = newCoef + values(coefs(newKey));
                if newCoef ~= 0
                    values(coefs(newKey)) = newCoef;
                else
                    coefs.remove(newKey);
                end
            else
                k = k + 1;
                values = [values newCoef];
                coefs(newKey) = k;
            end
        end
    end
    p1.coefs = coefs;
    p1.values = values;
    %p = UpdateValues(p1);
    p = p1;
    
end