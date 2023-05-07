-- 1.1 - Todos os dados
SELECT * from books;

--1.2 - Todos os dados, altere os nomes das colunas da seguinte forma. id passa a ser 'ID', title passa a ser 'TITLE', isbn passa a ser 'ISBN' e description passa a ser 'DESCRIPTION'.
SELECT id as ID, title as TITLE, isbn as ISBN, description as DESCRIPTION from books;

--1.3 - Apenas os dados que tenham o id '9'.
select * from books where id = '9';

--1.4 - Apenas os dados em que a description começe com 'The'
select * from books where description like 'the%';

--1.5 - Apenas os dados em que o description termine com '.'
select * from books where [description] like '%.';

--1.6 - Apenas os dados em que o isbn contenha '811'
select * from books where isbn like '%811%';

--1.7 - Apenas os dados em que o isbn conhenha '9' e que a description conhenha a letra 'w' tanto maiúscula como minúscula
select *from books where isbn like '%9%' and ([description] like UPPER('%W%') or [description] like LOWER('%w%'));

--1.8 - Uma coluna que se chame 'qtd' e o resultado seja a quantidade de registros
select count(id) as qtd from books;

--1.9 - Uma coluna que se chame 'max_id' e o resultado seja o id mais alto
select MAX(id) as max_id from books ;

--1.10 - Uma coluna que se chame 'min_id' e o resultado seja o id mais baixo
SELECT min(id) as min_id from books;

--1.11 - Apenas os dados em que o id esteja entre '4' e '9'.
SELECT * from books where id BETWEEN '4' and '9';

--1.12 - Adicione três livros a sua escolha (aqui são três comandos individuais)
insert into books (title,isbn,description) values ('The Expanse','9781841499895','Leviathan Wakes'); select * from books;
insert into books (title,isbn,description) values ('Fundation','9789897731426','Book 1'); select * from books;
insert into books (title,isbn,description) values ('Sapiens','9789895640188','História Breve da Humanidade'); select * from books;

--1.13 - Actualize três livros
update books set description = 'isaac - asmov.' where id = '15'; select * from books;
update books set title = 'The Expanse series' where id = '14'; select *from books;
update books set title = 'Sapiens - História Breve da Humanidade' where id = '16'; select * from books;

--1.13.1 - Actualize o registro de id 9, remova se for o caso, o '.' no final da sua description.
update books set description = replace (description,'.','') where id = '9'; select * from books;

--1.13.2 - Actualize o registro de id 7, remova se for o caso, os '-' a meio de sua description.
update books set [description] = REPLACE (description,'-','') where id = '7'; select * from books;

--1.13.3 - Actualize o(s) registro(s) que contém 'Lord' e 'Rings' em seu title e altere a description para 'Fly you fools!'
update books set [description] = 'fly you fools!' where title like '%Lord%'and title like '%Rings%'; select * from books;

--1.14 - Remova três livros
delete from books where id = '14'; select * from books;
delete from books where id = '15'; select * from books;
delete from books where id = '16'; select * from books;

--1.14.1 - Remova o livro de id 3
DELETE from books where id = '3';

--1.14.2 - Remova o livro em que o isbn contenha 'n/d' tanto em maiúscula como em minúscula
delete from books where isbn like '%n/d%';

--1.14.3 - Remova o livro em que o title contenha '...'
delete from books where title like '...'
