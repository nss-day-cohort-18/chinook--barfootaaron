-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

SELECT t.Name 'Song', al.Title 'Album', a.Name 'Artist', mt.Name 'Media Type', g.Name 'Genre'
FROM Track t
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON a.ArtistId = al.ArtistId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId