/* File: assignment_problem.pl
   Purpose: Solves the book bag assignment problem
 */

:- use_module(library(clpfd)).

go([B1, B2, B3], [S1, S2, S3], [H1, H2, H3]) :-
  member(S1, [B1, B2, B3]),
  member(S2, [B1, B2, B3]),
  member(S3, [B1, B2, B3]),

  %% Figure out how to do negation of membership in H* history lists

  all_different([S1, S2, S3]).
