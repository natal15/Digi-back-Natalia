-- Borrado de todo
DROP TABLE IF EXISTS digimons_mega_champion CASCADE;
DROP TABLE IF EXISTS chosen_children CASCADE;
DROP TABLE IF EXISTS digimons_rookie;
DROP TABLE IF EXISTS emblems CASCADE;
DROP TABLE IF EXISTS children_emblems;
DROP TABLE IF EXISTS digimons_champion;
DROP TABLE IF EXISTS users;
DROP TYPE IF EXISTS types;

DROP EXTENSION IF EXISTS "uuid-ossp";