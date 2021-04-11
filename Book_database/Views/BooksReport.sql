--CREATE VIEW [dbo].[BooksReport]
--	AS SELECT Books.Name as book_name,
--			  Authors.Name as authors_name,
--			  Publishers.Name as publish_name,
--			  Books.Id as book_id
--FROM Books
--	left join Authors on Authors.Id in (select AuthorId from AuthorsBooks where AuthorsBooks.BookId = Books.Id)
			  

