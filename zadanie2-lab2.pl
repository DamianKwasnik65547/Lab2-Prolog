zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(jan, kowalski, abc_company, mala_firma, 2600).
zatrudnienie(maria, nowak, xyz_corp, srednia_firma, 2300).
zatrudnienie(piotr, nowak, mega_corp, duza_firma, 1400).
zatrudnienie(ewa, kowalska, xyz_corp, srednia_firma, 2800).
zatrudnienie(tomasz, kowalski, abc_company, mala_firma, 3000).
zadowolona(Osoba):-
    zatrudnienie(Osoba , _, _, mala_firma,Zarobki) ,Zarobki >2500.
/*?- zatrudnienie(Osoba, _, _, duza_firma, Zarobki), Zarobki < 1500*/
