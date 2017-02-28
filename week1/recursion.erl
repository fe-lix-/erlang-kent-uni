-module(recursion).
-export([fib/1,pieces/1]).

fib(0) ->
    0;
fib(1) ->
    1;
fib(N) when N > 1 ->
    fib(N-1) + fib(N-2).


pieces(1) ->
    2; 
pieces(N) when N > 1 ->
    pieces(N-1) + N.

pieces3d(1) ->
    2;
pieces3d(N) when N > 1 ->
    
