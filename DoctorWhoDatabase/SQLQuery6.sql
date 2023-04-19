CREATE FUNCTION fnCompanions (@EpisodeId int)
RETURNS varchar(255) AS
BEGIN
   DECLARE @Companions varchar(255)
   SELECT @Companions = COALESCE(@Companions + ', ', '') + CompanionName
   FROM tblCompanion AS c, tblEpisodeCompanion AS ec, tblEpisode AS e
   WHERE e.EpisodeId = @EpisodeId AND 
   c.CompanionId = ec.CompanionId AND
   ec.EpisodeId = e.EpisodeId
   RETURN @Companions
END;

SELECT dbo.fnCompanions(2);

