--Here we are modifying the field of xml to some other value 
--Lets consider a situation where user feels his comment has slightly mistake , then he can edit his comment 
--with this query

use imdb
GO
UPDATE [dbo].[review]
   SET [review].modify('replace value of (/Review/comment/text())[1] with "this movie was better than any other movie"')
   FROM  [imdb].[dbo].[movies] JOIN [imdb].[dbo].[review] ON [imdb].[dbo].[movies].[id] = [imdb].[dbo].[review].[movie_id]   
 WHERE [imdb].[dbo].[movies].[name] = 'Titanic' AND review.value('(/Review/name)[1]', 'varchar(50)') = 'john'
GO 

