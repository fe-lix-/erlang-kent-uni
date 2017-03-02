-module(puttingitalltogether).
-export([perimeter/1,area/1]).

perimeter({rectangle, {X,Y}, H, W}) ->
    2*H+2*W;

perimeter({circle, {X,Y}, R}) ->
    2*math:pi()*R;

perimeter({triangle, {X,Y}, {A,B}, {C,D}}) ->
    distance({X,Y}, {A,B}) + distance({A,B},{C,D}) + distance({C,D}, {X,Y}).

distance({X1,Y1}, {X2,Y2}) ->
    math:sqrt((X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2)).

area({rectangle, {X,Y}, H, W}) ->
    H*W;

area({circle, {X,Y}, R}) ->
    2*R*R;

area({triangle, {AX,AY}, {BX,BY}, {CX,CY}}) ->
    abs(AX*(BY-CY)+BX*(CY-AY)+CX*(AY-BY))/2.
