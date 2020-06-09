function p = Diff(p1, nx)
    keys = p1.coefs.keys();
    values = [];
    k = 0;
    coefs = containers.Map;
    for i = 1:length(keys)
        key = str2num(keys{i});
        if key(nx) > 0
            k = k + 1;
            values = [values key(nx)*Coef(p1, keys{i})];
            key(nx) = key(nx) - 1;
            coefs(num2str(key)) = k;
        end
    end
    p1.coefs = coefs;
    p1.values = values;
    p = p1;
end

