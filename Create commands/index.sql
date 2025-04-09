-- Create a new database
CREATE database name_1;

-- Backup database
BACKUP DATABASE databasename
TO DISK = 'filepath';

-- Backup only the difference since the last backup
BACKUP DATABASE databasename
TO DISK = 'filepath/filename.bak'
WITH DIFFERENTIAL;

-- Create a new table
CREATE TABLE Persons (
    personID int,
    personName varchar(50),
    firstName varchar(50),
    lastName varchar(50),
    cityName varchar(50)
);