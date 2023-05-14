-- Borrar tablas
DROP TABLE IF EXISTS digimons_mega_champion CASCADE;
DROP TABLE IF EXISTS chosen_children CASCADE;
DROP TABLE IF EXISTS digimons_rookie CASCADE;
DROP TABLE IF EXISTS emblems CASCADE;
DROP TABLE IF EXISTS children_emblems;
DROP TABLE IF EXISTS digimons_champion CASCADE;
DROP TABLE IF EXISTS users;
DROP TYPE IF EXISTS types;

DROP EXTENSION IF EXISTS "uuid-ossp";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TYPE types AS ENUM (
  'brave', 'love', 'friendship', 'light', 'hope',
  'knowledge', 'purity', 'kindness', 'honesty'
);

-- Creación tablas

CREATE TABLE IF NOT EXISTS emblems (
  id uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
  name types NOT NULL
);

CREATE TABLE IF NOT EXISTS digimons_mega_champion (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  mega TEXT NOT NULL UNIQUE,
  level TEXT
);

CREATE TABLE IF NOT EXISTS digimons_champion (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  champion TEXT NOT NULL UNIQUE,
  level TEXT
  digimons_mega_champion_id uuid REFERENCES digimons_mega_champion
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS digimons_rookie (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  rookie TEXT NOT NULL UNIQUE,
  level TEXT,
  digimons_champion_id uuid REFERENCES digimons_champion
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS chosen_children (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  child TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL,
  digimons_rookie_id uuid REFERENCES digimons_rookie
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS children_emblems (
  chosen_children_id uuid REFERENCES chosen_children (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  emblems_id uuid REFERENCES emblems (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT children_emblems_id PRIMARY KEY (chosen_children_id, emblems_id)
);

CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    nickname TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

