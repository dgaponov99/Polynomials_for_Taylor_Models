function p = Exp(p1, n)
    term = CreateMPoly({zeros(1, p1.dimX)}, [1], p1.x0);
    p = CreateMPoly({zeros(1, p1.dimX)}, [1], p1.x0);
    for i = 2:n
        term = Multiply(term, p1);
        term.values = term.values./(i-1);
        p = Plus(p, term);
    end
end