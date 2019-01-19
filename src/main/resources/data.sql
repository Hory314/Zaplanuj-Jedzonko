INSERT INTO scrumlabspring.admins (id, email, enable, first_name, last_name, password, super_admin) VALUES (2, 'demo@demo.pl', true, 'Jan', 'Kowalski', '$2a$10$VQIsWC5vDAncqcLchqXmsO.f1oE8KcAiYk4IGA1Bq00RSPueo67KG', 0);

INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (1, 'poniedziałek', 1);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (2, 'wtorek', 2);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (3, 'środa', 3);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (4, 'czwartek', 4);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (5, 'piątek', 5);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (6, 'sobota', 6);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (7, 'niedziela', 7);

INSERT INTO scrumlabspring.plan (id, created, description, name, admin_id) VALUES (3, '2019-01-19 13:49:14', 'Zimowa dieta powinna dostarczać większych ilości witamin i minerałów, gdyż one stanowią tarczę chroniącą nas w walce z bakteriami i wirusami. Twój jadłospis powinien obfitować w białko i węglowodany złożone. Białka służą do budowy struktur organizmu, chronią przed uszkodzeniami i pozwalając na regenerację komórek. ', 'Dieta zimowa', 2);
INSERT INTO scrumlabspring.plan (id, created, description, name, admin_id) VALUES (4, '2019-01-19 13:49:58', 'Gdy po zimie przyroda budzi się do życia, zaczynamy odczuwać przesilenie wiosenne. Dieta uboga w witaminy i mikroelementy sprawia, że czujemy się osłabieni fizycznie i mamy problemy z koncentracją. Inne objawy przesilenia wiosennego to apatia, pogorszenie pamięci, niedokrwistość, suchość skóry, tworzenie się brzydkich zajadów, łamliwe paznokcie i wypadanie włosów. W łagodzeniu skutków wiosennego osłabienia pomocna jest odpowiednia dieta.', 'Dieta wiosenna', 2);

INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (9, '2019-01-19 13:43:59', 'KREWETKI SMAŻONE Z KASZĄ GRYCZANĄ I WARZYWAMI', 'ok. 125 g krewetek,100 g (1 woreczek) kaszy gryczanej,1 por,1/2 cukinii,1/2 czerwonej papryki,2 ząbki czosnku', 'KREWETKI SMAŻONE', 'Krewetki rozmrozić i oczyścić, opłukać i osuszyć.
Kaszę gryczaną ugotować zgodnie z instrukcją na opakowaniu, wysypać na talerz.
Odciąć zielone liście pora. Białą część przekroić wzdłuż na pół i dokładnie opłukać. Pokroić jeszcze na mniejsze kawałeczki.
Czosnek obrać i zetrzeć na drobnej tarce.
Na patelnię wlać łyżkę oliwy, włożyć krewetki z połową czosnku, krótko obsmażać z każdej strony po około pół minuty. Doprawić solą i pieprzem, odłożyć na talerz.
Na tę samą patelnię wlać dodatkową łyżkę oliwy, włożyć pora i mieszając dusić przez ok. 3 minuty.
Dodać pokrojoną w kosteczkę cukinię oraz paprykę, wymieszać i smażyć przez ok. 5 minut. Pod koniec dodać resztę czosnku, doprawić solą, pieprzem i ostrą papryką.
Dodać kaszę, wymieszać i smażyć przez 2 minuty, dodać krewetki i natkę pietruszki, wymieszać i podgrzewać razem przez ok. 1 minutę.', 45, null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (10, '2019-01-19 13:45:41', 'Kurczak z warzywami - lekkie danie z filetów kurczaka gotowanych w sosie z papryką i cukinią.', '2 pojedyncze filety z kurczaka (ok. 500 g),1 mała cukinia,1 czerwona papryka,1 żółta papryka,1 cebula,1 ząbek czosnku,1 łyżeczka koncentratu pomidorowego', 'KURCZAK Z WARZYWAMI', 'Filety oczyścić z kostek i błonek, pokroić wzdłuż na mniejsze porcje (każdy filet na 3 części). Doprawić solą i pieprzem.
Cukinię i papryki pokroić w kostkę. Cebulę w piórka. Czosnek obrać i zetrzeć.
W większym garnku na łyżce oliwy poddusić cebulę, następnie dodać cukinię i papryki. Smażyć co chwilę mieszając przez ok. 5 minut. Odłożyć na talerz.
Do tego samego garnka wlać dodatkową łyżkę oliwy i obsmażyć kurczaka z każdej strony, w sumie przez ok. 8 minut.
Dodać masło, starty czosnek oraz odłożone warzywa. Doprawić solą, pieprzem, oregano i ostrą papryczką. Wymieszać i podgrzać.
Wlać gorący bulion i zagotować. Przykryć i dusić przez ok. 15 minut aż mięso będzie miękkie i będzie się cząstkować.
Pod koniec dodać pokrojone pomidorki koktajlowe jeśli ich używamy oraz natkę i koncentrat pomidorowy.
Zagęścić obydwiema mąkami wsypywanymi do wywaru bezpośrednio przez sitko. Wymieszać i pogotować jeszcze 1 minutę.', 40, null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (11, '2019-01-19 13:46:51', 'SZAKSZUKA Z FETĄ I HUMMUSEM.
Jajka gotowane w pomidorach z dodatkiem fety i grzanek z hummusem', '1 łyżka oliwy,1 ząbek czosnku,1/2 cebuli,1 łyżka masła,1 puszka krojonych pomidorów,2 - 3 jajka,ok. 1/3 łyżeczki ostrej papryki,80 g sera feta', 'SZAKSZUKA', 'Na patelni na oliwie zeszklić pokrojoną w kosteczkę cebulę. Dodać starty czosnek i chwilę razem podsmażyć.
Dodać masło oraz pomidory wraz z zalewą (jeśli pomidory są w całości to można je posiekać), doprawić solą, pieprzem, papryką, wymieszać i gotować ok. 7 minut na większym ogniu aż pomidory odparują.
Wbić jajka i gotować bez przykrycia aż białka będą ścięte ale żółtka będą jeszcze miękkie lub płynne (jak lubimy), przez ok. 3 - 4 minuty. Można też na trochę przykryć patelnię pokrywą aby jajka szybciej się ugotowały. Posypać pokrojoną fetą.
Podawać z pieczywem posmarowanym HUMMUSEM oraz opcjonalnie posypanym chili lub czarnuszką lub zielonymi oliwkami pokrojonymi na plasterki.', 35, null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (14, '2019-01-19 13:48:18', 'ŁOSOŚ PIECZONY NA RYŻU. Z pomidorkami koktajlowymi i cytryną', '600 g filetu łososia,1 łyżeczka miodu lub syropu klonowego,2 łyżki sosu sojowego,4 łyżki oliwy extra vergine,4 plasterki cytryny + 2 łyżki soku,200 g ryżu (np. jaśminowego),100 g pomidorków koktajlowych', 'ŁOSOŚ PIECZONY', 'Odciąć skórkę z łososia, pokroić na 4 kawałki. Opłukać, osuszyć i włożyć do miski. Doprawić solą, pieprzem, mieloną papryką i kurkumą (lub curry) oraz suszonym oregano. Dodać miód, sos sojowy, 2 łyżki oliwy oraz 2 łyżki soku z cytryny, wszystko wymieszać.
Ugotować ryż w osolonej wodzie zgodnie z instrukcją na opakowaniu. Odcedzić, następnie wysypać do formy żaroodpornej, wymieszać z 1 łyżką oliwy i rozłożyć po całej powierzchni naczynia.
Na wierzchu położyć filety łososia, obłożyć połówkami pomidorków koktajlowych, posypać chili i listkami bazylii (lub ziół lub natki).
Dodać plasterki cytryny, całość skropić pozostałą oliwą i wstawić do piekarnika nagrzanego do 200 stopni C. Piec przez 15 minut.', 65, null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (15, '2019-01-19 13:51:23', 'SAŁATKA Z PIECZONYCH BATATÓW Z CIECIERZYCĄ 
Z koprem włoskim i chili', '2 małe bataty,1/2 szklanki ugotowanej ciecierzycy (może być ze słoika lub puszki),1/2 bulwy kopru włoskiego,przyprawy: kmin rzymski, papryka w proszku ostra i słodka, suszone oregano,papryczka chili,sól, pieprz, oliwa extra vergine
roszponka lub rukola,opcjonalnie: wyłuskane nasiona granatu i świeża kolendra', 'SAŁATKA Z BATATÓW', 'Piekarnik nagrzać do 220 stopni C. Bataty umyć i pokroić wzdłuż na 4 plastry. Koper włoski opłukać i pokroić na ok. 3 mm plasterki.
Bataty doprawić solą, pieprzem i natrzeć łyżką oliwy. Ułożyć na blaszce wyłożonej papierem do pieczenia. Dodać odcedzoną ciecierzycę i plasterki kopru włoskiego, również doprawić solą, pieprzem i skropić oliwą.
Warzywa posypać kminem rzymskim, słodką i ostrą papryką oraz suszonym oregano. Wstawić do piekarnika i piec przez ok. 20 minut (220 st. C) lub do czasu aż bataty będą miękkie (wbity widelec będzie gładko wchodził w miąższ batatów).
Na półmiski wyłożyć umytą i osuszoną roszponkę lub rukolę, dodać upieczone warzywa. Posypać drobno posiekaną papryczką chili.
Opcjonalnie posypać wyłuskanymi nasionami granatu i listkami kolendry. Polać sosem (składniki wymieszać rózgą).
WSKAZÓWKI
Można też zrobić sos tahini: 1 łyżka soku z cytryny, 2 łyżki oliwy extra vergine, 1 łyżka pasty sezamowej tahini, 1 łyżka miodu lub 2 łyżki syropu klonowego, wszystko dokładnie wymieszać, doprawić solą i pieprzem.', 15, '2019-01-19 13:52:45', 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (16, '2019-01-19 13:52:32', 'ZUPA JARZYNOWA Z CUKINIĄ I SOCZEWICĄ', '1 łyżka oliwy + 1/2 łyżki masła,1 marchewka,1/2 cukinii,2 ząbki czosnku,2 litry rosołu lub bulionu drobiowego,5 łyżek czerwonej soczewicy,1 ziemniak,szczypta kurkumy,1/4 brokuła lub kalafiora,1 pomidor', 'ZUPA JARZYNOWA', 'W większym garnku umieścić oliwę i masło, podgrzać. Dodać obraną oraz startą na tarce marchewkę, pokrojoną w kostkę cukinię oraz obrany i starty na drobnej tarce czosnek. Mieszając podsmażać przez ok. 2 minuty.
Wlać gorący rosół lub bulion i zagotować. Dodać soczewicę oraz obranego i pokrojonego w kostkę ziemniaka. Doprawić solą, pieprzem i kurkumą. Przykryć i gotować przez ok. 10 minut.
Dodać obranego i pokrojonego w kostkę pomidora oraz posiekane różyczki brokuła lub kalafiora. Gotować przez ok. 5 minut. Pod koniec dodać tymianek lub koperek. Odstawić z ognia i po kilku minutach wymieszać ze śmietaną.', 20, null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation, preparation_time, updated, admin_id) VALUES (17, '2019-01-19 14:01:07', 'OWSIANKA BOUNTY Z MALINAMI', '1 szklanka płatków owsianych górskich,2 łyżki wiórków kokosowych,200 ml mleka kokosowego z puszki (lub zwykłego mleka krowiego),2 łyżki cukru,50 g czekolady mlecznej lub deserowej,maliny', 'OWSIANKA', 'Płatki owsiane wsypać do garnka i zalać większą ilością zimnej wody z kranu, wymieszać i wylać mętną wodę, powtórzyć jeszcze 2 - 3 razy aż woda będzie czysta bez resztek łusek ziarna.
Wlać świeżą wodę w ilości 1 i 1/2 szklanki, dodać wiórki kokosowe i zagotować. Zmniejszyć ogień, przykryć i gotować przez ok. 10 minut, w międzyczasie 2 - 3 razy zamieszać.
Zdjąć pokrywę, dodać mleko kokosowe oraz cukier. Wymieszać i zdjąć z ognia.
Nałożyć do miseczek, na wierzchu posypać posiekaną czekoladą i malinami.', 5, null, 2);

INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (33, 'Śniadanie', 1, 1, 3, 16);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (34, 'Obiad', 2, 1, 3, 9);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (35, 'Kolacja', 3, 1, 3, 15);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (36, 'Śniadanie', 1, 2, 3, 10);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (37, 'Obiad', 2, 2, 3, 11);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (38, 'Kolacja', 3, 2, 3, 10);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (44, 'Śniadanie', 1, 1, 4, 11);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (45, 'II śniadanie', 2, 1, 4, 10);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (46, 'Obiad', 3, 1, 4, 14);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (47, 'Podwieczorek', 4, 1, 4, 16);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (48, 'Kolacja', 5, 1, 4, 11);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (49, 'Śniadanie', 1, 2, 4, 11);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (50, 'Obiad', 2, 2, 4, 14);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (51, 'Śniadanie', 1, 3, 4, 11);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (52, 'Obiad', 2, 3, 4, 14);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (54, 'Kolacja', 3, 3, 4, 15);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (55, 'Obiad', 2, 4, 4, 14);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (56, 'Kolacja', 2, 4, 4, 17);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (57, 'Śniadanie', 1, 5, 4, 17);
INSERT INTO scrumlabspring.recipe_plan (id, meal_name, order_no, day_name_id, plan_id, recipe_id) VALUES (58, 'Kolacja', 2, 5, 4, 15);