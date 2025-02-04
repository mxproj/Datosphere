
CREATE TABLE credentials (
  email           VARCHAR(128)  NOT NULL  UNIQUE,
  password_hash   TEXT  NOT NULL,
  password_salt   TEXT  NOT NULL
  -- code model should also have an `attempt_count` field
);


CREATE TABLE registrations (
  email             VARCHAR(128)  NOT NULL  UNIQUE,
  confirmation_code TEXT NOT NULL,
  generation_time   TIMESTAMP
);


CREATE TABLE members (
  id                    BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  email                 VARCHAR(128)  NOT NULL  UNIQUE,
  preferred_locale      VARCHAR(8),
  home_city             BIGINT,  -- expedia EPS geo-tree node id
  current_location      VARCHAR(64),  -- expedia EPS geo-tree node id, or other text
  sauciness             SMALLINT,  -- do not show this to the member. Just use it to elevate the level of sexuality in the questions asked to the member to gather data.
  active                BOOLEAN,
  hide_from_search      BOOLEAN,  -- may be only for pro?
  registration_time     TIMESTAMP
);



CREATE TABLE members_info (
  iso_lang_locale     VARCHAR(8),
  member_id           BIGINT,
  username            VARCHAR(64),
  nickname            VARCHAR(64),
  first_name          VARCHAR(64),
  middle_names        VARCHAR(64),
  last_name           VARCHAR(64),
  claim_to_fame       VARCHAR(255),  -- short bio: like "I'm a model and I love to travel" or "I once drank 10 beers in 10 minutes"
  bio                 TEXT,
  PRIMARY KEY(member_id, iso_lang_locale)
);


CREATE TABLE member_attributes_template (
  gender              INT,
  bio_sex             SMALLINT,  -- 1: F, 2: M, 3: Hermaphrodite
  sex_change_op       BOOLEAN,   -- has the member gone through a gender transition operation?
  ethnicities         TEXT,      -- comma separated ints
  dob                 DATE,
  height_cm           SMALLINT,
  weight_kg           SMALLINT,
  build               SMALLINT,  --  0: skinny, 1: slim, 2: average, 3: athletic, 4: muscular, 5: super-musucular, 6: curvy, 7: chubby, 8: fat, 6: obese
  hair_color          SMALLINT,  --  0: black, 1: brown, 2: blonde, 3: red, 4: gray, 5: white, 6: blue, 7: green, 8: purple, 9: pink, 10: other
  hair_length         SMALLINT,  --  0: bald, 1: very short, 2: short, 3: male-cut,
                                 --  4: neck-length, 5: shoulder-length, 6: upper-back-length, 7: mid-back-length, 8: lower-back-length,
                                 --  9: waist-length, 10: ass-length, 11: knee-length, 12: floor-length
  grooming_legs       SMALLINT,  --  0: lasered, 1: waxed, 2: shaved, 3: natural-barely-hairy, 4: natural-hairy  ---  re-order. most to least
  grooming_bikini     SMALLINT,  --  0: lasered, 1: waxed, 2: shaved, 3: natural-barely-hairy, 4: natural-hairy-but-tidy-within-bikini-line, 4: natural-hairy-but-tidy, 4: natural-hairy-curly-bush, 5: brazilian, 6: runway-strip, 7: tidy-bikini-line, 8: designer
  grooming_fullbody   SMALLINT,  --  0: lasered, 1: waxed, 2: shaved, 3: natural-barely-hairy, 4: natural-hairy
  grooming_anus       SMALLINT,  --  0: lasered, 1: waxed, 2: shaved, 3: natural-barely-hairy, 4: natural-hairy
  anal_bleached       BOOLEAN,
  tattooes            TEXT, -- comma separated ints
  piercings           TEXT, -- comma separated ints
  body_attributes     TEXT, -- comma separated ints
  personal_attributes TEXT, -- comma separated ints
  sexual_orientations           TEXT, -- comma separated ints
  smoker                        BOOLEAN,
  drinker                       BOOLEAN,
  recreational_uppers           BOOLEAN,
  recreational_downers          BOOLEAN,
  popularity                    DECIMAL(5,2)
);

CREATE TABLE member_attributes (
  LIKE  member_attributes_template  INCLUDING ALL,
  member_id    BIGINT  PRIMARY KEY,
  additional_genders  TEXT,      -- comma separated ints
  personal_attributes_private   TEXT, -- comma separated ints. Add a feature for premium members to send this to matches
  relationship_orientations     TEXT, -- comma separated ints
  sexual_orientations_private   TEXT  -- comma separated ints
);

CREATE TABLE observed_attributes (
  LIKE  member_attributes_template  INCLUDING ALL,
  subject_id        BIGINT,
  observer_id       BIGINT,
  observed_date     DATE,
  PRIMARY KEY(subject_id, observer_id)
);



CREATE TABLE members_f_attributes (
  member_id           BIGINT  PRIMARY KEY,
  cup_size            VARCHAR(4),
  bust_size_cm        SMALLINT,
  waist_size_cm       SMALLINT,
  hip_size_cm         SMALLINT,
  breast_implants     BOOLEAN
);


CREATE TABLE members_m_attributes (
  member_id           BIGINT  PRIMARY KEY,
  foreskin            SMALLINT,  -- 0: circumcised, 1: has-foreskin, 2: phimosis 
  cock_length_cm      SMALLINT,
  cock_girth_cm       SMALLINT,
  enlarged            BOOLEAN,
  penile_implants     TEXT,     --  comma separated ints. 0: none, 1: silicone, 2: fat/collagen, 3: dermal, 4: PMMA, 5: akuza Beads, 6: other
  ejaculation         SMALLINT, --  0: cannot, 1: can, 2: heavy, 3: would make Peter North jealous
  multishooter        BOOLEAN
);


CREATE TABLE members_t_attributes (
  member_id           BIGINT  PRIMARY KEY,
  m2f                 BOOLEAN,
  post_op_genitalia   BOOLEAN,
  breast_implants     BOOLEAN,
  breast_removed      BOOLEAN,
  hormones            BOOLEAN
);


CREATE TABLE members_contact (
  id          BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id                   BIGINT  UNIQUE,
  phone_number_country_code   VARCHAR(4),
  phone_number                VARCHAR(20),
  phone_number_verified_time  TIMESTAMP,
  email_verified_time         TIMESTAMP
);


CREATE TABLE member_socials (
  id            BIGINT  PRIMARY KEY,
  member_id     BIGINT,
  social_type   INT, --  1: Line,  2: WeChat,  3: WhatsApp,  4: QQ,  5: TikTok,  6: RedNote / Xiaohongshu / XHS / 小红书,  7: Twitter,  8: Snapchat,  9: Instagram,  10: Facebook,  11: Tinder,  12: Grindr,  13: Youtube,  14: Signal,  15: Telegram,  16: Viber,  17: Likee,  18: Roblox,  19: Steam,  20: Blizzard,  21: PSN,  22: XBox,  23: Pinterest,  24: VK,  25: Kakao,  26: Weibo,  27: Kik,  28: Tumblr,  29: Douban,  30: Renren,  31: Mixi,  32: Naver,  33: Daum,  34: Odnoklassniki,  35: LinkedIn,  36: MySpace,  37: Hi5,  38: Orkut,  39: Bebo,  40: Classmates,  41: LiveJournal
  social_id     VARCHAR(64)
);
CREATE INDEX idx__member_socials__member_id ON member_socials (member_id);


CREATE TABLE service_provider_socials (
  id            BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id     BIGINT,
  social_type   INT, -- 1: IMDB,  2: OnlyFans,  3: Fansly,  4: ManyVids,  5: JustForFans,  6: ModelMayhem,  7: PurplePort, 8: Clips4Sale,  9: Chaturbate,  10: MyFreeCams,  11: Modelhub,  12: PornHub,  13: Xvideos
  social_id     VARCHAR(64)
);
CREATE INDEX idx__service_provider_socials__member_id ON service_provider_socials (member_id);


CREATE TABLE service_provider_other_profiles (
  id          BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id   BIGINT,
  site        VARCHAR(64), -- e.g.  MyFreeCams,  iWantClips,  CamSoda,  Stripchat,  BongaCams,  Modelhub,  Fanvue,  Unlockd,  AdmireMe.VIP,  APClips,  Eplay,  IsMyGirl,  Cam4,  SpankPay / SpankChain,  CumRocket,  PornHub,  Xvideos
  url         VARCHAR(256)
  -- grab the site favicon just like tampermonkey does.
);
CREATE INDEX idx__service_provider_other_profiles__member_id ON service_provider_other_profiles (member_id);


CREATE TABLE member_photos (
  id          BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  ext_id      VARCHAR(64)  UNIQUE,
  member_id   BIGINT,
  media_id    BIGINT,
  details     TEXT,
  time_added  TIMESTAMP,
  nudity      BOOLEAN,
  active      BOOLEAN
);
CREATE INDEX idx__member_photos__ext_id ON member_photos USING HASH (ext_id);
CREATE INDEX idx__member_photos__member_id ON member_photos (member_id);
CREATE INDEX idx__member_photos__media_id ON member_photos (media_id);


CREATE TABLE member_photo_people (
  id          BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  photo_id    BIGINT,
  member_id   BIGINT,
  face_x      INT,
  face_y      INT,
  face_width  INT,
  face_height INT
);
CREATE INDEX idx__member_photo_people__photo_id ON member_photo_people (photo_id);
CREATE INDEX idx__member_photo_people__member_id ON member_photo_people (member_id);


CREATE TABLE member_photo_tags (
  id          BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  photo_id    BIGINT,
  tag_id      BIGINT,
  x           INT,
  y           INT,
  width       INT,
  height      INT,
  label       VARCHAR(64),
  url         VARCHAR(256)
);
CREATE INDEX idx__member_photo_tags__photo_id ON member_photo_tags (photo_id);
CREATE INDEX idx__member_photo_tags__tag_id ON member_photo_tags (tag_id);




-- typically paid memberships
CREATE TABLE premium_subscriptions (
  subscription_id     BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id           BIGINT,
  details             TEXT
);
CREATE INDEX idx__premium_subscriptions__member_id ON premium_subscriptions (member_id);


CREATE TABLE premium_subscription_issueings (
  issueing_id           BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  subscription_id       BIGINT,
  issue_date            DATE,
  subscription_start    DATE,
  subscription_end      DATE,
  subscription_type     SMALLINT -- 1: 1 month, 2: 3 months, 3: 6 months, 4: 12 months, 99: lifetime
);
CREATE INDEX idx__premium_subscription_issueings__subscription_id ON premium_subscription_issueings (subscription_id);
CREATE INDEX idx__premium_subscription_issueings__issue_date ON premium_subscription_issueings (issue_date);
CREATE INDEX idx__premium_subscription_issueings__subscription_end ON premium_subscription_issueings (subscription_end);


-- Members that are Service Providers
CREATE TABLE service_providers (
  member_id           BIGINT  PRIMARY KEY,
  sp_attributes       TEXT, -- comma separated ints
  incall_rates        TEXT, -- JSON
  outcall_rates       TEXT, -- JSON
  ez_mode             BOOLEAN -- true: outcall-only and short-time / long-time pinned to two of the rates, the rest are not shown
);


CREATE TABLE service_provider_pro_subscriptions (LIKE  premium_subscriptions  INCLUDING ALL);
-- CREATE INDEX idx__service_provider_pro_subscriptions__member_id ON service_provider_pro_subscriptions (member_id);


CREATE TABLE service_provider_pro_subscription_issueings (LIKE  premium_subscription_issueings  INCLUDING ALL);
-- CREATE INDEX idx__service_provider_pro_subscription_issueings__subscription_id ON service_provider_pro_subscription_issueings (subscription_id);





-- =====================


-- matchings and prefs



CREATE TABLE member_matching (
  member_id           BIGINT  PRIMARY KEY,
  block_list          TEXT, -- comma separated ints  ---  member_ids that this member has blocked
  ignore_list         TEXT, -- comma separated ints  ---  member_ids that this member has ignored
  gender_likes        TEXT, -- comma separated ints
  gender_dislikes     TEXT, -- comma separated ints
  age_min             SMALLINT,
  age_max             SMALLINT,
  height_min          SMALLINT,
  height_max          SMALLINT,
  weight_min          SMALLINT,
  weight_max          SMALLINT,
  attributes_likes            TEXT, -- comma separated ints
  attributes_dislikes         TEXT, -- comma separated ints
  private_attributes_likes    TEXT, -- comma separated ints
  private_attributes_dislikes TEXT, -- comma separated ints
  activities_likes            TEXT, -- comma separated ints
  activities_dislikes         TEXT, -- comma separated ints
  private_activities_likes    TEXT, -- comma separated ints
  private_activities_dislikes TEXT  -- comma separated ints
);


CREATE TABLE member_prefs_m (
  member_id         BIGINT  PRIMARY KEY,
  cock_length_min   SMALLINT,
  cock_length_max   SMALLINT,
  cock_girth_min    SMALLINT,
  cock_girth_max    SMALLINT,
  circumcised       BOOLEAN,
  implants          BOOLEAN,
  ejaculation       SMALLINT
);


CREATE TABLE member_prefs_f (
  member_id           BIGINT  PRIMARY KEY,
  breast_size         SMALLINT,   -- 0: flat,  1: small,  2: medium,  3: large
  breast_implants     BOOLEAN
);


-- custom preferences
CREATE TABLE member_prefs_keyval (
  member_id           BIGINT,
  preference_cat_id   BIGINT,    -- The category_id for the preference-key
  pref_type           SMALLINT,  --  1: boolean, 2: integer, 3: decimal, 4: string  -- min, max, and unit are for integer and decimal
  value_reg           VARCHAR(64),  
  value_min           INT,
  value_max           INT,
  value_unit          SMALLINT -- metric units e.g. cm, kg
);
CREATE INDEX idx__member_prefs_keyval__member_id ON member_prefs_keyval (member_id);
CREATE INDEX idx__member_prefs_keyval__preference_cat_id ON member_prefs_keyval (preference_cat_id);



CREATE TABLE reported_members (
  id                  BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  subject_id          BIGINT,  -- member_id of the reported member
  reporter_id         BIGINT,  -- member_id of the reporting member
  report_time         TIMESTAMP,
  report_reason       TEXT,
  urgent              BOOLEAN,
  review_time         TIMESTAMP,
  reviewed_by_id      BIGINT,
  review_result       TEXT,
  resolution_time     TIMESTAMP
);
CREATE INDEX idx__reported_members__subject_id ON reported_members (subject_id);
CREATE INDEX idx__reported_members__reporter_id ON reported_members (reporter_id);
CREATE INDEX idx__reported_members__urgent ON reported_members (urgent);
CREATE INDEX idx__reported_members__report_time ON reported_members (report_time);
CREATE INDEX idx__reported_members__review_time ON reported_members (review_time);
CREATE INDEX idx__reported_members__resolution_time ON reported_members (resolution_time);





-- =====================



-- what tv shows does the member like etc. movies? porn?





-- =====================








-- TODO: Create a separate table for advertised_events / group_event.

CREATE TABLE liaisons (
  id              BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id       BIGINT,
  liaison_type    SMALLINT,   -- 1: call, 2: general video call,
                              -- 10: lunch / daytime date, 11: dinner date, 12: evening/night date, 5: misc date,
                              -- 20: speed-dating, 21: general-single-mingle
                              -- 30: general message, 31: thai massage, 32: swedish/tuina massage, 33: fbsm, 34: massage+hj, 34: massage+bj, 35: fs-massage
                              -- 40: orgy, 41: gangbang, 42: greedy-punter
  liaison_time          TIMESTAMP,
  duration              INT,       -- minutes
  location_type         SMALLINT,  -- 0: N/A (not-sp-related),  1: incall,  2: outcall
  location_id           BIGINT,
  advertised_event_id   BIGINT,
  -- public_ad_text        TEXT,
  members_secret        BOOLEAN
);
CREATE INDEX idx__liaisons__member_id ON liaisons (member_id);
CREATE INDEX idx__liaisons__liaison_type ON liaisons (liaison_type);
CREATE INDEX idx__liaisons__liaison_time ON liaisons (liaison_time);


-- 
CREATE TABLE liaison_participant (
  liaison_id          BIGINT,
  participant_id      BIGINT,  -- member_id of the participant
  paid                INT,  -- amount. 0 if not paid liaison. Positive if this member paid. Negative if this member received payments.
  payment_currency    VARCHAR(3),
  arrival_time        TIMESTAMP,
  stay_duration       INT,  -- minutes
  experience          TEXT, -- the given participant's experience of the liaison, visible to the other participants
  private_notes       TEXT, -- notes on the event not shared with anyone
  public_review       TEXT, -- public review. only available if the liaison is publically visible
  rating_location     SMALLINT, -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  rating_activities   SMALLINT, -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  rating_experience   SMALLINT, -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  remain_secret       BOOLEAN,  -- if it is an advertised event, and members are not kept secret by default, each member can remain secret with this flag.
  PRIMARY KEY(liaison_id, participant_id)
);
CREATE INDEX idx__liaison_participant__participant_id ON liaison_participant (participant_id);


CREATE TABLE liaison_partners (
  liaison_id          BIGINT,
  participant_id      BIGINT,  -- member_id of the participant recounting the liaison
  partner_id          BIGINT,  -- the member_id this member is writing about
  activity_types      TEXT, -- CSV.  1: message, 2: call, 3: video call, 4: in-person incall, 5: in-person outcall
  rating_chemistry    SMALLINT,  -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  rating_activities   SMALLINT,  -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  rating_performance  SMALLINT,  -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  observed_attributes TEXT,  -- JSON  --- TODO: use separate table instead.
  private_notes       TEXT, -- notes on the event not shared with anyone
  shared_review       TEXT, -- both parties must agree to make this public
  PRIMARY KEY(liaison_id, participant_id, partner_id)
);
CREATE INDEX idx__liaison_partners__participant_id ON liaison_partners (participant_id);
CREATE INDEX idx__liaison_partners__partner_id ON liaison_partners (partner_id);


CREATE TABLE liaison_media (
  id                BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  owner_id          BIGINT,  -- member_id who owns these media
  liaison_id        BIGINT,
  participant_id    BIGINT,  -- member_id of the participant being depicted in the media
  media_id          BIGINT
);
CREATE INDEX idx__liaison_media__owner_id ON liaison_media (owner_id);
CREATE INDEX idx__liaison_media__liaison_id ON liaison_media (liaison_id);
CREATE INDEX idx__liaison_media__participant_id ON liaison_media (participant_id);
CREATE INDEX idx__liaison_media__media_id ON liaison_media (media_id);


-- allow member to share with another member, their account of a liaison they had
CREATE TABLE liaison_share (
  id                     BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  liaison_id             BIGINT,
  shared_with_member_id  BIGINT,
  view_once              BOOLEAN,
  time_shared            TIMESTAMP,
  time_last_viewed       TIMESTAMP,
  share_expiry           TIMESTAMP
);
CREATE INDEX idx__liaison_share__liaison_id ON liaison_share (liaison_id);
CREATE INDEX idx__liaison_share__shared_with_member_id ON liaison_share (shared_with_member_id);
CREATE INDEX idx__liaison_share__share_expiry ON liaison_share (share_expiry);


CREATE TABLE private_notes (
  id                  BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id           BIGINT,
  partner_id          BIGINT,
  liaison_id          BIGINT,
  note                TEXT,
  note_language       VARCHAR(8),
  observed_attributes TEXT, -- comma separated ints
  observed_activities TEXT, -- comma separated ints
  time_added          TIMESTAMP
);
CREATE INDEX idx__private_notes__member_id ON private_notes (member_id);
CREATE INDEX idx__private_notes__partner_id ON private_notes (partner_id);
CREATE INDEX idx__private_notes__liaison_id ON private_notes (liaison_id);



CREATE TABLE private_note_media (
  note_id   BIGINT,
  media_id  BIGINT,
  PRIMARY KEY(note_id, media_id)
);
CREATE INDEX idx__private_note_media__note_id ON private_note_media (note_id);
CREATE INDEX idx__private_note_media__media_id ON private_note_media (media_id);


CREATE TABLE private_note_links (
  id        BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  note_id   BIGINT,
  url       VARCHAR(256)
);
CREATE INDEX idx__private_note_links__note_id ON private_note_links (note_id);



-- =====================


-- Create a group chat system later with a separate messages table. 
-- CREATE TABLE conversations (
--   id                  BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
--   member_id           BIGINT,
--   partner_id          BIGINT,
--   topic               TEXT
-- );



CREATE TABLE messages (
  id              BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  -- conversation_id BIGINT, -- not sure we'll need this
  reply_to_id     BIGINT, -- message_id of the message this is a reply to
  sender_id       BIGINT,
  receiver_id     BIGINT,
  message_text    TEXT,
  time_sent       TIMESTAMP,
  time_received   TIMESTAMP,
  time_read       TIMESTAMP
);
CREATE INDEX idx__messages__sender_id ON messages (sender_id);
CREATE INDEX idx__messages__receiver_id ON messages (receiver_id);
CREATE INDEX idx__messages__time_sent ON messages (time_sent);



-- =====================



CREATE TABLE establishments (
  id                  BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  establishment_type  INT, -- 1: model agency, 2: coyote agency, 3: escort agency, 4: specialist agency, 5: gogo bar, 6: hostess bar, 7: karaoke, 8: strip-club, 9: massage, 10: sauna/spa
  name                VARCHAR(128) NOT NULL,
  contact_email       VARCHAR(128) NOT NULL UNIQUE,
  contact_phone       VARCHAR(20),
  address_id          BIGINT,
  registration_date   TIMESTAMP,
  rating              SMALLINT,  -- 0-10  (displayed as 0-5 stars with 0.5 increments)
  active              BOOLEAN
);



-- =====================


CREATE TABLE addresses (
  id              BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  address_line1   VARCHAR(128),
  address_line2   VARCHAR(128),
  city_id         BIGINT  NOT NULL,
  postal_code     VARCHAR(16),
  latitude        DECIMAL(9,6),
  longitude       DECIMAL(9,6)
);
CREATE INDEX idx__addresses__city_id ON addresses (city_id);
CREATE INDEX idx__addresses__latitude ON addresses (latitude);
CREATE INDEX idx__addresses__longitude ON addresses (longitude);


-- =====================


CREATE TABLE invoices (
  id                BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  member_id         BIGINT,
  subscription_type SMALLINT, -- 1: premium, 2: service provider, 3: agency
  subscription_id   BIGINT,
  amount            DECIMAL(5,3),
  time_issued       TIMESTAMP,
  time_paid         TIMESTAMP,
  paid              BOOLEAN
);
CREATE INDEX idx__invoices__member_id ON invoices (member_id);
CREATE INDEX idx__invoices__subscription_id ON invoices (subscription_id);


CREATE TABLE payments (
  id              BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  invoice_id      BIGINT,
  amount          DECIMAL(5,2),
  time_paid       TIMESTAMP,
  payment_method  INT, -- 1: stripe, 2: paypal, 3: line
  payment_details TEXT
);
CREATE INDEX idx__payments__invoice_id ON payments (invoice_id);
CREATE INDEX idx__payments__time_paid ON payments (time_paid);



-- TODO: recreate these payment-handler tables with proper columns later

-- preliminary
CREATE TABLE payment_stripe (
  id                        BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  payment_id                BIGINT,
  stripe_charge_id          VARCHAR(64),
  stripe_customer_id        VARCHAR(64),
  stripe_payment_intent_id  VARCHAR(64),
  stripe_payment_method_id  VARCHAR(64),
  stripe_receipt_url        TEXT
);


-- preliminary
CREATE TABLE payment_paypal (
  id                  BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  payment_id          BIGINT,
  paypal_order_id     VARCHAR(64),
  paypal_capture_id   VARCHAR(64),
  paypal_payment_id   VARCHAR(64),
  paypal_payer_id     VARCHAR(64),
  paypal_receipt_url  TEXT
);


-- preliminary
CREATE TABLE payment_line (
  id                    BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  payment_id            BIGINT,
  line_payment_id       VARCHAR(64),
  line_transaction_id   VARCHAR(64),
  line_receipt_url      TEXT
);


--




-- =====================




CREATE TABLE media (
  id             BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  slug           VARCHAR(64),
  mime_type_id   INT,
  label          TEXT,
  tag_ids        TEXT, -- comma separated bigints
  added_time     TIMESTAMP,
  deleted_time   TIMESTAMP,
  expiry_time    TIMESTAMP,
  media_active   BOOLEAN
);
CREATE INDEX idx__media__slug ON media (slug);






-- =====================




-- Add Tables for preferences on drinks, drugs, sextoys, lubes etc and link to categories and brands
-- Use this for promoting products and services to members

-- some products would not get autocompleted for general members, but would for specific subset of premium members. 
-- e.g. no hard drug suggestions


-- =====================


-- Create a standard set of Questions and Answers for members to answer.
-- Use this for auto tagging and adding likes/dislikes. This can be used for member matching and for promoting products and services to members
-- e.g. if a girl who has any form of double penetration in her likes, matches with a bi guy, and the guy likes another bi guy,
-- then they both get a suggestion to add the third guy to their hookup for a threesome.




-- =====================


-- Genders


CREATE TABLE gender_types (
  id                SMALLINT PRIMARY KEY,
  name              VARCHAR(64),
  description       TEXT,
  also_a_gender     INT,   --  gender_id, if this gender-type is also considered a gender.
  aliases           varchar(255)  -- comma separated strings
);


CREATE TABLE gender_groups (
  id                SMALLINT PRIMARY KEY,
  name              VARCHAR(64),
  description       TEXT,
  gender_type       SMALLINT,
  typical_bio_sex   SMALLINT, -- 1: F, 2: M, 3: Hermaphrodite
  desired_sex       SMALLINT -- 1: F, 2: M, 3: Hermaphrodite
);


CREATE TABLE genders (
  id                INT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  name              VARCHAR(64),
  description       TEXT,
  gender_group      INT,  -- NULL, if doesn't fit to a group
  gender_type       INT,  -- NULL, if doesn't fit to a type
  usage_popularity  INT
);


CREATE TABLE gender_translations (
  id                INT,
  iso_lang_locale   VARCHAR(8),
  name              VARCHAR(64),
  description       TEXT,
  PRIMARY KEY(id, iso_lang_locale)
);
-- CREATE INDEX idx____ ON category_tree ();


CREATE TABLE gender_aliases (
  id                INT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  gender_id         INT,
  iso_lang_locale   VARCHAR(8),
  alias             VARCHAR(64),
  description       TEXT,
  slang             BOOLEAN,
  vulger            BOOLEAN,
  derogatory        BOOLEAN
);
-- CREATE INDEX idx____ ON category_tree ();



-- Allow them to add custom genders





-- =====================


-- Attraction - Sexuality / Sexual Orientations




CREATE TABLE attraction_orientation_groups (
  id                        SMALLINT  PRIMARY KEY,
  name                      VARCHAR(64),
  description               TEXT,
  traditional_orientation   SMALLINT,  --  0: Asexual,  1: Heterosexual,  2: Homosexual,  3: Bisexual  --  -1: N/A
  strict                    BOOLEAN,   --  Only conforms to the traditional orientation
  prefers_appearance        SMALLINT,  --  0: cannot-infer, 1: Own-gender, 2: Opposite-Gender, 3: Both
  prefers_genitalia         SMALLINT   --  0: cannot-infer, 1: Own-sex, 2: Opposite-sex, 3: Both
);



CREATE TABLE attraction_to_partnergender_groups (
  id                        SMALLINT  PRIMARY KEY,
  name                      VARCHAR(64),
  description               TEXT,
  prefers_appearance        SMALLINT,  --  0: cannot-infer, 1: F, 2: M, 3: Both
  prefers_genitalia         SMALLINT   --  0: cannot-infer, 1: F, 2: M, 3: Both
);


CREATE TABLE attraction_sexuophilia_groups (
  id                        SMALLINT  PRIMARY KEY,
  name                      VARCHAR(64),
  description               TEXT,
  kink_level                SMALLINT  --  0 - 10.  0 means, it can be presented to even new members. 10 means, may god help you :)
);


CREATE TABLE attraction_orientations (
  id                    INT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  name                  VARCHAR(64),
  description           TEXT,
  prefers_appearance    INT,  --  -1: N/A, 0: None, 1: F, 2: M, 3: Both
  prefers_genitalia     INT,  --  -1: N/A, 0: None, 1: F, 2: M, 3: Both
  attraction_orientation_group          SMALLINT,
  attraction_to_partnergender_groups    SMALLINT,
  attraction_sexuophilia_group          SMALLINT,
  gender_type           SMALLINT,
  gender_group          SMALLINT,
  aliases               TEXT,  -- comma separated strings
  usage_popularity      INT  DEFAULT -1
);


CREATE TABLE attraction_orientations_l2 (
  id                    INT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  name                  VARCHAR(64),
  description           TEXT,
  blah                  SMALLINT
);


-- e.g. Orally Bi etc.
CREATE TABLE attraction_orientations_sexual_prefs (
  id                INT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  name              VARCHAR(64),
  description       TEXT,
  attraction_orientation_id     INT,
);





-- =====================


-- Kinks / Paraphilias




CREATE TABLE kink_groups (
  id                    SMALLINT PRIMARY KEY,
  name                  VARCHAR(64),
  description           TEXT,
  kink_level            SMALLINT,  --  0 - 10.  0 means, it can be presented to even new members. 10 means, it is only for the most kink-elevated members.
  people_related        BOOLEAN,
  body_related          BOOLEAN,
  sensation_related     BOOLEAN,
  animal_related        BOOLEAN,
  object_related        BOOLEAN,
);





-- =====================


-- taxonomy



CREATE TABLE category_tree (
  node_id       BIGINT PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  parent_node   BIGINT REFERENCES category_tree(node_id),
  name          VARCHAR(64),
  description   TEXT
);
CREATE INDEX idx__category_tree__parent_node ON category_tree (parent_node);

CREATE TABLE category_translations (
  node_id       BIGINT  PRIMARY KEY,
  locale        VARCHAR(8),
  name          VARCHAR(64),
  description   TEXT
);


CREATE TABLE tags (
  tag_id                  BIGINT  PRIMARY KEY  GENERATED ALWAYS AS IDENTITY,
  tag_type_category_id    BIGINT -- person, place, thing
);


--





--


