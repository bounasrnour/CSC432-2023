% Facts
male(karim).
male(peter).
male(khaldoun).
male(david).
male(mark).
male(hilal).

female(karine).
female(nathalie).
female(sarah).
female(anna).
female(dana).
female(julia).

parent(karim, peter).
parent(karim, karine).
parent(karim, david).
parent(peter, khaldoun).
parent(peter, sarah).
parent(peter, anna).
parent(karine, dana).
parent(karine, hilal).
parent(david, mark).
parent(david, julia).

% Rules
father(Father, Child) :-
    male(Father),
    parent(Father, Child).

mother(Mother, Child) :-
    female(Mother),
    parent(Mother, Child).

grandfather(Grandfather, Grandchild) :-
    father(Grandfather, Parent),
    parent(Parent, Grandchild).

grandmother(Grandmother, Grandchild) :-
    mother(Grandmother, Parent),
    parent(Parent, Grandchild).

brother(Brother, Sibling) :-
    male(Brother),
    parent(Parent, Brother),
    parent(Parent, Sibling),
    Brother \= Sibling.

sister(Sister, Sibling) :-
    female(Sister),
    parent(Parent, Sister),
    parent(Parent, Sibling),
    Sister \= Sibling.

uncle(Uncle, NieceNephew) :-
    brother(Uncle, Parent),
    parent(Parent, NieceNephew).

aunt(Aunt, NieceNephew) :-
    sister(Aunt, Parent),
    parent(Parent, NieceNephew).

married(Person1, Person2) :-
    parent(Person1, Child),
    parent(Person2, Child),
    Person1 \= Person2.

love(Person1, Person2) :-
    married(Person1, Person2).

like(Person1, Person2) :-
    parent(Person2, Child),
    parent(Person1, Child),
    Person1 \= Person2.

friends(Person1, Person2) :-
    like(Person1, Person2),
    like(Person2, Person1).
