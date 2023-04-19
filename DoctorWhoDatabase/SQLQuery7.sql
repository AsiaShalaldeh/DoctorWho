CREATE FUNCTION fnEnemies (@EpisodeId int)
RETURNS varchar(25) AS
BEGIN
   DECLARE @Enemies varchar(25)
   SELECT @Enemies = COALESCE(@Enemies + ', ', '') + EnemyName
   FROM tblEnemy AS en, tblEpisodeEnemy AS ee, tblEpisode AS e
   WHERE e.EpisodeId = @EpisodeId AND 
   en.EnemyId = ee.EnemyId AND
   ee.EpisodeId = e.EpisodeId
   RETURN @Enemies
END;

SELECT dbo.fnEnemies(2);
