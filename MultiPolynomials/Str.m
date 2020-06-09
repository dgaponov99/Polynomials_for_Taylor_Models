function s = Str(p)
    keys = p.coefs.keys();
    dimX = p.dimX;
    x0 = p.x0;
    s = "";
    for i = 1:length(keys)
        c = Coef(p, keys{i});
        s = strcat(s, " + ", num2str(c));
        key = str2num(keys{i}); %#ok<ST2NM>
        for j = 1:dimX
            if key(j) ~= 0
                s = strcat(s, "(x", num2str(j));
                if x0(j) ~=0
                    s = strcat(s, " - ", num2str(x0(j)));
                end
                s = strcat(s, ")");
                if key(j) ~= 1
                    s = strcat(s, "^", num2str(key(j)));
                end
            end
        end
    end
end