-- Материалы к теме "Словари данных". MySQL. Информационаная схема

------------------------------------------------------------------------

-- Источник данных: https://dev.mysql.com/doc/mysql-infoschema-excerpt/8.0/en/information-schema-general-table-reference.html 

------------------------------------------------------------------------

-- Выборочный список таблиц information_schema

-- Информация о таблицах базы данных
SELECT * FROM information_schema.tables;

-- Информация о полях таблиц
SELECT * FROM information_schema.columns;

-- Информация о внешних ключах
SELECT * FROM information_schema.referential_constraints;

-- Информация о хранимых процедурах и функциях
SELECT * FROM information_schema.routines;

-- Информация о схемах
SELECT * FROM information_schema.schemata;

-- Информация о представлениях
SELECT * FROM information_schema.views;

-----------------------------------------------------------------------------

-- Пример запроса для получения описания таблиц БД на основе словаря данных

SELECT
  c.table_schema, 
  c.table_name as "Таблица",
  t.table_comment as "Комментарий к таблице",
  c.ordinal_position as "№ п.п",
  c.column_name as "Поле",
  c.column_comment as "Комментарий к полю",
  c.column_type as "Тип",
  CASE WHEN c.column_key = 'PRI' THEN 'PK' END as "Ключ",
  c.is_nullable as "NULL"
FROM
  information_schema.columns c
  JOIN information_schema.tables t ON c.table_name = t.table_name
  AND c.table_schema = t.table_schema
WHERE
  t.table_type = 'BASE TABLE'
  AND t.table_schema IN ('stud', 'book') 
ORDER BY
  c.table_schema, 
  c.table_name,
  c.ordinal_position;


-----------------------------------------------------------------------------

-- Все таблицы information_schema

-- Доступные пользователи или роли для текущего пользователя или роли
SELECT * FROM INFORMATION_SCHEMA.ADMINISTRABLE_ROLE_AUTHORIZATIONS;

-- Применимые роли для текущего пользователя
SELECT * FROM INFORMATION_SCHEMA.APPLICABLE_ROLES;

-- Доступные наборы символов
SELECT * FROM INFORMATION_SCHEMA.CHARACTER_SETS;

-- Ограничения CHECK таблицы и столбца
SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS;

-- Набор символов, применимый к каждой сортировке
SELECT * FROM INFORMATION_SCHEMA.COLLATION_CHARACTER_SET_APPLICABILITY;

-- Сопоставления для каждого набора символов
SELECT * FROM INFORMATION_SCHEMA.COLLATIONS;

-- Привилегии, определенные для столбцов
SELECT * FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES;

-- Статистика гистограммы для значений столбца
SELECT * FROM INFORMATION_SCHEMA.COLUMN_STATISTICS;

-- Столбцы в каждой таблице
SELECT * FROM INFORMATION_SCHEMA.COLUMNS;

-- Атрибуты столбцов для основных и дополнительных механизмов хранения
SELECT * FROM INFORMATION_SCHEMA.COLUMNS_EXTENSIONS;

-- Роли включены в текущем сеансе
SELECT * FROM INFORMATION_SCHEMA.ENABLED_ROLES;

-- Свойства механизма хранения
SELECT * FROM INFORMATION_SCHEMA.ENGINES;

-- События менеджера событий
SELECT * FROM INFORMATION_SCHEMA.EVENTS;

-- Файлы, в которых хранятся данные табличного пространства
SELECT * FROM INFORMATION_SCHEMA.FILES;

-- Какие ключевые столбцы имеют ограничения
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE;

-- Ключевые слова MySQL
SELECT * FROM INFORMATION_SCHEMA.KEYWORDS;

-- Информация, полученная в результате трассировки оптимизатора
SELECT * FROM INFORMATION_SCHEMA.OPTIMIZER_TRACE;

-- Сохраненные параметры процедуры и сохраненные возвращаемые значения функции
SELECT * FROM INFORMATION_SCHEMA.PARAMETERS;

-- Информация о разделах таблиц
SELECT * FROM INFORMATION_SCHEMA.PARTITIONS;

-- Информация о плагинах
SELECT * FROM INFORMATION_SCHEMA.PLUGINS;

-- Информация о выполняющихся в данный момент потоках
SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST;

-- Информация о профилировании операторов
SELECT * FROM INFORMATION_SCHEMA.PROFILING;

-- Информация о внешних ключах
SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS;

-- Информация о группе ресурсов
SELECT * FROM INFORMATION_SCHEMA.RESOURCE_GROUPS;

-- Привилегии столбца для ролей, доступных или предоставленных текущими включенными ролями
SELECT * FROM INFORMATION_SCHEMA.ROLE_COLUMN_GRANTS;

-- Обычные привилегии для ролей, доступных или предоставленных текущими включенными ролями
SELECT * FROM INFORMATION_SCHEMA.ROLE_ROUTINE_GRANTS;

-- Табличные привилегии для ролей, доступных или предоставленных текущими включенными ролями
SELECT * FROM INFORMATION_SCHEMA.ROLE_TABLE_GRANTS;

-- Информация о сохраненных подпрограммах (процедуры и функций)
SELECT * FROM INFORMATION_SCHEMA.ROUTINES;

-- Привилегии, определенные в схемах
SELECT * FROM INFORMATION_SCHEMA.SCHEMA_PRIVILEGES;

-- Информация о схемах
SELECT * FROM INFORMATION_SCHEMA.SCHEMATA;

-- Параметры схемы
SELECT * FROM INFORMATION_SCHEMA.SCHEMATA_EXTENSIONS;

-- Столбцы в каждой таблице, в которых хранятся пространственные данные
SELECT * FROM INFORMATION_SCHEMA.ST_GEOMETRY_COLUMNS;

-- Доступные системы пространственной привязки
SELECT * FROM INFORMATION_SCHEMA.ST_SPATIAL_REFERENCE_SYSTEMS;

-- Допустимые единицы для ST_Distance()
SELECT * FROM INFORMATION_SCHEMA.ST_UNITS_OF_MEASURE;

-- Статистика индекса таблицы
SELECT * FROM INFORMATION_SCHEMA.STATISTICS;

-- Какие таблицы имеют ограничения
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;

-- Атрибуты ограничений таблицы для первичных и вторичных механизмов хранения
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS_EXTENSIONS;

-- Привилегии, определенные для таблиц
SELECT * FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES;

-- Информация о таблицах
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Атрибуты таблиц для первичных и вторичных механизмов хранения
SELECT * FROM INFORMATION_SCHEMA.TABLES_EXTENSIONS;

-- Информация о табличных пространствах
SELECT * FROM INFORMATION_SCHEMA.TABLESPACES;

-- Атрибуты табличного пространства для первичных механизмов хранения
SELECT * FROM INFORMATION_SCHEMA.TABLESPACES_EXTENSIONS;

-- Информация о триггерах
SELECT * FROM INFORMATION_SCHEMA.TRIGGERS;

-- Комментарии и атрибуты пользователей
SELECT * FROM INFORMATION_SCHEMA.USER_ATTRIBUTES;

-- Привилегии определяются глобально для каждого пользователя
SELECT * FROM INFORMATION_SCHEMA.USER_PRIVILEGES;

-- Сохраненные функции, используемые в представлениях
SELECT * FROM INFORMATION_SCHEMA.VIEW_ROUTINE_USAGE;

-- Таблицы и представления, используемые в представлениях
SELECT * FROM INFORMATION_SCHEMA.VIEW_TABLE_USAGE;

-- Информация о представлениях
SELECT * FROM INFORMATION_SCHEMA.VIEWS;
