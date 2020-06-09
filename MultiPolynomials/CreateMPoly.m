function p = CreateMPoly(map, values, x0)
    if isa(map, 'containers.Map')
        p = struct('coefs', map, 'values', values, 'dimX', length(x0), 'x0', x0);
        return
    end

    coefs = containers.Map(conv2str(map), 1:length(values));
    dimX = length(map{1});
    if nargin < 3
        x0 = zeros(dimX, 1);
    end
    p = struct('coefs', coefs, 'values', values, 'dimX', dimX, 'x0', x0);
end