-module(third).
-export([xor1/2, xor2/2, xor3/2,
        maxThree/3, howManyEqual/3]).

xor1(true, true) ->
    false;
xor1(X, Y) ->
    X or Y.

xor2(false, false) ->
    false;
xor2(X, Y) ->
    not(X and Y).

xor3(X, X) when X == true; X == false -> false;
xor3(_, _) -> true.

maxThree(X, Y, Z) when X < Y -> max(Y,Z);
maxThree(X, Y, Z) when Y < Z -> max(X,Z);
maxThree(X, Y, Z) when Z < X -> max(X,Y).

% Not really inspired on this one!
howManyEqual(X, X, X) -> 3;
howManyEqual(X, X, _) -> 2;
howManyEqual(_, X, X) -> 2;
howManyEqual(X, _, X) -> 2;
howManyEqual(_, _, _) -> 0.
