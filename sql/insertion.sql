-- Inserción de filas para "DIGIMONS_MEGA_CHAMPION"
INSERT INTO digimons_mega_champion (
  mega, level
) VALUES (
  'Metal-Greymon', 'Mega_Champion'
   
);

INSERT INTO digimons_mega_champion (
  mega, level
) VALUES (
  'Garudamon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level
) VALUES (
  'Were-Garurumon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Magnangemon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level
) VALUES (
  'Zudomon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Floramon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Megakabuterimon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Angewomon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Paildramon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Silphymon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Shakkoumon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  mega, level 
) VALUES (
  'Dinobeemon', 'Mega_Champion'
);

-- Inserción de filas para "DIGIMONS_CHAMPION"
INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Greymon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Metal-Greymon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Birdramon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Garudamon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id 
) VALUES (
  'Garurumon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Were-Garurumon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id 
) VALUES (
  'Angemon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Magnangemon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id 
) VALUES (
  'Ikkakumon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Zudomon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Togemon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Floramon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id 
) VALUES (
  'Kabuterimon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Megakabuterimon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Gatomon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Angewomon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Exveemon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Paildramon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Aquilamon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Silphymon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Ankylomon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Shakkoumon'
  )
);

INSERT INTO digimons_champion (
  champion, level, digimons_mega_champion_id
) VALUES (
  'Stingmon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE mega LIKE 'Dinobeemon'
  )
);

-- Inserción de filas para "DIGIMONS_ROOKIE"
INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id
) VALUES (
  'Agumon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Greymon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id
) VALUES (
  'Piyomon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Birdramon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id
) VALUES (
  'Gabumon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Garurumon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Patamon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Angemon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id
) VALUES (
  'Gomamon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Ikkakumon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id
) VALUES (
  'Palmon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Togemon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Tentomon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Kabuterimon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Salamon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Gatomon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Veemon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Exveemon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Hawkmon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Aquilamon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Armadimon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Ankylomon'
  )
);

INSERT INTO digimons_rookie (
  rookie, level, digimons_champion_id 
) VALUES (
  'Wormmon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE champion LIKE 'Stingmon'
  )
);

-- Inserción de filas para "CHOSEN_CHILDREN"
INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Tai', 'Er prota', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Agumon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Sora', 'La del pajarraco', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Piyomon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Matt', 'Er que no es el prota', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Gabumon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'TK', 'Er zagalillo', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Patamon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Joe', 'Er padre', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Gomamon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Mimi', 'la guapa', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Palmon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Izzy', 'Er listo', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Tentomon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Kairi', 'La nueva', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Salamon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Davis', 'Er nuevo Tai', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Veemon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Yoli', 'La nueva Sora', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Hawkmon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Cody', 'Elle', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Armadimon'
  )
);

INSERT INTO chosen_children (
  child, description, digimons_rookie_id
) VALUES (
  'Ken Ichijouji', 'Er emo', (
    SELECT id FROM digimons_rookie WHERE rookie LIKE 'Wormmon'
  )
);


-- Insertar datos en emblems

INSERT INTO emblems (
  name
) VALUES (
  'brave'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'friendship'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'love'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'hope'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'knowledge'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'light'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'kindness'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'honesty'::types
);

INSERT INTO emblems (
  name
) VALUES (
  'purity'::types
);

-- Inserción de filas para "CHILDREN_EMBLEMS"
INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Tai'),
  (SELECT id FROM emblems WHERE name = 'brave')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Sora'),
  (SELECT id FROM emblems WHERE name = 'love')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Matt'),
  (SELECT id FROM emblems WHERE name = 'friendship')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'TK'),
  (SELECT id FROM emblems WHERE name = 'hope')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Joe'),
  (SELECT id FROM emblems WHERE name = 'honesty')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Mimi'),
  (SELECT id FROM emblems WHERE name = 'purity')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Izzy'),
  (SELECT id FROM emblems WHERE name = 'knowledge')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Kairi'),
  (SELECT id FROM emblems WHERE name = 'light')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Davis'),
  (SELECT id FROM emblems WHERE name = 'brave')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Davis'),
  (SELECT id FROM emblems WHERE name = 'friendship')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Yoli'),
  (SELECT id FROM emblems WHERE name = 'love')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Yoli'),
  (SELECT id FROM emblems WHERE name = 'purity')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Cody'),
  (SELECT id FROM emblems WHERE name = 'knowledge')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Cody'),
  (SELECT id FROM emblems WHERE name = 'honesty')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE child LIKE 'Ken Ichijouji'),
  (SELECT id FROM emblems WHERE name = 'kindness')
);


