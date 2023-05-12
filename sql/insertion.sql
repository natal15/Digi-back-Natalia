-- Inserción de filas para "DIGIMONS_MEGA_CHAMPION"
INSERT INTO digimons_mega_champion (
  name, level
) VALUES (
  'Metal-Greymon', 'Mega_Champion'
   
);

INSERT INTO digimons_mega_champion (
  name, level
) VALUES (
  'Skull-Greymon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level
) VALUES (
  'Garudamon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level
) VALUES (
  'Were-Garurumon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Magnangemon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level
) VALUES (
  'Zudomon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Floramon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Megakabuterimon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Angewomon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Paildramon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Silphymon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Shakkoumon', 'Mega_Champion'
);

INSERT INTO digimons_mega_champion (
  name, level 
) VALUES (
  'Dinobeemon', 'Mega_Champion'
);

-- Inserción de filas para "DIGIMONS_CHAMPION"
INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Greymon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Metal-Greymon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Birdramon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Garudamon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id 
) VALUES (
  'Garurumon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Were-Garurumon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id 
) VALUES (
  'Angemon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Magnangemon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id 
) VALUES (
  'Ikkakumon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Zudomon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Togemon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Floramon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id 
) VALUES (
  'Kabuterimon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Mega-Kabuterimon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Gatomon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Angewomon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Exveemon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Paildramon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Aquilamon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Silphymon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Ankylomon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Shakkoumon'
  )
);

INSERT INTO digimons_champion (
  name, level, digimons_mega_champion_id
) VALUES (
  'Stingmon', 'Champion', (
    SELECT id FROM digimons_mega_champion WHERE name LIKE 'Dinobeemon'
  )
);

-- Inserción de filas para "DIGIMONS_ROOKIE"
INSERT INTO digimons_rookie (
  name, level, digimons_champion_id
) VALUES (
  'Agumon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Greymon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id
) VALUES (
  'Piyomon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Birdramon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id
) VALUES (
  'Gabumon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Garurumon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Patamon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Angemon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id
) VALUES (
  'Gomamon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Ikkakumon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id
) VALUES (
  'Palmon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Togemon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Tentomon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Kabuterimon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Salamon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Gatomon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Veemon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Exveemon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Hawkmon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Aquilamon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Armadimon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Ankylomon'
  )
);

INSERT INTO digimons_rookie (
  name, level, digimons_champion_id 
) VALUES (
  'Wormmon', 'Rookie', (
    SELECT id FROM digimons_champion WHERE name LIKE 'Stingmon'
  )
);

-- Inserción de filas para "CHOSEN_CHILDREN"
INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Tai', 'Er prota', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Agumon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Sora', 'La del pajarraco', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Piyomon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Matt', 'Er que no es el prota', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Gabumon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'TK', 'Er zagalillo', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Patamon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Joe', 'Er padre', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Gomamon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Mimi', 'la guapa', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Palmon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Izzy', 'Er listo', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Tentomon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Kairi', 'La nueva', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Salamon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Davis', 'Er nuevo Tai', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Veemon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Yoli', 'La nueva Sora', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Hawkmon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Cody', 'Elle', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Armadimon'
  )
);

INSERT INTO chosen_children (
  name, description, digimons_rookie_id
) VALUES (
  'Ken Ichijouji', 'Er emo', (
    SELECT id FROM digimons_rookie WHERE name LIKE 'Wormmon'
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
  (SELECT id FROM chosen_children WHERE name LIKE 'Tai'),
  (SELECT id FROM emblems WHERE name = 'brave')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Sora'),
  (SELECT id FROM emblems WHERE name = 'love')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Matt'),
  (SELECT id FROM emblems WHERE name = 'friendship')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'TK'),
  (SELECT id FROM emblems WHERE name = 'hope')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Joe'),
  (SELECT id FROM emblems WHERE name = 'honesty')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Mimi'),
  (SELECT id FROM emblems WHERE name = 'purity')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Izzy'),
  (SELECT id FROM emblems WHERE name = 'knowledge')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Kairi'),
  (SELECT id FROM emblems WHERE name = 'light')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Davis'),
  (SELECT id FROM emblems WHERE name = 'brave')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Davis'),
  (SELECT id FROM emblems WHERE name = 'friendship')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Yoli'),
  (SELECT id FROM emblems WHERE name = 'love')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Yoli'),
  (SELECT id FROM emblems WHERE name = 'purity')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Cody'),
  (SELECT id FROM emblems WHERE name = 'knowledge')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Cody'),
  (SELECT id FROM emblems WHERE name = 'honesty')
);

INSERT INTO children_emblems (
  chosen_children_id, emblems_id
) VALUES (
  (SELECT id FROM chosen_children WHERE name LIKE 'Ken Ichijouji'),
  (SELECT id FROM emblems WHERE name = 'kindness')
);


