/* File: assignment_problem.pl
   Purpose: Solves the book bag assignment problem
 */

use_module(library(clpfd)).

go([S1, S2], [B1, B2], []) :-

  member(S1, [B1, B2]),
  member(S2, [B1, B2]),

  all_different([S1, S2]),
  write("S1 = "),
  write(S1),
  nl,
  write("S2 = "),
  write(S2).
