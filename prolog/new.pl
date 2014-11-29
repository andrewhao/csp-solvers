use_module(library(clpfd)).

 %% type go(200, Answer) to run the program. 200 is the highest side 
 %% length it will look for. 

go(Top, [L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,
         L15,L16,L17,L18,L19,L20,L21,L22,L23,L24,L25]) :-

    %% /* Start the timer */
    %% statistics(runtime,_),

    %% Domains
    numList(1, Top, maxRange),
    member(L1, maxRange),
    member(L2, maxRange),
    member(L3, maxRange),
    member(L4, maxRange),
    member(L5, maxRange),
    member(L6, maxRange),
    member(L7, maxRange),
    member(L8, maxRange),
    member(L9, maxRange),
    member(L10, maxRange),
    member(L11, maxRange),
    member(L12, maxRange),
    member(L13, maxRange),
    member(L14, maxRange),
    member(L15, maxRange),
    member(L16, maxRange),
    member(L17, maxRange),
    member(L18, maxRange),
    member(L19, maxRange),
    member(L20, maxRange),
    member(L21, maxRange),
    member(L22, maxRange),
    member(L23, maxRange),
    member(L24, maxRange),
    member(L25, maxRange),

    /* Ordering */
    L1 #< L2, L2 #< L3, L3 #< L4, L4 #< L5, L5 #< L6, L6 #< L7, 
    L7 #< L8, L8 #< L9, L9 #< L10, L10 #< L11, L11 #< L12, L12 #< L13, 
    L13 #< L14, L14 #< L15, L15 #< L16, L16 #< L17, L17 #< L18, 
    L18 #< L19, L19 #< L20, L20 #< L21, L21 #< L22, L22 #< L23, 
    L23 #< L24, L24 #< L25,

    all_different([L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,
       L15,L16,L17,L18,L19,L20,L21,L22,L23,L24,L25]),

    /* Sum of Squares Constraint */
    L1*L1 + L2*L2 + L3*L3 + L4*L4 + L5*L5 + L6*L6 + L7*L7 + L8*L8 + 
    L9*L9 + L10*L10 + L11*L11 + L12*L12 + L13*L13 + L14*L14 + L15*L15 + 
    L16*L16 + L17*L17 + L18*L18 + L19*L19 + L20*L20 + L21*L21 + L22*L22 + 
    L23*L23 + L24*L24 #= L25*L25,

    /* Length Constraints */
    L1 + L3 #= L4, L4 + L1 #= L5,
    L4 + L5 #= L7, L5 + L7 #= L8,
    L3 + L4 + L7 #= L9, L1 + L5 + L8 #= L11,
    L2 + L12 #= L14, L2 + L14 #= L15,
    L2 + L15 #= L16, L10 + L11 #= L17,
    L7 + L8 + L9 #= L18, L6 + L16 #= L19,
    L6 + L19 #= L20, L9 + L18 #= L21,
    L10 + L17 #= L22, L14 + L15 #= L23,
    L13 + L20 #= L24, L21 + L22 + L23 #= L25,
    L18 + L21 + L24 #= L25, L19 + L20 + L24 #= L25,
    L15 + L16 + L19 + L23 #= L25,
    
    /* Find the Answer */
    labeling([], [L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,
      L15,L16,L17,L18,L19,L20,L21,L22,L23,L24,L25]),

    /* Write the Answer */
    write('L1 = '),write(L1),nl,write('L2 = '),write(L2),nl,
    write('L3 = '),write(L3),nl,write('L4 = '),write(L4),nl,
    write('L5 = '),write(L5),nl,write('L6 = '),write(L6),nl,
    write('L7 = '),write(L7),nl,write('L8 = '),write(L8),nl,
    write('L9 = '),write(L9),nl,write('L10 = '),write(L10),nl,
    write('L11 = '),write(L11),nl,write('L12 = '),write(L12),nl,
    write('L13 = '),write(L13),nl,write('L14 = '),write(L14),nl,
    write('L15 = '),write(L15),nl,write('L16 = '),write(L16),nl,
    write('L17 = '),write(L17),nl,write('L18 = '),write(L18),nl,
    write('L19 = '),write(L19),nl,write('L20 = '),write(L20),nl,
    write('L21 = '),write(L21),nl,write('L22 = '),write(L22),nl,
    write('L23 = '),write(L23),nl,write('L24 = '),write(L24),nl,
    write('L25 = '),write(L25),nl,nl,

    /* Double check the Answer */
    LHS is L1*L1 + L2*L2 + L3*L3 + L4*L4 + L5*L5 + L6*L6 + L7*L7 + 
    L8*L8 + L9*L9 + L10*L10 + L11*L11 + L12*L12 + L13*L13 + L14*L14 + 
    L15*L15 + L16*L16 + L17*L17 + L18*L18 + L19*L19 + L20*L20 + L21*L21 + 
    L22*L22 + L23*L23 + L24*L24,

    RHS is L25*L25,
    write(LHS),nl,
    write(RHS),nl,nl,

    /* Stop the timer */
    statistics(runtime,[_,TimeTaken]),
    write(TimeTaken),nl,nl.