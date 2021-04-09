CREATE TABLE [dbo].[AuthorsBooks]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [AuthorId] INT NOT NULL, 
    [BookId] INT NOT NULL,
    constraint FK_to_Authors foreign key (AuthorId) references Authors (Id),
    constraint FK_to_Books foreign key (BookId) references Books (Id)
)
