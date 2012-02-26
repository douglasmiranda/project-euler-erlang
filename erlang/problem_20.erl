% n! means n x (n - 1) x ...  3 x 2 x 1

% For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
% and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

% Find the sum of the digits in the number 100!

-module(problem_20).
-import(lists, [sum/1]).
-export([sum_of_the_digits_in_the_result_of_factorial_of_number_100/0]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N*factorial(N-1).

sum_of_the_digits_in_the_result_of_factorial_of_number_100()->
	Result = integer_to_list(trunc(factorial(100))),
	lists:sum([list_to_integer(X) || X<-re:split(Result, "", [{return, list}, trim])]).