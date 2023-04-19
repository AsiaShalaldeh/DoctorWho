CREATE TABLE tblEnemy
(
	EnemyId int,
	EnemyName varchar(15),
	Description varchar(50),
	CONSTRAINT PK_ENEMY PRIMARY KEY(EnemyId)
);
CREATE TABLE tblAuthor
(
	AuthorId int,
	AuthorName varchar(20),
	CONSTRAINT PK_AUTHOR PRIMARY KEY(AuthorId)
);
CREATE TABLE tblDoctor
(
	DoctorId int,
	DoctorNumber int,
	DoctorName varchar(15),
	BirthDate date,
	FirstEpisodeDate date,
	LastEpisodeDate date,
	CONSTRAINT PK_DOCTOR PRIMARY KEY(DoctorId)
);
CREATE TABLE tblCompanion
(
	CompanionId int,
	CompanionName varchar(15),
	WhoPlayed varchar(15),
	CONSTRAINT PK_COMPANION PRIMARY KEY(CompanionId)
);
CREATE TABLE tblEpisode
(
	EpisodeId int,
	SeriesNumber int,
	EpisodeNumber int,
	EpisodeType varchar(15),
	Title varchar(25),
	EpisodeDate date,
	AuthorId int,
	DoctorId int,
	Notes varchar(40),
	CONSTRAINT PK_EPISODE PRIMARY KEY(EpisodeId),
	CONSTRAINT FK_AUTHORID_EPISODE FOREIGN KEY (AuthorId)
    REFERENCES tblAuthor (AuthorId),
	CONSTRAINT FK_DOCTORID_EPISODE FOREIGN KEY (DoctorId)
    REFERENCES tblDoctor (DoctorId)
);
CREATE TABLE tblEpisodeCompanion
(
	EpisodeCompanionId int,
	EpisodeId int,
	CompanionId int,
	CONSTRAINT PK_EPISODE_COMPANION PRIMARY KEY(EpisodeCompanionId),
	CONSTRAINT FK_EPISODEID_EPISODE_COMPANION FOREIGN KEY (EpisodeId)
    REFERENCES tblEpisode (EpisodeId),
	CONSTRAINT FK_COMPANIONID_EPISODE_COMPANION FOREIGN KEY (CompanionId)
    REFERENCES tblCompanion (CompanionId)
);
CREATE TABLE tblEpisodeEnemy
(
	EpisoeEnemyId int,
	EpisodeId int,
	EnemyId int,
	CONSTRAINT PK_EPISODE_ENEMY PRIMARY KEY(EpisoeEnemyId),
	CONSTRAINT FK_EPISODEID_EPISODE_ENEMY FOREIGN KEY (EpisodeId)
    REFERENCES tblEpisode (EpisodeId),
	CONSTRAINT FK_COMPANIONID_EPISODE_ENEMY FOREIGN KEY (EnemyId)
    REFERENCES tblEnemy (EnemyId)
);



