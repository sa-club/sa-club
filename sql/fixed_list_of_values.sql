
-- SQL-запросы к вебинару «Фиксированный набор значений атрибута: способы реализации»
-- https://youtube.com/live/ui09iuNVk_Y


--------------------------------------
-- DDL. Перечисление (MySQL)
--------------------------------------

CREATE TABLE player (
	id INT NOT NULL,
	player_name VARCHAR(100) NOT NULL,
	playing_hand ENUM('левая', 'правая') ,
	PRIMARY KEY (id)
) ;

--------------------------------------
-- DDL. Перечисление (PostgreSQL)
--------------------------------------

CREATE TYPE SIDE AS ENUM ('левая', 'правая');

CREATE TABLE player (
	id INT NOT NULL,
	player_name VARCHAR(100) NOT NULL,
	playing_hand SIDE NOT NULL,
	CONSTRAINT newtable_pk PRIMARY KEY (id)
);

--------------------------------------
-- DDL. Ограничение (Oracle)
--------------------------------------

CREATE TABLE player (
	id NUMBER NOT NULL,
	player_name VARCHAR2(100),
	playing_hand VARCHAR2(10),
	CONSTRAINT player_pk PRIMARY KEY (id),
	CONSTRAINT side CHECK (playing_hand IN ('левая', 'правая'))
) ;

--------------------------------------
-- Условное обозначение (PostgreSQL)
--------------------------------------

-- Создание таблицы

CREATE TABLE test_schema.player (
	id int NOT NULL, 
	player_name varchar(100) NOT NULL, 
	playing_hand bool NULL, 
	CONSTRAINT player_pkey PRIMARY KEY (id)
);

COMMENT ON COLUMN test_schema.player.id IS 'ИД записи';
COMMENT ON COLUMN test_schema.player.player_name IS 'ФИО игрока';
COMMENT ON COLUMN test_schema.player.playing_hand IS 'true - правая, false - левая';

-- Вариант: playing_hand int(1) NOT NULL COMMENT '1 - правая, 2 - левая')

-- Запрос на выборку

SELECT 
	p.id "ИД записи", p.player_name "ФИО игрока",
	CASE
		WHEN p.playing_hand = true THEN 'Правая'
		WHEN p.playing_hand = false THEN 'Левая'
	END "Игровая рука"
FROM 
	player p;

--------------------------------------
-- Гибрид. Тип + ограничение (имитация перечисления, PostgreSQL)
--------------------------------------

CREATE TABLE grade (
	id int NOT NULL,
	subject_id int NULL,
	student_id int NULL,
	grade_date date NULL,
	grade int NOT NULL,
	CONSTRAINT grade_check CHECK ((grade >= 1) AND (grade <= 5)),
	CONSTRAINT grade_pk PRIMARY KEY (id)
);

--------------------------------------
-- Справочник (PostgreSQL)
--------------------------------------

-- Создание справочника

CREATE TABLE playing_hand (
	id int NOT NULL,
	hand varchar NULL,
	CONSTRAINT playing_hand_pk PRIMARY KEY (id)
);

-- Создание основной таблицы и внешнего ключа

CREATE TABLE player (
	id int NOT NULL,
	player_name varchar(100) NOT NULL,
	playing_hand_id int NULL,
	CONSTRAINT newtable_pk PRIMARY KEY (id),
	CONSTRAINT player_fk FOREIGN KEY (playing_hand_id) REFERENCES playing_hand(id)
);

-- Запрос на выборку

SELECT
	p.id "ИД", p.player_name "ФИО игрока", h.hand "Игровая рука"
FROM
	player p JOIN playing_hand h ON p.playing_hand_id = h.id;

