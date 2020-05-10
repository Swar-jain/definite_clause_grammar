%Grammar 
program --> k, [.].
k --> [begin], dL, [;], cL , [end].
dL --> d, [;], dL ; d.
d --> [].
d --> [const], i, [=], n ; [var], i.
cL --> c,[;], cL ; c.
c --> [].
c --> i, [:=], expr ;[if], b, [then], c, [else], c, [endif] ; [while], b, [do], c, [endwhile]; k. 
b --> [true]; [false] ; expr, [=], expr ; [not], b.
expr --> t, e.
e --> [].
e --> ['+'], t, e.
e --> ['-'], t, e.
t --> p, f1.
f1--> [].
f1 --> ['*'], p, f1.
f1 --> ['/'] ,p, f1.
p --> i ; n.
i --> ['x'].
i --> ['y'].
i --> ['z'].
i --> ['u'].
i --> ['v'].
n --> [0].
n --> [1].
n --> [2].
n --> [3].
n --> [4].
n --> [5].
n --> [6].
n --> [7].
n --> [8].
n --> [9].


%Parse Tree
program(t_program(X,.)) --> k(X), [.].
k(t_k(begin, X, ;, Y, end)) --> [begin], dL(X), [;], cL(Y) , [end].
dL(t_dL(X, ;, Y)) --> d(X), [;], dL(Y). 
dL(t_dL(X)) --> d(X).
d(t_d(empty)) --> [].
d(t_d(const, X, = , Y)) --> [const], i(X), [=], n(Y).
d(t_d(var, X))--> [var], i(X).
cL(t_cL(X, ;, Y)) --> c(X),[;], cL(Y).
cL(t_cL(X))--> c(X).
c(t_c(empty)) --> [].
c(t_c(X, :=, Y)) --> i(X), [:=], expr(Y).
c(t_c(if, X, then, Y, else, Z, endif)) --> [if], b(X), [then], c(Y), [else], c(Z), [endif].
c(t_c(while, X, do, Y, endwhile))--> [while], b(X), [do], c(Y), [endwhile].
c(t_c(X))--> k(X). 
b(t_true(true)) --> [true].
b(t_false(false))--> [false]. 
b(t_assign(X, =, Y))--> expr(X), [=], expr(Y).
b(t_not(not, X))-->[not], b(X).
expr(t_expr(X, Y)) --> t(X), e(Y).
e(t_e(empty)) --> [].
e(t_add(+, X, Y)) --> ['+'], t(X), e(Y).
e(t_subtract(-, X, Y)) --> ['-'], t(X), e(Y).
t(t_t(X, Y)) --> p(X), f1(Y).
f1(t_t1(empty)) --> [].
f1(t_multiply(*, X, Y)) --> ['*'], p(X), f1(Y).
f1(t_division(X,Y)) --> ['*'], p(X), f1(Y).
p(t_i(X))--> i(X). 
p(t_n(X))-->n(X).
i(t_x(x)) --> ['x'].
i(t_y(y)) --> ['y'].
i(t_z(z)) --> ['z'].
i(t_u(u)) --> ['u'].
i(t_v(v)) --> ['v'].
n(t_0(0)) --> [0].
n(t_1(1)) --> [1].
n(t_2(2)) --> [2].
n(t_3(3)) --> [3].
n(t_4(4)) --> [4].
n(t_5(5)) --> [5].
n(t_6(6)) --> [6].
n(t_7(7)) --> [7].
n(t_8(8)) --> [8].
n(t_9(9)) --> [9].





