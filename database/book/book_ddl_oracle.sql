CREATE TABLE author (
    id          NUMBER NOT NULL,
    last_name   VARCHAR2(100),
    first_name  VARCHAR2(100),
    middle_name VARCHAR2(100),
    birthday    DATE
);

ALTER TABLE author ADD CONSTRAINT author_pk PRIMARY KEY ( id );

CREATE TABLE author_role (
    id               NUMBER NOT NULL,
    author_role_name VARCHAR2(50)
);

COMMENT ON COLUMN author_role.id IS
    'ИД записи';

COMMENT ON COLUMN author_role.author_role_name IS
    'Наименование роли';

ALTER TABLE author_role ADD CONSTRAINT author_role_pk PRIMARY KEY ( id );

CREATE TABLE book (
    id              NUMBER NOT NULL,
    isbn            VARCHAR2(30) NOT NULL,
    book_name       VARCHAR2(4000),
    udk             VARCHAR2(30),
    bbk             VARCHAR2(30),
    publish_year    NUMBER,
    pages_count     NUMBER,
    circulation     NUMBER,
    annotation      CLOB,
    reader_type_id  NUMBER NOT NULL,
    book_format_id  NUMBER NOT NULL,
    pictures        NUMBER,
    signed          DATE,
    sheetes         NUMBER,
    order_num       VARCHAR2(50),
    cover_type_id   NUMBER NOT NULL,
    book_type_id    NUMBER NOT NULL,
    comments        VARCHAR2(4000),
    cover_file_name VARCHAR2(500),
    language_id     NUMBER NOT NULL
);

COMMENT ON TABLE book IS
    'Книга. Основная таблица';

COMMENT ON COLUMN book.id IS
    'ИД записи';

COMMENT ON COLUMN book.isbn IS
    'Код ISBN';

COMMENT ON COLUMN book.book_name IS
    'Название книги';

COMMENT ON COLUMN book.udk IS
    'Код УДК';

COMMENT ON COLUMN book.bbk IS
    'Код ББК';

COMMENT ON COLUMN book.publish_year IS
    'Год издания';

COMMENT ON COLUMN book.pages_count IS
    'Количество страниц';

COMMENT ON COLUMN book.circulation IS
    'Тираж';

COMMENT ON COLUMN book.annotation IS
    'Аннотация';

COMMENT ON COLUMN book.reader_type_id IS
    'ИД типа аудитории по возрасту';

COMMENT ON COLUMN book.book_format_id IS
    'ИД формата';

COMMENT ON COLUMN book.pictures IS
    'Наличие иллюстраций (1 - есть иллюстрации, NULL - нет иллюстраций)';

COMMENT ON COLUMN book.signed IS
    'Подписано в печать';

COMMENT ON COLUMN book.sheetes IS
    'Количество условных печатных листов';

COMMENT ON COLUMN book.order_num IS
    'Номер заказа';

COMMENT ON COLUMN book.cover_type_id IS
    'ИД типа обложки';

COMMENT ON COLUMN book.book_type_id IS
    'ИД типа издания';

COMMENT ON COLUMN book.comments IS
    'Комментарии';

COMMENT ON COLUMN book.cover_file_name IS
    'Наименование файла с обложкой книги';

COMMENT ON COLUMN book.language_id IS
    'ИД языка издания';

CREATE INDEX book__idx ON
    book (
        book_name
    ASC );

ALTER TABLE book ADD CONSTRAINT book_pk PRIMARY KEY ( id );

ALTER TABLE book ADD CONSTRAINT book_isbn_un UNIQUE ( isbn );

CREATE TABLE book_book_group (
    id            NUMBER NOT NULL,
    book_id       NUMBER NOT NULL,
    book_group_id NUMBER NOT NULL
);

COMMENT ON COLUMN book_book_group.id IS
    'ИД записи';

ALTER TABLE book_book_group ADD CONSTRAINT book_book_group_pk PRIMARY KEY ( id );

ALTER TABLE book_book_group ADD CONSTRAINT book_book_group_un UNIQUE ( book_id,
                                                                       book_group_id );

CREATE TABLE book_content (
    id               NUMBER NOT NULL,
    book_id          NUMBER NOT NULL,
    novel_version_id NUMBER NOT NULL,
    num              NUMBER
);

COMMENT ON COLUMN book_content.id IS
    'ИД записи';

COMMENT ON COLUMN book_content.num IS
    'Номер по-порядку';

ALTER TABLE book_content ADD CONSTRAINT book_content_pk PRIMARY KEY ( id );

CREATE TABLE book_format (
    id                   NUMBER NOT NULL,
    book_format_group_id NUMBER NOT NULL,
    sheet_length         NUMBER,
    sheet_width          NUMBER,
    part_sheet           NUMBER
);

COMMENT ON TABLE book_format IS
    'Справочник форматов';

COMMENT ON COLUMN book_format.id IS
    'ИД записи';

COMMENT ON COLUMN book_format.sheet_length IS
    'Длина листа';

COMMENT ON COLUMN book_format.sheet_width IS
    'Ширина  листа';

COMMENT ON COLUMN book_format.part_sheet IS
    'Доля листа';

ALTER TABLE book_format ADD CONSTRAINT book_format_pk PRIMARY KEY ( id );

CREATE TABLE book_format_group (
    id         NUMBER NOT NULL,
    group_name VARCHAR2(4000)
);

COMMENT ON TABLE book_format_group IS
    'Справочник групп форматов';

COMMENT ON COLUMN book_format_group.id IS
    'ИД записи';

COMMENT ON COLUMN book_format_group.group_name IS
    'Код формата';

ALTER TABLE book_format_group ADD CONSTRAINT book_format_group_pk PRIMARY KEY ( id );

ALTER TABLE book_format_group ADD CONSTRAINT book_format_group_un UNIQUE ( group_name );

CREATE TABLE book_group (
    id                 NUMBER NOT NULL,
    group_name         VARCHAR2(200) NOT NULL,
    book_group_type_id NUMBER NOT NULL
);

COMMENT ON COLUMN book_group.id IS
    'Группа изданий';

COMMENT ON COLUMN book_group.group_name IS
    'Наименование группы';

ALTER TABLE book_group ADD CONSTRAINT book_group_pk PRIMARY KEY ( id );

CREATE TABLE book_group_type (
    id                   NUMBER NOT NULL,
    book_group_type_name VARCHAR2(50)
);

COMMENT ON TABLE book_group_type IS
    'Справочник типов группировки изданий';

COMMENT ON COLUMN book_group_type.id IS
    'ИД записи';

COMMENT ON COLUMN book_group_type.book_group_type_name IS
    'Наименование типа группы';

ALTER TABLE book_group_type ADD CONSTRAINT book_group_type_pk PRIMARY KEY ( id );

ALTER TABLE book_group_type ADD CONSTRAINT book_group_type_un UNIQUE ( book_group_type_name );

CREATE TABLE book_paper (
    id       NUMBER NOT NULL,
    book_id  NUMBER NOT NULL,
    paper_id NUMBER NOT NULL
);

COMMENT ON TABLE book_paper IS
    'Жанры книг';

COMMENT ON COLUMN book_paper.id IS
    'ИД записи';

COMMENT ON COLUMN book_paper.paper_id IS
    'ИД типа бумаги';

ALTER TABLE book_paper ADD CONSTRAINT book_paper_pk PRIMARY KEY ( id );

ALTER TABLE book_paper ADD CONSTRAINT paper_book_paper_un UNIQUE ( book_id,
                                                                   paper_id );

CREATE TABLE book_print_type (
    id            NUMBER NOT NULL,
    book_id       NUMBER NOT NULL,
    print_type_id NUMBER NOT NULL
);

COMMENT ON COLUMN book_print_type.id IS
    'ИД записи';

ALTER TABLE book_print_type ADD CONSTRAINT book_print_type_pk PRIMARY KEY ( id );

ALTER TABLE book_print_type ADD CONSTRAINT book_print_type_un UNIQUE ( book_id,
                                                                       print_type_id );

CREATE TABLE book_type (
    id             NUMBER NOT NULL,
    book_type_name VARCHAR2(50)
);

COMMENT ON TABLE book_type IS
    'Справочник типов изданий (литературное, научное и т.п.)';

COMMENT ON COLUMN book_type.id IS
    'ИД записи';

COMMENT ON COLUMN book_type.book_type_name IS
    'Наименование роли';

ALTER TABLE book_type ADD CONSTRAINT book_type_name_pk PRIMARY KEY ( id );

ALTER TABLE book_type ADD CONSTRAINT book_type_name_name_un UNIQUE ( book_type_name );

CREATE TABLE cover_type (
    id         NUMBER NOT NULL,
    cover_name VARCHAR2(50)
);

COMMENT ON TABLE cover_type IS
    'Справочник типов обложек';

COMMENT ON COLUMN cover_type.id IS
    'ИД записи';

COMMENT ON COLUMN cover_type.cover_name IS
    'Наименование типа обложки';

ALTER TABLE cover_type ADD CONSTRAINT cover_type_pk PRIMARY KEY ( id );

ALTER TABLE cover_type ADD CONSTRAINT cover_type_un UNIQUE ( cover_name );

CREATE TABLE genre (
    id         NUMBER NOT NULL,
    genre_name VARCHAR2(100)
);

COMMENT ON COLUMN genre.id IS
    'ИД записи';

ALTER TABLE genre ADD CONSTRAINT genre_pk PRIMARY KEY ( id );

ALTER TABLE genre ADD CONSTRAINT genre_un UNIQUE ( genre_name );

CREATE TABLE language (
    id            NUMBER NOT NULL,
    language_name VARCHAR2(50)
);

COMMENT ON COLUMN language.id IS
    'ИД записи';

COMMENT ON COLUMN language.language_name IS
    'Название языка';

ALTER TABLE language ADD CONSTRAINT language_pk PRIMARY KEY ( id );

CREATE TABLE novel (
    id         NUMBER NOT NULL,
    novel_name VARCHAR2(1000),
    novel_year NUMBER
);

COMMENT ON COLUMN novel.id IS
    'ИД записи';

COMMENT ON COLUMN novel.novel_name IS
    'Название произведения';

COMMENT ON COLUMN novel.novel_year IS
    'Год создания (завершения) произведения';

ALTER TABLE novel ADD CONSTRAINT novel_pk PRIMARY KEY ( id );

CREATE TABLE novel_author (
    id        NUMBER NOT NULL,
    novel_id  NUMBER NOT NULL,
    author_id NUMBER NOT NULL
);

COMMENT ON COLUMN novel_author.id IS
    'ИД записи';

ALTER TABLE novel_author ADD CONSTRAINT novel_author_pk PRIMARY KEY ( id );

CREATE TABLE novel_genre (
    id       NUMBER NOT NULL,
    genre_id NUMBER NOT NULL,
    novel_id NUMBER NOT NULL
);

COMMENT ON COLUMN novel_genre.id IS
    'ИД записи';

ALTER TABLE novel_genre ADD CONSTRAINT novel_genre_pk PRIMARY KEY ( id );

CREATE TABLE novel_version (
    id                    NUMBER NOT NULL,
    novel_id              NUMBER NOT NULL,
    novel_version_name    VARCHAR2(500),
    novel_version_type_id NUMBER NOT NULL
);

COMMENT ON COLUMN novel_version.id IS
    'ИД записи';

COMMENT ON COLUMN novel_version.novel_version_name IS
    'Название версии произведения';

ALTER TABLE novel_version ADD CONSTRAINT novel_version_pk PRIMARY KEY ( id );

CREATE TABLE novel_version_author (
    id               NUMBER NOT NULL,
    author_id        NUMBER NOT NULL,
    novel_version_id NUMBER NOT NULL,
    author_role_id   NUMBER NOT NULL
);

COMMENT ON COLUMN novel_version_author.id IS
    'ИД записи';

CREATE TABLE novel_version_language (
    id               NUMBER NOT NULL,
    novel_version_id NUMBER NOT NULL,
    language_id      NUMBER NOT NULL
);

COMMENT ON COLUMN novel_version_language.id IS
    'ИД записи';

CREATE TABLE novel_version_type (
    id                      NUMBER NOT NULL,
    novel_version_type_name VARCHAR2(50)
);

COMMENT ON COLUMN novel_version_type.id IS
    'ИД записи';

COMMENT ON COLUMN novel_version_type.novel_version_type_name IS
    'Наименование типа версии';

ALTER TABLE novel_version_type ADD CONSTRAINT novel_version_type_pk PRIMARY KEY ( id );

CREATE TABLE paper_type (
    id         NUMBER NOT NULL,
    paper_name VARCHAR2(100)
);

COMMENT ON TABLE paper_type IS
    'Тип бумаги';

COMMENT ON COLUMN paper_type.id IS
    'ИД записи';

COMMENT ON COLUMN paper_type.paper_name IS
    'Тип бумаги';

ALTER TABLE paper_type ADD CONSTRAINT paper_type_pk PRIMARY KEY ( id );

ALTER TABLE paper_type ADD CONSTRAINT genrev1_genre_name_un UNIQUE ( paper_name );

CREATE TABLE print_type (
    id        NUMBER NOT NULL,
    type_name VARCHAR2(50)
);

COMMENT ON TABLE print_type IS
    'Тип печати';

COMMENT ON COLUMN print_type.id IS
    'ИД записи';

COMMENT ON COLUMN print_type.type_name IS
    'Наименование типа';

ALTER TABLE print_type ADD CONSTRAINT print_type_pk PRIMARY KEY ( id );

ALTER TABLE print_type ADD CONSTRAINT print_type_un UNIQUE ( type_name );

CREATE TABLE publish_group (
    id                    NUMBER NOT NULL,
    book_id               NUMBER NOT NULL,
    last_name             VARCHAR2(100),
    first_name            VARCHAR2(100),
    middle_name           VARCHAR2(100),
    publish_group_role_id NUMBER NOT NULL
);

COMMENT ON TABLE publish_group IS
    'Группа подготовки издания';

COMMENT ON COLUMN publish_group.id IS
    'ИД записи';

ALTER TABLE publish_group ADD CONSTRAINT publish_group_pk PRIMARY KEY ( id );

CREATE TABLE publish_group_role (
    id        NUMBER NOT NULL,
    role_name VARCHAR2(50)
);

COMMENT ON TABLE publish_group_role IS
    'Справочник ролей издательской группы';

COMMENT ON COLUMN publish_group_role.id IS
    'ИД записи';

COMMENT ON COLUMN publish_group_role.role_name IS
    'Наименование роли';

ALTER TABLE publish_group_role ADD CONSTRAINT publish_group_role_pk PRIMARY KEY ( id );

ALTER TABLE publish_group_role ADD CONSTRAINT publish_group_role_un UNIQUE ( role_name );

CREATE TABLE publish_house (
    id                       NUMBER NOT NULL,
    publish_house_name       VARCHAR2(1000),
    publish_house_name_short VARCHAR2(100),
    address                  VARCHAR2(1000),
    email                    VARCHAR2(100),
    phone                    VARCHAR2(30),
    url                      VARCHAR2(500)
);

COMMENT ON TABLE publish_house IS
    'Справочник издательств, типографий и др. компаний, связанных с изданием';

COMMENT ON COLUMN publish_house.id IS
    'ИД записи';

COMMENT ON COLUMN publish_house.publish_house_name IS
    'Наименование издательства';

COMMENT ON COLUMN publish_house.publish_house_name_short IS
    'Наименование издательства (краткое)';

COMMENT ON COLUMN publish_house.address IS
    'Адрес издательства';

COMMENT ON COLUMN publish_house.email IS
    'Email';

COMMENT ON COLUMN publish_house.phone IS
    'Телефон';

COMMENT ON COLUMN publish_house.url IS
    'URL вебсайта';

ALTER TABLE publish_house ADD CONSTRAINT publish_house_pk PRIMARY KEY ( id );

CREATE TABLE publish_house_book (
    id               NUMBER NOT NULL,
    publish_house_id NUMBER NOT NULL,
    book_id          NUMBER NOT NULL
);

COMMENT ON TABLE publish_house_book IS
    'Организации, связанные с изданием';

COMMENT ON COLUMN publish_house_book.id IS
    'ИД записи';

ALTER TABLE publish_house_book ADD CONSTRAINT publish_house_book_pk PRIMARY KEY ( id );

ALTER TABLE publish_house_book ADD CONSTRAINT publish_house_book_un UNIQUE ( publish_house_id,
                                                                             book_id );

CREATE TABLE reader_type (
    id        NUMBER NOT NULL,
    type_name VARCHAR2(50),
    age_min   NUMBER,
    age_max   NUMBER
);

COMMENT ON TABLE reader_type IS
    'Тип читателя';

COMMENT ON COLUMN reader_type.id IS
    'ИД записи';

COMMENT ON COLUMN reader_type.type_name IS
    'Наименование типа';

COMMENT ON COLUMN reader_type.age_min IS
    'Минимальный возраст';

COMMENT ON COLUMN reader_type.age_max IS
    'Минимальный возраст';

ALTER TABLE reader_type ADD CONSTRAINT reader_type_pk PRIMARY KEY ( id );

ALTER TABLE reader_type ADD CONSTRAINT reader_type_un UNIQUE ( type_name );

ALTER TABLE book_book_group
    ADD CONSTRAINT book_book_book_group_fk FOREIGN KEY ( book_group_id )
        REFERENCES book_group ( id );

ALTER TABLE book_book_group
    ADD CONSTRAINT book_book_group_fk FOREIGN KEY ( book_id )
        REFERENCES book ( id );

ALTER TABLE book
    ADD CONSTRAINT book_book_type_fk FOREIGN KEY ( book_type_id )
        REFERENCES book_type ( id );

ALTER TABLE book_content
    ADD CONSTRAINT book_content_book_fk FOREIGN KEY ( book_id )
        REFERENCES book ( id );

ALTER TABLE book_content
    ADD CONSTRAINT book_content_novel_version_fk FOREIGN KEY ( novel_version_id )
        REFERENCES novel_version ( id );

ALTER TABLE book
    ADD CONSTRAINT book_format_book_fk FOREIGN KEY ( book_format_id )
        REFERENCES book_format ( id );

ALTER TABLE book_format
    ADD CONSTRAINT book_format_group_fk FOREIGN KEY ( book_format_group_id )
        REFERENCES book_format_group ( id );

ALTER TABLE book
    ADD CONSTRAINT book_language_fk FOREIGN KEY ( language_id )
        REFERENCES language ( id );

ALTER TABLE book_paper
    ADD CONSTRAINT book_paper_book_fk FOREIGN KEY ( book_id )
        REFERENCES book ( id );

ALTER TABLE book_print_type
    ADD CONSTRAINT book_print_type_fk FOREIGN KEY ( print_type_id )
        REFERENCES print_type ( id );

ALTER TABLE publish_house_book
    ADD CONSTRAINT book_publish_house_book_fk FOREIGN KEY ( book_id )
        REFERENCES book ( id );

ALTER TABLE book
    ADD CONSTRAINT book_reader_type_fk FOREIGN KEY ( reader_type_id )
        REFERENCES reader_type ( id );

ALTER TABLE book
    ADD CONSTRAINT cover_type_book_fk FOREIGN KEY ( cover_type_id )
        REFERENCES cover_type ( id );

ALTER TABLE book_group
    ADD CONSTRAINT group_type_book_group_fk FOREIGN KEY ( book_group_type_id )
        REFERENCES book_group_type ( id );

ALTER TABLE novel_author
    ADD CONSTRAINT novel_author_author_fk FOREIGN KEY ( author_id )
        REFERENCES author ( id );

ALTER TABLE novel_author
    ADD CONSTRAINT novel_author_novel_fk FOREIGN KEY ( novel_id )
        REFERENCES novel ( id );

ALTER TABLE novel_genre
    ADD CONSTRAINT novel_genre_genre_fk FOREIGN KEY ( genre_id )
        REFERENCES genre ( id );

ALTER TABLE novel_genre
    ADD CONSTRAINT novel_genre_novel_fk FOREIGN KEY ( novel_id )
        REFERENCES novel ( id );

ALTER TABLE novel_version_author
    ADD CONSTRAINT novel_version_author_author_fk FOREIGN KEY ( author_id )
        REFERENCES author ( id );

ALTER TABLE novel_version_author
    ADD CONSTRAINT novel_version_author_role_fk FOREIGN KEY ( author_role_id )
        REFERENCES author_role ( id );

ALTER TABLE novel_version_author
    ADD CONSTRAINT novel_version_author_vers_fk FOREIGN KEY ( novel_version_id )
        REFERENCES novel_version ( id );

ALTER TABLE novel_version_language
    ADD CONSTRAINT novel_version_language_fk FOREIGN KEY ( novel_version_id )
        REFERENCES novel_version ( id );

ALTER TABLE novel_version_language
    ADD CONSTRAINT novel_version_language_lang_fk FOREIGN KEY ( language_id )
        REFERENCES language ( id );

ALTER TABLE novel_version
    ADD CONSTRAINT novel_version_novel_fk FOREIGN KEY ( novel_id )
        REFERENCES novel ( id );

ALTER TABLE novel_version
    ADD CONSTRAINT novel_version_type_fk FOREIGN KEY ( novel_version_type_id )
        REFERENCES novel_version_type ( id );

ALTER TABLE book_paper
    ADD CONSTRAINT paper_book_paper_fk FOREIGN KEY ( paper_id )
        REFERENCES paper_type ( id );

ALTER TABLE book_print_type
    ADD CONSTRAINT print_type_book_fk FOREIGN KEY ( book_id )
        REFERENCES book ( id );

ALTER TABLE publish_group
    ADD CONSTRAINT publish_group_book_fk FOREIGN KEY ( book_id )
        REFERENCES book ( id );

ALTER TABLE publish_group
    ADD CONSTRAINT publish_group_role_fk FOREIGN KEY ( publish_group_role_id )
        REFERENCES publish_group_role ( id );

ALTER TABLE publish_house_book
    ADD CONSTRAINT publish_house_book_fk FOREIGN KEY ( publish_house_id )
        REFERENCES publish_house ( id );