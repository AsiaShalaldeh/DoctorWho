CREATE PROCEDURE spSummariseEpisodes 
AS BEGIN
    -- Show the 3 most frequently-appearing companions
	SELECT TOP 3 c.CompanionId, c.CompanionName, COUNT(ec.CompanionId) AS num_companions
	FROM tblCompanion AS c, tblEpisodeCompanion AS ec
	WHERE c.CompanionId = ec.CompanionId
	GROUP BY c.CompanionId, c.CompanionName
	ORDER BY COUNT(ec.CompanionId) DESC

	-- Show the 3 most frequently-appearing enemies
	SELECT TOP 3 e.EnemyId, e.EnemyName, COUNT(ee.EnemyId) AS num_enemies
	FROM tblEnemy AS e, tblEpisodeEnemy AS ee
	WHERE e.EnemyId = ee.EnemyId
	GROUP BY e.EnemyId, e.EnemyName
	ORDER BY COUNT(ee.EnemyId) DESC
END;

EXEC spSummariseEpisodes;