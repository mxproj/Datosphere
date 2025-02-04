


INSERT INTO gender_groups (id, name, description, typical_bio_sex, desired_sex) VALUES
(1, 'Cisgender Female', 'Individuals whose gender identity aligns with female sex assigned at birth', 1, 1),
(2, 'Cisgender Male', 'Individuals whose gender identity aligns with male sex assigned at birth', 2, 2),
(3, 'Cisgender Hermaphrodite', 'Individuals genuinely born with both sets of genitalia and identify with it', 3, 3),
(4, 'Cisgender Hermaphrodite', 'Individuals genuinely born with both sets of genitalia and identify with it', 3, 1),
(5, 'Cisgender Hermaphrodite', 'Individuals genuinely born with both sets of genitalia and identify with it', 3, 2),
(6, 'Transgender Male (F2M) - Transitioned', 'Individuals assigned female at birth but identify as male', 1, 2),
(7, 'Transgender Female (M2F) - Transitioned', 'Individuals assigned male at birth but identify as female', 2, 1),
(8, 'Transgender Male (F2M)', 'Individuals assigned female at birth but identify as male', 1, 2),
(9, 'Transgender Female (M2F)', 'Individuals assigned male at birth but identify as female', 2, 1);









INSERT INTO sexual_orientation_groups (id, name, description, prefers_appearance, prefers_genitalia) VALUES
(1, 'Heterosexual Male', 'Men who are attracted to women.', 1, 1),
(2, 'Heterosexual Female', 'Women who are attracted to men.', 2, 2),

(3, 'Homosexual Male (Gay)', 'Men who are attracted to other men.', 2, 2),
(4, 'Homosexual Female (Lesbian)', 'Women who are attracted to other women.', 1, 1),

(5, 'Bisexual', 'Individuals attracted to both men and women.', 3, 3),
(6, 'Pansexual', 'Individuals attracted to people regardless of gender.', 3, 3),

(7, 'Androsexual', 'Individuals primarily attracted to masculine-presenting people.', 2, 0),
(8, 'Gynosexual', 'Individuals primarily attracted to feminine-presenting people.', 1, 0),

(9, 'Autosexual', 'Individuals primarily attracted to themselves.', 0, 0),
(10, 'Asexual', 'Individuals who experience little to no sexual attraction.', 0, 0),

(11, 'Heteroflexible', 'Mostly heterosexual but occasionally attracted to the same sex.', 3, 3),
(12, 'Homoflexible', 'Mostly homosexual but occasionally attracted to the opposite sex.', 3, 3);



