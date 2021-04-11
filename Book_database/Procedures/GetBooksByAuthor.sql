CREATE PROCEDURE [dbo].[GetBooksByAuthor]
	@param1 nvarchar(50),
	@author_id int = 0
AS
	set @author_id = (select Id from Authors where Authors.Name = @param1);
	
	select [Name] from (select AuthorsBooks.BookId from AuthorsBooks where AuthorsBooks.AuthorId = @author_id) as tmp
	left join Books on Books.Id = tmp.BookId;

RETURN 0
