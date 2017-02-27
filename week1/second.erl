-module(second).
-export([rectangle_triangle_perimeter/2,rectangle_triangle_area/2]).

size_of_hypotenuse(A,B) ->
    math:sqrt(first:square(A)+first:square(B)).

rectangle_triangle_perimeter(A,B) ->
    C=size_of_hypotenuse(A,B),
    A+B+C.

rectangle_triangle_area(A,B) ->
    C=size_of_hypotenuse(A,B),
    first:area(A,B,C).
