function y = Value(p, x)
    sz = size(x);
    x = x-p.x0;
    keys = p.coefs.keys();
    y = zeros(1, sz(2));
    for i = 1:length(keys)
        degrees = str2num(keys{i});
        m = x.^(degrees');  
        fact = 1 + zeros(1, sz(2));
        for j = 1:sz(1)
            fact = fact .* m(j, :);
        end
        y = y + Coef(p, keys{i}).*fact;
    end
end