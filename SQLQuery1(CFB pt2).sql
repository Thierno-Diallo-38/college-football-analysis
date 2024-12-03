-- Check distinct values in the Conference column
SELECT DISTINCT Conference FROM [dbo].[Combined_CFB_Seasons];

-- Check distinct values in the Time column
SELECT DISTINCT Time FROM [dbo].[Combined_CFB_Seasons];

-- Check distinct values in the Network column
SELECT DISTINCT Network FROM [dbo].[Combined_CFB_Seasons];


SELECT DISTINCT Network, LTRIM(RTRIM(Network)) AS TrimmedNetwork, LEN(Network) AS Length
FROM [dbo].[Combined_CFB_Season]
ORDER BY TrimmedNetwork;

UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ABC'
WHERE LTRIM(RTRIM(Network)) = 'ABC & ESPN2';

UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN2';

UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN,ESPN2';

SELECT DISTINCT Network
FROM [dbo].[Combined_CFB_Season]
ORDER BY Network;

SELECT DISTINCT Network, 
       LTRIM(RTRIM(Network)) AS TrimmedNetwork, 
       LEN(Network) AS Length
FROM [dbo].[Combined_CFB_Season]
ORDER BY TrimmedNetwork;

UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ABC'
WHERE LTRIM(RTRIM(Network)) LIKE '%ABC & ESPN2%';

UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) LIKE '%ESPN2%';

UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) LIKE '%ESPN,ESPN2%';

SELECT DISTINCT Network
FROM [dbo].[Combined_CFB_Season]
ORDER BY Network;


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE YEAR(Date) = 2023;


ALTER TABLE [dbo].[Combined_CFB_Season]
ADD Conference_Matchup VARCHAR(255);


UPDATE [dbo].[Combined_CFB_Season]
SET Conference_Matchup = 
    CASE 
        WHEN CHARINDEX(',', Conference) > 0 THEN 
            REPLACE(Conference, ',', ' vs ')
        ELSE 
            Conference
    END;


SELECT Conference, Conference_Matchup
FROM [dbo].[Combined_CFB_Season]
WHERE Conference_Matchup IS NOT NULL;

SELECT DISTINCT Conference
FROM [dbo].[Combined_CFB_Season]
ORDER BY Conference;



ALTER TABLE [dbo].[Combined_CFB_Season]
ADD Team1 NVARCHAR(100), 
    Team2 NVARCHAR(100);


UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = LEFT(Game, CHARINDEX(' vs ', Game) - 1),
    Team2 = LTRIM(SUBSTRING(Game, CHARINDEX(' vs ', Game) + 4, LEN(Game)))
WHERE CHARINDEX(' vs ', Game) > 0;

SELECT Game, Team1, Team2
FROM [dbo].[Combined_CFB_Season];



SELECT Game
FROM [dbo].[Combined_CFB_Season]
WHERE CHARINDEX(' vs ', Game) = 0;

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = LEFT(Game, CHARINDEX(' vs ', Game) - 1),
    Team2 = LTRIM(SUBSTRING(Game, CHARINDEX(' vs ', Game) + 4, LEN(Game)))
WHERE CHARINDEX(' vs ', Game) > 0;


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


SELECT Game
FROM [dbo].[Combined_CFB_Season]
WHERE CHARINDEX(' vs ', Game) = 0;

SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = LEFT(Game, CHARINDEX(' vs ', Game) - 1),
    Team2 = LTRIM(SUBSTRING(Game, CHARINDEX(' vs ', Game) + 4, LEN(Game)))
WHERE CHARINDEX(' vs ', Game) > 0;

-- Update the first 10 rows with correct Team1 and Team2 values
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Notre Dame', Team2 = 'Ohio State'
WHERE Game = 'Notre Dame vs. Ohio State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'FSU', Team2 = 'LSU'
WHERE Game = 'FSU vs. LSU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oregon', Team2 = 'Georgia'
WHERE Game = 'Oregon vs. Georgia';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Clemson', Team2 = 'Georgia Tech'
WHERE Game = 'Clemson vs. Georgia Tech';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Nebraska', Team2 = 'Northwestern'
WHERE Game = 'Nebraska vs. Northwestern';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Penn State', Team2 = 'Purdue'
WHERE Game = 'Penn State vs. Purdue';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Colorado State', Team2 = 'Michigan'
WHERE Game = 'Colorado State vs. Michigan';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'West Virginia', Team2 = 'Pitt'
WHERE Game = 'West Virginia vs. Pitt';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Utah', Team2 = 'Florida'
WHERE Game = 'Utah vs. Florida';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Cincinnati', Team2 = 'Arkansas'
WHERE Game = 'Cincinnati vs. Arkansas';



SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


-- Update the next 10 rows with correct Team1 and Team2 values
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Alabama', Team2 = 'Texas'
WHERE Game = 'Alabama vs. Texas';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Tennessee', Team2 = 'Pitt'
WHERE Game = 'Tennessee vs. Pitt';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Kentucky', Team2 = 'Florida'
WHERE Game = 'Kentucky vs. Florida';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington State', Team2 = 'Wisconsin'
WHERE Game = 'Washington State vs. Wisconsin';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'USC', Team2 = 'Stanford'
WHERE Game = 'USC vs. Stanford';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Marshall', Team2 = 'Notre Dame'
WHERE Game = 'Marshall vs. Notre Dame';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Baylor', Team2 = 'BYU'
WHERE Game = 'Baylor vs. BYU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Louisville', Team2 = 'UCF'
WHERE Game = 'Louisville vs. UCF';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'App State', Team2 = 'Texas A&M'
WHERE Game = 'App State vs. Texas A&M';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Ohio', Team2 = 'Penn State'
WHERE Game = 'Ohio vs. Penn State';


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


-- Update the next 10 rows with correct Team1 and Team2 values
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Penn State', Team2 = 'Auburn'
WHERE Game = 'Penn State vs. Auburn';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oklahoma', Team2 = 'Nebraska'
WHERE Game = 'Oklahoma vs. Nebraska';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Miami', Team2 = 'Texas A&M'
WHERE Game = 'Miami vs. Texas A&M';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Mississippi State', Team2 = 'LSU'
WHERE Game = 'Mississippi State vs. LSU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Toledo', Team2 = 'Ohio State'
WHERE Game = 'Toledo vs. Ohio State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Georgia', Team2 = 'South Carolina'
WHERE Game = 'Georgia vs. South Carolina';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Cal', Team2 = 'Notre Dame'
WHERE Game = 'Cal vs. Notre Dame';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Michigan State', Team2 = 'Washington'
WHERE Game = 'Michigan State vs. Washington';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'FSU', Team2 = 'Louisville'
WHERE Game = 'FSU vs. Louisville';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'BYU', Team2 = 'Oregon'
WHERE Game = 'BYU vs. Oregon';


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


-- Update the first 10 rows with correct Team1 and Team2 values
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Florida', Team2 = 'Tennessee'
WHERE Game = 'Florida vs. Tennessee';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Wisconsin', Team2 = 'Ohio State'
WHERE Game = 'Wisconsin vs. Ohio State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Maryland', Team2 = 'Michigan'
WHERE Game = 'Maryland vs. Michigan';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Arkansas', Team2 = 'Texas A&M'
WHERE Game = 'Arkansas vs. Texas A&M';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'North Carolina', Team2 = 'Notre Dame'
WHERE Game = 'North Carolina vs. Notre Dame';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Kansas State', Team2 = 'Oklahoma'
WHERE Game = 'Kansas State vs. Oklahoma';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Clemson', Team2 = 'Wake Forest'
WHERE Game = 'Clemson vs. Wake Forest';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Texas', Team2 = 'Texas Tech'
WHERE Game = 'Texas vs. Texas Tech';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oregon', Team2 = 'Washington State'
WHERE Game = 'Oregon vs. Washington State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oklahoma State', Team2 = 'TCU'
WHERE Game = 'Oklahoma State vs. TCU';


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


-- Update the first 10 rows manually
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oklahoma', Team2 = 'TCU'
WHERE Game = 'Oklahoma vs. TCU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oklahoma State', Team2 = 'Baylor'
WHERE Game = 'Oklahoma State vs. Baylor';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Arizona State', Team2 = 'USC'
WHERE Game = 'Arizona State vs. USC';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Texas A&M', Team2 = 'Alabama'
WHERE Game = 'Texas A&M vs. Alabama';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Michigan', Team2 = 'Indiana'
WHERE Game = 'Michigan vs. Indiana';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Auburn', Team2 = 'Georgia'
WHERE Game = 'Auburn vs. Georgia';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Ohio State', Team2 = 'Michigan State'
WHERE Game = 'Ohio State vs. Michigan State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Texas', Team2 = 'Oklahoma'
WHERE Game = 'Texas vs. Oklahoma';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Tennessee', Team2 = 'LSU'
WHERE Game = 'Tennessee vs. LSU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Utah', Team2 = 'UCLA'
WHERE Game = 'Utah vs. UCLA';



SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;

-- Update the first 10 rows manually
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'BYU', Team2 = 'Notre Dame'
WHERE Game = 'BYU vs. Notre Dame';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Clemson', Team2 = 'Boston College'
WHERE Game = 'Clemson vs. Boston College';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington St.', Team2 = 'USC'
WHERE Game = 'Washington St. vs. USC';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Alabama', Team2 = 'Tennessee'
WHERE Game = 'Alabama vs. Tennessee';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Penn State', Team2 = 'Michigan'
WHERE Game = 'Penn State vs. Michigan';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Clemson', Team2 = 'FSU'
WHERE Game = 'Clemson vs. FSU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'USC', Team2 = 'Utah'
WHERE Game = 'USC vs. Utah';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'LSU', Team2 = 'Florida'
WHERE Game = 'LSU vs. Florida';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Wisconsin', Team2 = 'Michigan State'
WHERE Game = 'Wisconsin vs. Michigan State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Iowa State', Team2 = 'Texas'
WHERE Game = 'Iowa State vs. Texas';


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;

-- Update the first 14 rows manually
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington St.', Team2 = 'USC'
WHERE Game = 'Washington St. vs. USC';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Stanford', Team2 = 'Notre Dame'
WHERE Game = 'Stanford vs. Notre Dame';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Auburn', Team2 = 'Mississippi'
WHERE Game = 'Auburn vs. Mississippi';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Syracuse', Team2 = 'Clemson'
WHERE Game = 'Syracuse vs. Clemson';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Syracuse', Team2 = 'Clemson'
WHERE Game = 'Syracuse vs. Clemson';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Texas', Team2 = 'Oklahoma State'
WHERE Game = 'Texas vs. Oklahoma State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Iowa', Team2 = 'Ohio State'
WHERE Game = 'Iowa vs. Ohio State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Mississippi', Team2 = 'LSU'
WHERE Game = 'Mississippi vs. LSU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Mississippi State', Team2 = 'Alabama'
WHERE Game = 'Mississippi State vs. Alabama';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Minnesota', Team2 = 'Penn State'
WHERE Game = 'Minnesota vs. Penn State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'UCLA', Team2 = 'Oregon'
WHERE Game = 'UCLA vs. Oregon';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Kansas State', Team2 = 'TCU'
WHERE Game = 'Kansas State vs. TCU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington', Team2 = 'Cal'
WHERE Game = 'Washington vs. Cal';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Purdue', Team2 = 'Wisconsin'
WHERE Game = 'Purdue vs. Wisconsin';

SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


-- Update the first 15 rows manually
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington St.', Team2 = 'USC'
WHERE Game = 'Washington St. vs. USC';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Ohio State', Team2 = 'Penn State'
WHERE Game = 'Ohio State vs. Penn State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Florida', Team2 = 'Georgia'
WHERE Game = 'Florida vs. Georgia';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Michigan State', Team2 = 'Michigan'
WHERE Game = 'Michigan State vs. Michigan';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Kentucky', Team2 = 'Tennessee'
WHERE Game = 'Kentucky vs. Tennessee';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Oklahoma State', Team2 = 'Kansas State'
WHERE Game = 'Oklahoma State vs. Kansas State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Illinois', Team2 = 'Nebraska'
WHERE Game = 'Illinois vs. Nebraska';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Notre Dame', Team2 = 'Syracuse'
WHERE Game = 'Notre Dame vs. Syracuse';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'TCU', Team2 = 'West Virginia'
WHERE Game = 'TCU vs. West Virginia';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Stanford', Team2 = 'UCLA'
WHERE Game = 'Stanford vs. UCLA';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Virginia Tech', Team2 = 'NC State'
WHERE Game = 'Virginia Tech vs. NC State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Tennessee', Team2 = 'Georgia'
WHERE Game = 'Tennessee vs. Georgia';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Alabama', Team2 = 'LSU'
WHERE Game = 'Alabama vs. LSU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Ohio State', Team2 = 'Northwestern'
WHERE Game = 'Ohio State vs. Northwestern';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Clemson', Team2 = 'Notre Dame'
WHERE Game = 'Clemson vs. Notre Dame';


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


-- Update the first 17 rows manually
UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington St.', Team2 = 'USC'
WHERE Game = 'Washington St. vs. USC';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Florida', Team2 = 'Texas A&M'
WHERE Game = 'Florida vs. Texas A&M';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Texas Tech', Team2 = 'TCU'
WHERE Game = 'Texas Tech vs. TCU';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Penn State', Team2 = 'Indiana'
WHERE Game = 'Penn State vs. Indiana';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Cal', Team2 = 'USC'
WHERE Game = 'Cal vs. USC';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'FSU', Team2 = 'Miami'
WHERE Game = 'FSU vs. Miami';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Michigan', Team2 = 'Rutgers'
WHERE Game = 'Michigan vs. Rutgers';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Alabama', Team2 = 'Mississippi'
WHERE Game = 'Alabama vs. Mississippi';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'TCU', Team2 = 'Texas'
WHERE Game = 'TCU vs. Texas';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Nebraska', Team2 = 'Michigan'
WHERE Game = 'Nebraska vs. Michigan';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington', Team2 = 'Oregon'
WHERE Game = 'Washington vs. Oregon';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'LSU', Team2 = 'Arkansas'
WHERE Game = 'LSU vs. Arkansas';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Georgia', Team2 = 'Mississippi State'
WHERE Game = 'Georgia vs. Mississippi State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Indiana', Team2 = 'Ohio State'
WHERE Game = 'Indiana vs. Ohio State';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Missouri', Team2 = 'Tennessee'
WHERE Game = 'Missouri vs. Tennessee';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Notre Dame', Team2 = 'Navy'
WHERE Game = 'Notre Dame vs. Navy';

UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Maryland', Team2 = 'Penn State'
WHERE Game = 'Maryland vs. Penn State';


SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


UPDATE [dbo].[Combined_CFB_Season]
SET Team1 = 'Washington State', Team2 = 'USC'
WHERE Game = 'Washington St vs. USC';

SELECT *
FROM [dbo].[Combined_CFB_Season]
WHERE Team1 IS NULL OR Team2 IS NULL;


ALTER TABLE [dbo].[Combined_CFB_Season]
ADD Team1_Conference NVARCHAR(50),
    Team2_Conference NVARCHAR(50);


-- Update Team1_Conference with the first conference (before the comma)
UPDATE [dbo].[Combined_CFB_Season]
SET Team1_Conference = LEFT(Conference, CHARINDEX(',', Conference) - 1)
WHERE CHARINDEX(',', Conference) > 0;

-- Update Team2_Conference with the second conference (after the comma)
UPDATE [dbo].[Combined_CFB_Season]
SET Team2_Conference = LTRIM(SUBSTRING(Conference, CHARINDEX(',', Conference) + 1, LEN(Conference)))
WHERE CHARINDEX(',', Conference) > 0;

-- Handle rows where there is no comma (single conference only)
UPDATE [dbo].[Combined_CFB_Season]
SET Team1_Conference = Conference,
    Team2_Conference = NULL
WHERE CHARINDEX(',', Conference) = 0;

SELECT TOP 3 *
FROM [dbo].[Combined_CFB_Season];


ALTER TABLE [dbo].[Combined_CFB_Season]
DROP COLUMN Conference;


