% Facts
boss(ceo, supervisor1).
boss(supervisor1, employee1).
boss(supervisor1, employee2).
boss(supervisor2, employee3).
boss(supervisor2, employee4).

company(acme_inc).
company(tech_solutions).

job(employee1, developer).
job(employee2, designer).
job(employee3, manager).
job(employee4, analyst).

friends(employee1, employee2).
friends(employee3, employee4).

team(acme_inc, [employee1, employee2]).
team(tech_solutions, [employee3, employee4]).

% Rules
colleague(X, Y) :-
    boss(Boss, X),
    boss(Boss, Y),
    X \= Y.

teammates(X, Y) :-
    team(Company, Employees),
    member(X, Employees),
    member(Y, Employees),
    X \= Y.
