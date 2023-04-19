CREATE VIEW viewEpisodes AS
SELECT e.EpisodeId, a.AuthorName, d.DoctorName, 
	   dbo.fnCompanions(e.EpisodeId) AS Companions,
	   dbo.fnEnemies(e.EpisodeId) AS Enemies
FROM tblEpisode AS e, tblAuthor AS a, tblDoctor AS d
WHERE e.AuthorId = a.AuthorId AND
	  d.DoctorId = e.DoctorId;

select * from viewEpisodes;
