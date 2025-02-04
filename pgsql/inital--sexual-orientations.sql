

INSERT INTO attraction_orientations 
  (name, description, prefers_appearance, prefers_genitalia, 
   attraction_orientation_group, attraction_to_partnergender_groups, 
   attraction_sexuophilia_group, gender_type, gender_group, aliases) 

VALUES

  (
    'Heterosexual (Cis Only)',
    'Attracted exclusively to cisgender individuals of the opposite sex.',
    -1,  -- prefers_appearance: N/A (relative to the individual’s own gender)
    -1,  -- prefers_genitalia: N/A
    1,   -- attraction_orientation_group: Heterosexual
    NULL,  -- attraction_to_partnergender_group: not further specified here
    NULL,  -- attraction_sexuophilia_group: not applicable
    1,     -- gender_type: Restrict to cisgender (see gender_types table)
    NULL,  -- gender_group: not further specified
	NULL   -- no aliases
  ),
  (
    'Heterosexual (Inclusive)',
    'Attracted to individuals who identify as the opposite sex, regardless of cisgender status.',
    -1,  -- prefers_appearance: N/A
    -1,  -- prefers_genitalia: N/A
    1,   -- attraction_orientation_group: Heterosexual
    NULL,  -- attraction_to_partnergender_group: not further specified
    NULL,  -- attraction_sexuophilia_group: not applicable
    NULL,  -- gender_type: no restriction on cis/trans
    NULL,  -- gender_group: not further specified
	NULL   -- no aliases
  ),


  (
    'Lesbian',
    'A cisgender woman attracted exclusively to other women.',
    1, 1, 2, 1, NULL, 1, 1, NULL
  ),
  (
    'Gay Male',
    'A cisgender man attracted exclusively to other men.',
    2, 2, 2, 2, NULL, 1, 2, 'Uranian'
  ),
  (
    'Gay Male (Inclusive)',
    'Someone who identifies as a gay man or non-binary person who is attracted exclusively to others who identify as men.',
    2, 2, 2, 2, NULL, 1, 2, 'Turian, Veldian'
  ),
  (
    'Gay',
    'Attracted exclusively to the same gender.',
    -1, -1, 2, NULL, NULL, NULL, NULL, NULL
  ),


  (
    'Trans-Attracted (MTF)',
    'Gynandromorphophilic; prefers transgender women (MTF).',
    1, 2, 7, 1, NULL, NULL, NULL, NULL
  ),
  (
    'Trans-Attracted (FTM)',
    'Andromimetophilic; prefers transgender men (FTM).',
    2, 1, 7, 2, NULL, NULL, NULL, NULL
  ),
  (
    'Trans-Attracted (Any)',
    'Attracted to transgender people of any transition.',
    3, 3, 7, 3, NULL, NULL, NULL, NULL
  ),
  (
    'Transcurious (MTF)',
    'Curious about transgender women (MTF).',
    1, 2, 6, 1, NULL, NULL, NULL, NULL
  ),
  (
    'Transcurious (FTM)',
    'Curious about transgender men (FTM).',
    2, 1, 6, 2, NULL, NULL, NULL, NULL
  ),
  (
    'Transcurious (Any)',
    'Curious about transgender people of any transition.',
    3, 3, 6, 3, NULL, NULL, NULL, NULL
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Heteroflexible',
    'Primarily heterosexual but occasionally open to same-sex attraction.',
    3, 3, 3, 3, NULL, NULL, NULL, NULL
  ),
  (
    'Homoflexible',
    'Primarily homosexual but occasionally open to opposite-sex attraction.',
    3, 3, 3, 3, NULL, NULL, NULL, NULL
  ),

  (
    'Bicurious',
    'Primarily attracted to one gender but curious about same-sex experiences.',
    3, 3, 3, 3, NULL, NULL, NULL, NULL
  ),
  (
    'Bisexual',
    'Attracted to two or more genders with no inherent preference.',
    3, 3, 4, 3, NULL, NULL, NULL, NULL
  ),

  (
    'Androbisexual',
    'Bisexuality with a stronger attraction to men.',
    3, 3, 4, 2, NULL, NULL, NULL, NULL
  ),
  (
    'Androflexible',
    'Mostly attracted to men but with rare attraction to women.',
    3, 3, 3, 2, NULL, NULL, NULL, NULL
  ),


  (
    'Pansexual',
    'Attracted to people regardless of gender or biological sex.',
    3, 3, 5, 4, NULL, NULL, NULL, NULL
  ),
  (
    'Omnisexual',
    'Attracted to all genders, with gender playing a role in attraction.',
    3, 3, 5, 4, NULL, NULL, NULL, NULL
  ),
  (
    'Polysexual',
    'Attracted to multiple, but not all, genders.',
    3, 3, 5, 3, NULL, NULL, NULL, NULL
  ),

  (
    'Skoliosexual',
    'Attracted to non-binary or gender-nonconforming individuals.',
    -1, -1, 5, NULL, NULL, 4, NULL, NULL
  ),


--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Gynesexual',
    'Attracted to femininity and/or womanhood.',
    1, 1, NULL, 1, NULL, NULL, NULL, 'Femmesexual, Finsexual, Gynosexual'
  ),
  (
    'Agynosexual',
    'Lacks attraction towards women or femininity but may be attracted to other genders.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),


  (
    'Androsexual',
    'Attracted to masculinity.',
    2, 2, NULL, 2, NULL, NULL, NULL, 'Mascusexual, Minsexual'
  ),

  (
    'Boreasexual',
    'Experiencing attraction outside of one’s usual sexuality, e.g., a lesbian dating a man.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),

  (
    'Androgynosexual',
    'Non-exclusive sexual attraction to both men and women.',
    3, 3, 4, 3, NULL, NULL, NULL, NULL
  ),
  (
    'Anthrosexual',
    'Attracted to people regardless of gender identity.',
    3, 3, 5, 4, NULL, NULL, NULL, NULL
  ),
  (
    'Cupidosexual',
    'Attracted to all genders, but sexual attraction fluctuates between genders.',
    3, 3, 5, 4, NULL, NULL, NULL, 'Mutosexual'
  ),
  (
    'Spectrasexual',
    'Attracted to multiple or varied genders.',
    3, 3, 5, 3, NULL, NULL, NULL, NULL
  ),


  (
    'Toric',
    'A non-binary person who is exclusively attracted to men.',
    2, 2, 2, 2, NULL, 4, NULL, NULL
  ),
  (
    'Trixic',
    'A non-binary person who is exclusively attracted to women.',
    1, 1, 2, 1, NULL, 4, NULL, NULL
  ),

  (
    'Avansexual',
    'Exclusively attracted to non-binary individuals.',
    -1, -1, 2, NULL, NULL, 4, NULL, 'Ceterosexual, Narysexual, Neusexual, Ninsexual'
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Novosexual',
    'A gender-fluid person whose sexual orientation changes with their current gender.',
    -1, -1, 5, 4, NULL, 10, NULL, NULL
  ),

  (
    'Flexisexual',
    'A gender-fluid person who changes their gender identity to match the preferences of their crush.',
    -1, -1, 5, 4, NULL, 10, NULL, NULL
  ),


  (
    'Wentisexual',
    'Only attracted to people with the same sexuality as themselves.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Penultisexual',
    'Attracted to all genders except one’s own.',
    3, 3, 5, 3, NULL, NULL, NULL, NULL
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Autosexual',
    'Primarily or exclusively attracted to oneself.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),
  (
    'Narcisexual',
    'Attracted to oneself in a way that aligns with narcissistic admiration of one’s own body or persona.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),

  
  (
    'Asexual',
    'Experiences little or no sexual attraction.',
    0, 0, NULL, 0, NULL, NULL, NULL, NULL
  ),
  (
    'Akiosexual',
    'Experiences sexual attraction but has little desire to act on it.',
    -1, -1, NULL, 0, NULL, NULL, NULL, 'Lithosexual, Proculsexual'
  ),


  (
    'Reciprosexual',
    'Experiences attraction only if they know the other person is attracted to them.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),


  (
    'Demisexual',
    'Only experiences sexual attraction after forming a strong emotional bond.',
    -1, -1, NULL, 0, NULL, NULL, NULL, NULL
  ),
  (
    'Fraysexual',
    'Develops attraction without an emotional bond, but loses attraction once a bond is formed (opposite of demisexual).',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  
  (
    'Coeosexual',
    'Only experiences attraction if it was felt upon first meeting someone.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),

  (
    'Graysexual',
    'Experiences sexual attraction infrequently or under specific conditions.',
    -1, -1, NULL, 0, NULL, NULL, NULL, 'Gray-A'
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Solosexual',
    'Prefers masturbating over having sex with others.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),

  (
    'Mastursexual',
    'Gets all or most sexual satisfaction from masturbation.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),
  (
    'Egosexual',
    'Feels the most sexual pleasure when pleasing themselves rather than with a partner.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),
  (
    'Autofelicosexual',
    'Reaches peak sexual satisfaction only through self-pleasure.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),
  (
    'Pornosexual',
    'Prefers pornography over real-life sexual interactions.',
    -1, -1, NULL, NULL, 2, NULL, NULL, NULL
  ),

  (
    'Camsexual',
    'Prefers cam shows or live-streamed erotic content over in-person sex.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),


  (
    'Teledildosexual',
    'Primarily aroused by using interactive sex toys (teledildonics) rather than physical partners.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),

  (
    'ASMRsexual',
    'Finds sexual gratification primarily through ASMR triggers rather than physical sex.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Abnosexual',
    'Fluctuates between platonic, romantic, and sexual attraction.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Aceflux',
    'Fluctuates between asexuality and non-asexuality or between ace-spec identities.',
    -1, -1, NULL, 0, NULL, NULL, NULL, NULL
  ),
  (
    'Aegosexual',
    'Experiences no sexual attraction but enjoys fantasizing about sexual relationships and depictions.',
    -1, -1, NULL, 0, NULL, NULL, NULL, 'Limnosexual'
  ),
  (
    'Agentosexual',
    'Experiences some degree of control over one’s sexual attractions.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Apothisexual',
    'Does not seek a sexual relationship and feels repulsion towards it.',
    0, 0, NULL, 0, NULL, NULL, NULL, NULL
  ),
  (
    'Burstsexual',
    'Usually experiences no sexual attraction but has sudden bursts of it.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Ceasesexual',
    'Experiences sexual attraction that sometimes disappears.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Cupiosexual',
    'Wants a sexual relationship but has no sexual desire.',
    0, 0, NULL, 0, NULL, NULL, NULL, NULL
  ),
  (
    'Abrosexual',
    'Experiences random and fluctuating attraction, including shifts between genders.',
    3, 3, 5, 4, NULL, NULL, NULL, 'Sanssexual'
  ),
  (
    'Fictosexual (Asexual)',
    'Exclusively attracted to fictional characters, without sexual attraction to real people.',
    -1, -1, NULL, 0, 3, NULL, NULL, NULL
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Fictosexual (Non-Asexual)',
    'Experiences genuine sexual attraction specifically toward fictional characters.',
    -1, -1, NULL, NULL, 3, NULL, NULL, NULL
  ),

  (
    'Toonosexual',
    'Attracted to animated characters.',
    -1, -1, NULL, NULL, 3, NULL, NULL, NULL
  ),

  (
    'Mythosexual',
    'Attracted to mythical or legendary beings.',
    -1, -1, NULL, NULL, 4, NULL, NULL, NULL
  ),

  (
    'Necrosexual',
    'Attracted to undead beings, such as ghosts, vampires, or reanimated corpses.',
    -1, -1, NULL, NULL, 11, NULL, NULL, NULL
  ),
  (
    'Zombisexual',
    'Attracted specifically to zombies or zombie-like beings.',
    -1, -1, NULL, NULL, 11, NULL, NULL, NULL
  ),


  (
    'Synthosexual',
    'Sexual attraction to artificial or synthetic humans, such as advanced humanoid robots with functional sexual organs.',
    -1, -1, NULL, NULL, 5, NULL, NULL, NULL
  ),

--   name,
--   description,
--   prefers_appearance (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   prefers_genitalia  (-1: N/A, 0: None, 1: F, 2: M, 3: Both),
--   attraction_orientation_group,  attraction_to_partnergender_groups,  attraction_sexuophilia_group,
--   gender_type,  gender_group,
--   aliases

  (
    'Novisexual',
    'Unable to label one’s attraction.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Onesexual',
    'Only attracted to one person in their entire life.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  ),
  (
    'Pomosexual',
    'Rejects the idea that sexuality and gender can be properly labeled.',
    -1, -1, NULL, NULL, NULL, NULL, NULL, NULL
  );


-- 
;


