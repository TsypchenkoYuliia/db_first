insert Books ([Name], isActive) values ('Pride and Prejudice', 1);
insert Publishers ([Name]) values ('The Penguin English Library');
update Books set PublisherId = (select Id from Publishers where [Name] = 'The Penguin English Library') where [Name] = 'Pride and Prejudice';

insert Authors ([Name]) values ('Jane Austen');
insert Authors ([Name]) values ('Jane1 Austen1');

insert AuthorsBooks (AuthorId, BookId) values (1, 1);
insert AuthorsBooks (AuthorId, BookId) values (2, 1);

insert Books ([Name], isActive) values ('Persuasion', 0);
insert Publishers ([Name]) values ('A BBC Radio 4 reading');
update Books set PublisherId = (select Id from Publishers where [Name] = 'A BBC Radio 4 reading')  where [Name] = 'Persuasion';

insert AuthorsBooks (AuthorId, BookId) values (1, 2);

insert BookDetails (Id, [Description], [NumberOfPages]) values (1, 'SomeDescription Pride and Prejudice', 677);
insert BookDetails (Id, [Description], [NumberOfPages]) values (2, 'SomeDescription Pride and Prejudice', 321);
