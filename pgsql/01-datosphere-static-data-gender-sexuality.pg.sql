


INSERT INTO gender_types (id, name, description, also_a_gender, aliases)
VALUES
(0, 'Agender', 'Someone who does not identify as having a gender.', NULL, 'Genderless, Gender-free, Non-gendered, Ungendered'),
(1, 'Cisgender', 'Someone whose gender identity aligns with their sex assigned at birth.', NULL, 'Cis, Cisgendered'),
(2, 'Transgender', 'Someone whose gender identity differs from their sex assigned at birth.', NULL, 'Trans, Transgendered'),
(3, 'Transsexual', 'A transgender person who has undergone or desires medical transition.', NULL, 'Transsex, TS'),
(4, 'Non-Binary', 'Individuals who do not exclusively identify as male or female.', NULL, NULL),
(-1, 'Non-Corporeal', 'Someone who has transcended beyond corporeal bounded bodies. Or at least they think they have.', NULL, NULL);




INSERT INTO gender_groups
(id, name, description, gender_type, typical_bio_sex, desired_sex)
VALUES
(0, 'Agender', 'Someone who does not identify as having a gender.', 0, 0, 0),
(1, 'Cisgender Female', 'Individuals whose gender identity aligns with female sex assigned at birth', 1, 1, 1),
(2, 'Cisgender Male', 'Individuals whose gender identity aligns with male sex assigned at birth', 1, 2, 2),
(3, 'Cisgender Hermaphrodite', 'Individuals genuinely born with both sets of genitalia and identify with it', 1, 3, 3),
(4, 'Female Hermaphrodite', 'Individuals genuinely born with both sets of genitalia and identify with it', 2, 3, 1),
(5, 'Male Hermaphrodite', 'Individuals genuinely born with both sets of genitalia and identify with it', 2, 3, 2),
(6, 'Transgender Male (F2M)', 'Individuals assigned female at birth but identify as male', 2, 1, 2),
(7, 'Transgender Female (M2F)', 'Individuals assigned male at birth but identify as female', 2, 2, 1),
(8, 'Transsexual Male (F2M)', 'Transgender Male (F2M) - Transitioned / Individuals assigned female at birth but identify as male', 3, 1, 2),
(9, 'Transsexual Female (M2F)', 'Transgender Female (M2F) - Transitioned / Individuals assigned male at birth but identify as female', 3, 2, 1),
(10, 'Fluid', 'A gender identity that shifts or changes over time.', 4, 0, 0),
(11, 'Fluid Female', 'A gender-fluid individual who leans toward or includes a female identity.', 4, 1, 1),
(12, 'Fluid Male', 'A gender-fluid individual who leans toward or includes a male identity', 4, 2, 2);







INSERT INTO attraction_orientation_groups
(id, name, description, traditional_orientation, strict, prefers_appearance, prefers_genitalia)
VALUES
(1, 'Heterosexual', 'Attraction to the opposite sex.', 1, TRUE, 2, 2),
(2, 'Homosexual', 'Attraction to the same sex.', 2, TRUE, 1, 1),
(3, 'Bicurious', 'Sexually curoious towards both men and women.', 3, FALSE, 2, 2),
(4, 'Bisexual', 'Attraction to both men and women.', 3, TRUE, 3, 3),
(5, 'Pansexual', 'Attraction regardless of gender.', 3, FALSE, 3, 3),
(6, 'Transcurious', 'Sexually curoious towards trans-individuals.', -1, FALSE, 2, 0),
(7, 'Transphile', 'Attraction to transgender individuals.', -1, FALSE, 2, 0),
(8, 'Transvestophile', 'Attraction to cross-dressers.', -1, FALSE, 2, 1);



INSERT INTO attraction_sexuophilia_groups
(id, name, description, kink_level)
VALUES
(1, 'Anthropsexual', 'Attraction to human partners.', 0),
(2, 'Solosexual', 'Sexual attraction and fulfillment primarily through oneself.', 2),
(3, 'Fictosexual', 'Attraction to fictional characters or personas.', 3),
(4, 'Paranormalphilic', 'Attraction to ghosts, spirits, or supernatural entities.', 5),
(5, 'Technosexual', 'Attraction to robots, AIs, and synthetic beings.', 4),
(6, 'Agalmatophilic', 'Attraction to statues, mannequins, or immobile humanoid forms.', 5),
(7, 'Objectophilic', 'Attraction to inanimate objects.', 6),
(8, 'Plushophilic', 'Attraction to plush toys or anthropomorphic stuffed animals.', 6),
(9, 'Therianthrophilic', 'Attraction to anthropomorphic or part-animal beings (e.g., werewolves, centaurs, furries).', 5),
(10, 'Zoophilic', 'Attraction to non-human animals.', 10),
(11, 'Necrophilic', 'Attraction to the deceased.', 10);



INSERT INTO attraction_to_partnergender_groups (id, name, description, prefers_appearance, prefers_genitalia) VALUES
(0, 'Ace (Asexual grouping)', 'Little or no sexual attraction; may still experience romantic attraction.', 0, 0),
(1, 'Gynesexual', 'Attracted to femininity or female-presenting individuals.', 1, 1),
(2, 'Androsexual', 'Attracted to masculinity or male-presenting individuals.', 2, 2),
(3, 'Multisexual', 'Attracted to more than one gender or presentation.', 3, 3),
(4, 'Fluid', 'Attraction that shifts over time or is context-dependent.', 3, 3);




-- 'metaorientations' table  -- are the overarching categories that encompass all other orientations.
-- for things like Monosexual, Multisexual etc.


