CREATE TABLE Person
(
    id             int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    full_name      varchar(100) NOT NULL UNIQUE,
    year_of_birth int          NOT NULL
);

CREATE TABLE Book
(
    id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    title varchar(100) NOT NULL,
    author varchar(100) NOT NULL,
    year int NOT NULL,
    person_id int REFERENCES Person(id) ON DELETE SET NULL
);

insert into person (full_name, year_of_birth) VALUES ('Сафин Тимур Ринатович', 1994);
insert into person (full_name, year_of_birth) VALUES ('Терентьев Герасим Андреевич', 2004);
insert into person (full_name, year_of_birth) VALUES ('Шашков Глеб Михаилович', 1995);
insert into person (full_name, year_of_birth) VALUES ('Максимов Агафон Дамирович', 1990);
insert into person (full_name, year_of_birth) VALUES ('Герасимов Игорь Русланович', 1987);
insert into person (full_name, year_of_birth) VALUES ('Беляков Фрол Григорьевич', 1975);
insert into person (full_name, year_of_birth) VALUES ('Цветков Лавр Филиппович', 1993);
insert into person (full_name, year_of_birth) VALUES ('Иванков Оскар Даниилович', 1992);
insert into person (full_name, year_of_birth) VALUES ('Степанов Осип Иринеевич', 1991);

insert into book (author, title, year) values ('Даррен Шен', 'Цирк уродов', 1999);
insert into book (author, title, year) values ('Викас Сваруп', 'Вопрос — Ответ', 2005);
insert into book (author, title, year) values ('Ким Ричардсон', 'Горизонт', 1951);
insert into book (author, title, year) values ('Коллин Хоук', 'В поисках тигра', 2009);
insert into book (author, title, year) values ('Федор Достаевский', 'Преступление и наказание', 1950);
insert into book (author, title, year) values ('Антон Чехов', 'Рассказы', 1947);
insert into book (author, title, year) values ('Лев Толстой', 'Война и мир', 1951);
insert into book (author, title, year) values ('Федор Достаевский', 'Идиот', 1953);
insert into book (author, title, year) values ('Михаил Булгаков', 'Мастер и Маргарита', 1954);
insert into book (author, title, year) values ('Николай Гоголь', 'Мёртвые души', 1955);
insert into book (author, title, year) values ('Михаил Булгаков', 'Собачье сердце', 1954);
insert into book (author, title, year) values ('Александр Пушкин', 'Евгений Онегин', 1957);
insert into book (author, title, year) values ('Иван Тургенев', 'Отцы и дети', 1958);
insert into book (author, title, year) values ('Александр Пушкин', 'Повести Белкина', 1959);
insert into book (author, title, year) values ('Александр Грибоедов', 'Горе от ума', 1961);
insert into book (author, title, year) values ('Илья Ильф, Евгений Петров', 'Одноэтажная Америка', 1964);
insert into book (author, title, year) values ('Джоан Роулинг', 'Гарри Поттер и узник Азкабана', 1985);
insert into book (author, title, year) values ('Рэй Брэдбери', '451° по Фаренгейту', 1974);
insert into book (author, title, year) values ('Джордж Оруэлл', '1984', 1989);
insert into book (author, title, year) values ('Грегори Дэвид Робертс', 'Шантарам', 1956);
insert into book (author, title, year) values ('Эрих Мария Ремарк', 'Три товарища', 1944);