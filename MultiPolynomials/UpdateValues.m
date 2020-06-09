function p = UpdateValues(p)
    keys = p.coefs.keys();
    values = zeros(1, length(keys));
    for i = 1:length(keys)
        values(i) = Coef(p, keys{i});
    end
    p.values = values;
    p.coefs = containers.Map(keys, 1:length(keys));
end
