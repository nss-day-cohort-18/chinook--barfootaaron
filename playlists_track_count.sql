-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT pl.Name 'Playlist', COUNT(plt.TrackId) '# of tracks'
FROM PlaylistTrack plt
JOIN Playlist pl on pl.PlaylistId = plt.PlaylistId
GROUP BY plt.PlayListId