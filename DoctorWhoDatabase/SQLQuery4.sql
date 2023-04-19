UPDATE tblEpisode
SET Title = CONCAT(Title, '_CANCELLED')
WHERE DoctorId IS NULL

