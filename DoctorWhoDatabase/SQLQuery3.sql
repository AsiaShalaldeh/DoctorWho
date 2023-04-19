INSERT INTO tblEnemy
VALUES (1, 'The Autons', 'The first villains to be presented in colour'),
	   (2, 'Ood', 'are recognizable for their squid-like features'),
	   (3, 'The Empty Child', 'he just wanted to find his mommy'),
	   (4, 'Torchwood', 'Torchwood One in London fell along with the Daleks'),
	   (5, 'Slitheen', 'criminals on their home planet and trained killers');

INSERT INTO tblAuthor
VALUES (10, 'Russell T Davies'), (20, 'Paul Cornell'), (30, 'Gareth Roberts'),
		(40, 'Steven Moffat'), (50, 'Malcolm Hulke');

INSERT INTO tblDoctor VALUES
		 (10345, 01, 'Chris Eccleston', '1964-02-16', '2005-03-26', '2005-06-18'),
		 (11345, 02, 'David Tennant', '1971-04-18', '2005-12-25', '2010-01-01'),
		 (12345, 03, 'Matt Smith', '1982-10-28', '2010-04-03', '2013-12-25'),
		 (13345, 04, 'Peter Capaldi', '1958-04-14', '2013-11-23', '2017-12-25'),
		 (14345, 05, 'Jodie Whittaker', '1982-06-17', '2017-12-25', '2022-10-01');

INSERT INTO tblCompanion VALUES 
		 (1, 'Rose Tyler', 'Billie Piper'),
		 (2, 'Martha Jones', 'Freema Agyeman'),
		 (3, 'Donna Noble', 'Catherine Tate'),
		 (4, 'Amy Pond', 'Karen Gillan'),
		 (5, 'Rory Williams', 'Arthur Darvill');

INSERT INTO tblEpisode VALUES
		(1, 1, 1, 'Regular', 'An Unearthly Child', '1963-11-23', 20, 10345, 'First appearance of the Doctor.'),
		(2, 2, 4, 'Regular', 'The Girl in the Fireplace', '2006-05-06', 30, 11345, 'Features Madame de Pompadour.'),
		(3, 4, 12, 'Regular', 'The Stolen Earth', '2008-06-28', 50, 10345, 'Part of a two-part story and features.'),
		(4, 9, 10, 'Regular', 'The Doctors Wife', '2011-05-14', 50, 12345, 'Features the Doctors TARDIS.'),
		(5, 11, 1, 'Regular', 'The Eleventh Hour', '2010-04-03', 10, 12345, 'First appearance of Matt Smith.');

INSERT INTO tblEpisodeEnemy VALUES
		(1, 2, 5),
		(2, 2, 3),
		(3, 1, 4),
		(4, 5, 1),
		(5, 3, 2);

INSERT INTO tblEpisodeCompanion VALUES
		(1, 2, 5),
		(2, 2, 3),
		(3, 1, 1),
		(4, 5, 4),
		(5, 3, 2);