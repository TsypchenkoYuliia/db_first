CREATE FUNCTION [dbo].[GetBooksCount]
(
	@param1 varchar(50)
)
RETURNS INT
AS
BEGIN
	RETURN (select Count(Id) as [Count] from AuthorsBooks where AuthorsBooks.AuthorId = 
	(select Id from Authors where Authors.Name = @param1)) 
END
