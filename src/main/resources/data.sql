INSERT INTO scrumlabspring.admins (id, email, enable, first_name, last_name, password, super_admin) VALUES (1, 'asdfas@dsaf.df', true, 'asdfsa', 'asdfsa', 'sadfgrgf235324r12edqwaefg', 0);
INSERT INTO scrumlabspring.admins (id, email, enable, first_name, last_name, password, super_admin) VALUES (2, 'lol@o2.pl', true, 'Michał', 'Hordy', '$2a$10$VQIsWC5vDAncqcLchqXmsO.f1oE8KcAiYk4IGA1Bq00RSPueo67KG', 0);
INSERT INTO scrumlabspring.admins (id, email, enable, first_name, last_name, password, super_admin) VALUES (4, 'lol2@o2.pl', true, 'user2', 'nazwi2', '$2a$10$VQIsWC5vDAncqcLchqXmsO.f1oE8KcAiYk4IGA1Bq00RSPueo67KG', 0);
-- haslo: qwerty

INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (1, 'poniedzialek', 1);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (2, 'wtorek', 2);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (3, 'sroda', 3);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (4, 'czwartek', 4);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (5, 'piatek', 5);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (6, 'sobota', 6);
INSERT INTO scrumlabspring.day_name (id, name, order_no) VALUES (7, 'Niedziela', 7);

INSERT INTO scrumlabspring.plan (id, created, description, name, admin_id) VALUES (1, null, 'Super plan 1', 'Plan#1', 2);
INSERT INTO scrumlabspring.plan (id, created, description, name, admin_id) VALUES (2, null, 'Super plan 2', 'Plan#2', 2);

INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (1, null, 'wymieszac i wylac do zlewu', 'melko,chleb,mąka,masło,cukier', 'Kluski', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (2, null, 'wymieszac i wylac do zlewu', 'melko,chleb,mąka,masło,cukier', 'tosty', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (3, null, 'wymieszac i wylac do zlewu', 'melko,chleb, mąka ,masło,cukier', 'naleś', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (4, null, 'wymieszac i wylac do zlewu', 'melko,chleb,mąka,masło,cukier', 'mielone', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (5, null, 'wymieszac i wylac do zlewu', 'melko,chleb,mąka,masło ,cukier', 'schabowe', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (6, null, 'wymieszac i wylac do zlewu', 'melko,chleb,  mąka,masło,cukier', 'ruskie', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (7, null, 'wymieszac i wylac do zlewu', 'melko,chleb,mąka,masło,cukier', 'pizza', 45,  'przez ten czas zagotować wodę',null, 2);
INSERT INTO scrumlabspring.recipe (id, created, description, ingredients, name, preparation_time, preparation, updated, admin_id) VALUES (8, null, 'wymieszac i wylac do zlewu', 'melko,   chleb,mąka,masło,cukier', 'bigos', 45,  'przez teFK63fat0dik42q3xgwplrm331t9n czas zagotować wodę',null, 2);

INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie', 1, 1, 1, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie 2pl', 1, 1, 2, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 1, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 2, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obiad', 3, 5, 1, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obia 2pld', 3, 5, 2, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 7, 1, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 7, 2, 1);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie', 1, 1, 1, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie 2pl', 1, 1, 2, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 1, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 2, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obiad', 3, 5, 1, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obia 2pld', 3, 5, 2, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 7, 1, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 7, 2, 2);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie', 1, 1, 1, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie', 1, 1, 2, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 1, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 2, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obiad', 3, 5, 1, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obiad', 3, 5, 2, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 8, 1, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 8, 2, 4);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie', 1, 1, 1, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('I śniadanie', 1, 1, 2, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 1, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('II śniadanie', 2, 2, 2, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obiad', 3, 5, 1, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('obiad', 3, 5, 2, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 8, 1, 6);
INSERT INTO scrumlabspring.recipe_plan (meal_name, order_no, recipe_id, plan_id, day_name_id) VALUES ('kolacja', 4, 8, 2, 6);