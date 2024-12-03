CREATE DATABASE CollegeFootballAnalysis;
USE CollegeFootballAnalysis;
CREATE DATABASE CollegeFootballAnalysis;
USE CollegeFootballAnalysis;


	-- Drop the 2022 season table if it exists
DROP TABLE IF EXISTS [2022_CFB_Season];

-- Drop the 2023 season table if it exists
DROP TABLE IF EXISTS [2023_CFB_Season];

-- Drop the 2024 season table if it exists
DROP TABLE IF EXISTS [2024_CFB_Season];


-- Create the table structure for each season
CREATE TABLE [2022_CFB_Season] (
    Date DATE,
    Game NVARCHAR(100),
    Conference NVARCHAR(50),
    Viewership FLOAT,
    Network NVARCHAR(50)
);

CREATE TABLE [2023_CFB_Season] (
    Date DATE,
    Game NVARCHAR(100),
    Conference NVARCHAR(50),
    Viewership FLOAT,
    Network NVARCHAR(50)
);

CREATE TABLE [2024_CFB_Season] (
    Date DATE,
    Game NVARCHAR(100),
    Conference NVARCHAR(50),
    Viewership FLOAT,
    Network NVARCHAR(50)
);

USE CollegeFootballAnalysis;

ALTER TABLE [2022_CFB_Season]
ADD Time NVARCHAR(10);

ALTER TABLE [2023_CFB_Season]
ADD Time NVARCHAR(10);

ALTER TABLE [2024_CFB_Season]
ADD Time NVARCHAR(10);


USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-09-03', '7:30p', 'Notre Dame vs. Ohio State', 'Independent,B10', 10.53, 'ABC'),
('2022-09-03', '7:30p', 'FSU vs. LSU', 'ACC,SEC', 7.55, 'ABC'),
('2022-09-03', '3:30p', 'Oregon vs. Georgia', 'P12,SEC', 6.20, 'ABC'),
('2022-09-05', '8:00p', 'Clemson vs. Georgia Tech', 'ACC,ACC', 4.86, 'ESPN'),
('2022-08-27', '12:30p', 'Nebraska vs. Northwestern', 'B10,B10', 4.42, 'FOX'),
('2022-09-01', '8:00p', 'Penn State vs. Purdue', 'B10,B10', 3.93, 'ABC'),
('2022-09-03', '12:00p', 'Colorado State vs. Michigan', 'MWC,B10', 3.51, 'FOX'),
('2022-09-01', '7:00p', 'West Virginia vs. Pitt', 'B12,ACC', 3.15, 'ESPN'),
('2022-09-03', '7:00p', 'Utah vs. Florida', 'P12,SEC', 2.95, 'ESPN'),
('2022-09-03', '3:30p', 'Cincinnati vs. Arkansas', 'AAC,SEC', 2.90, 'ESPN'),
('2022-09-10', '12:00p', 'Alabama vs. Texas', 'SEC,B12', 10.60, 'FOX'),
('2022-09-10', '3:30p', 'Tennessee vs. Pitt', 'SEC,ACC', 4.46, 'ABC'),
('2022-09-10', '7:00p', 'Kentucky vs. Florida', 'SEC,SEC', 4.33, 'ESPN'),
('2022-09-10', '3:30p', 'Washington State vs. Wisconsin', 'P12,B10', 3.92, 'FOX'),
('2022-09-10', '7:30p', 'USC vs. Stanford', 'P12,P12', 2.96, 'ABC'),
('2022-09-10', '2:30p', 'Marshall vs. Notre Dame', 'SBC,Independent', 2.48, 'NBC'),
('2022-09-09', '10:15p', 'Baylor vs. BYU', 'B12,Independent', 2.37, 'ESPN'),
('2022-09-09', '7:30p', 'Louisville vs. UCF', 'ACC,AAC', 1.85, 'ESPN2'),
('2022-09-03', '3:30p', 'App State vs. Texas A&M', 'SBC,SEC', 1.77, 'ESPN2'),
('2022-09-10', '12:00p', 'Ohio vs. Penn State', 'MAC,B10', 1.55, 'ABC'),
('2022-09-17', '3:30p', 'Penn State vs. Auburn', 'B10,SEC', 4.05, 'CBS'),
('2022-09-17', '12:00p', 'Oklahoma vs. Nebraska', 'B12,B10', 3.41, 'FOX'),
('2022-09-17', '9:00p', 'Miami vs. Texas A&M', 'ACC,SEC', 3.40, 'ESPN'),
('2022-09-17', '7:00p', 'Mississippi State vs. LSU', 'SEC,SEC', 3.06, 'ESPN'),
('2022-09-17', '7:00p', 'Toledo vs. Ohio State', 'MAC,B10', 3.05, 'FOX'),
('2022-09-17', '12:00p', 'Georgia vs. South Carolina', 'SEC,SEC', 3.00, 'ESPN');


USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-09-17', '2:30p', 'Cal vs. Notre Dame', 'P12,Independent', 2.91, 'NBC'),
('2022-09-17', '7:30p', 'Michigan State vs. Washington', 'B10,P12', 2.79, 'ABC'),
('2022-09-16', '7:30p', 'FSU vs. Louisville', 'ACC,ACC', 2.75, 'ESPN'),
('2022-09-17', '3:30p', 'BYU vs. Oregon', 'Independent,P12', 2.58, 'FOX'),
('2022-09-24', '3:30p', 'Florida vs. Tennessee', 'SEC,SEC', 5.57, 'CBS'),
('2022-09-24', '7:30p', 'Wisconsin vs. Ohio State', 'B10,B10', 4.59, 'ABC'),
('2022-09-24', '12:00p', 'Maryland vs. Michigan', 'B10,B10', 4.38, 'FOX'),
('2022-09-24', '7:00p', 'Arkansas vs. Texas A&M', 'SEC,SEC', 3.50, 'ESPN'),
('2022-09-24', '3:30p', 'North Carolina vs. Notre Dame', 'Independent,ACC', 3.46, 'ABC'),
('2022-09-24', '3:30p', 'Kansas State vs. Oklahoma', 'B12,B12', 3.37, 'FOX'),
('2022-09-24', '12:00p', 'Clemson vs. Wake Forest', 'ACC,ACC', 3.18, 'ABC'),
('2022-09-24', '3:30p', 'Texas vs. Texas Tech', 'B12,B12', 2.28, 'ESPN'),
('2022-09-24', '4:00p', 'Oregon vs. Washington State', 'P12,P12', 2.27, 'FOX'),
('2022-10-01', '12:00p', 'Oklahoma vs. TCU', 'B12,B12', 2.47, 'ABC'),
('2022-10-01', '3:30p', 'Oklahoma State vs. Baylor', 'B12,B12', 2.41, 'FOX'),
('2022-10-01', '10:30p', 'Arizona State vs. USC', 'P12,P12', 1.92, 'ESPN'),
('2022-10-01', '8:00p', 'Texas A&M vs. Alabama', 'SEC,SEC', 7.15, 'CBS'),
('2022-10-08', '12:00p', 'Michigan vs. Indiana', 'B10,B10', 4.01, 'FOX'),
('2022-10-08', '3:30p', 'Auburn vs. Georgia', 'SEC,SEC', 4.24, 'CBS');

-- Additional entries can be added similarly following this pattern

USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-10-08', '4:00p', 'Ohio State vs. Michigan State', 'B10,B10', 4.44, 'ABC'); 

USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-10-08', '12:00p', 'Texas vs. Oklahoma', 'B12,B12', 3.36, 'ABC'),
('2022-10-08', '12:00p', 'Tennessee vs. LSU', 'SEC,SEC', 2.96, 'ESPN'),
('2022-10-08', '3:30p', 'Utah vs. UCLA', 'P12,P12', 2.65, 'FOX'),
('2022-10-08', '7:30p', 'BYU vs. Notre Dame', 'Independent,Independent', 2.53, 'NBC'),
('2022-10-08', '7:30p', 'Clemson vs. Boston College', 'ACC,ACC', 1.93, 'ABC'),
('2022-10-08', '7:30p', 'Washington St vs. USC', 'P12,P12', 1.84, 'FOX'),
('2022-10-15', '3:30p', 'Alabama vs. Tennessee', 'SEC,SEC', 11.56, 'CBS'),
('2022-10-15', '12:00p', 'Penn State vs. Michigan', 'B10,B10', 6.45, 'FOX'),
('2022-10-15', '7:30p', 'Clemson vs. FSU', 'ACC,ACC', 3.38, 'ABC & ESPN2'),
('2022-10-15', '8:00p', 'USC vs. Utah', 'P12,P12', 2.74, 'FOX'),
('2022-10-15', '7:00p', 'LSU vs. Florida', 'SEC,SEC', 2.46, 'ESPN'),
('2022-10-15', '4:00p', 'Wisconsin vs. Michigan State', 'B10,B10', 2.45, 'FOX'),
('2022-10-15', '12:00p', 'Iowa State vs. Texas', 'B12,B12', 2.35, 'ABC'),
('2022-10-15', '7:30p', 'Stanford vs. Notre Dame', 'P12,Independent', 2.15, 'NBC'),
('2022-10-15', '3:30p', 'Oklahoma State vs. TCU', 'B12,B12', 2.14, 'ABC'),
('2022-10-15', '7:30p', 'Auburn vs. Mississippi', 'SEC,SEC', 2.06, 'ESPN'),
('2022-10-22', '12:00p', 'Syracuse vs. Clemson', 'ACC,ACC', 4.75, 'ABC');


USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-10-22', '12:00p', 'Syracuse vs. Clemson', 'ACC,ACC', 4.75, 'ABC'),
('2022-10-22', '3:30p', 'Texas vs. Oklahoma State', 'B12,B12', 4.46, 'ABC'),
('2022-10-22', '12:00p', 'Iowa vs. Ohio State', 'B10,B10', 4.38, 'FOX'),
('2022-10-22', '3:30p', 'Mississippi vs. LSU', 'SEC,SEC', 3.86, 'CBS'),
('2022-10-22', '7:00p', 'Mississippi State vs. Alabama', 'SEC,SEC', 3.59, 'ESPN,ESPN2'),
('2022-10-22', '7:30p', 'Minnesota vs. Penn State', 'B10,B10', 3.54, 'ABC'),
('2022-10-22', '3:30p', 'UCLA vs. Oregon', 'P12,P12', 3.34, 'FOX'),
('2022-10-22', '8:00p', 'Kansas State vs. TCU', 'B12,B12', 1.53, 'FS1'),
('2022-10-22', '10:30p', 'Washington vs. Cal', 'P12,P12', 1.32, 'ESPN'),
('2022-10-22', '3:30p', 'Purdue vs. Wisconsin', 'B10,B10', 1.01, 'ESPN'),
('2022-10-29', '12:00p', 'Ohio State vs. Penn State', 'B10,B10', 8.27, 'FOX'),
('2022-10-29', '3:30p', 'Florida vs. Georgia', 'SEC,SEC', 5.62, 'CBS');


USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-10-29', '7:30p', 'Michigan State vs. Michigan', 'B10,B10', 5.58, 'ABC'),
('2022-10-29', '7:00p', 'Kentucky vs. Tennessee', 'SEC,SEC', 4.04, 'ESPN'),
('2022-10-29', '3:30p', 'Oklahoma State vs. Kansas State', 'B12,B12', 3.38, 'FOX'),
('2022-10-29', '3:30p', 'Illinois vs. Nebraska', 'B10,B10', 2.49, 'ABC'),
('2022-10-29', '12:00p', 'Notre Dame vs. Syracuse', 'Independent,ACC', 2.34, 'ABC'),
('2022-10-29', '12:00p', 'TCU vs. West Virginia', 'B12,B12', 1.51, 'ESPN'),
('2022-10-29', '10:30p', 'Stanford vs. UCLA', 'P12,P12', 1.26, 'ESPN'),
('2022-10-27', '7:30p', 'Virginia Tech vs. NC State', 'ACC,ACC', 1.23, 'ESPN'),
('2022-11-5', '3:30p', 'Tennessee vs. Georgia', 'SEC,SEC', 13.06, 'CBS'),
('2022-11-5', '7:00p', 'Alabama vs. LSU', 'SEC,SEC', 7.58, 'ESPN'),
('2022-11-5', '12:00p', 'Ohio State vs. Northwestern', 'B10,B10', 4.76, 'ABC'),
('2022-11-5', '7:30p', 'Clemson vs. Notre Dame', 'ACC,Independent', 3.22, 'NBC'),
('2022-11-5', '12:00p', 'Florida vs. Texas A&M', 'SEC,SEC', 2.73, 'ESPN'),
('2022-11-5', '7:30p', 'Texas Tech vs. TCU', 'B12,B12', 2.23, 'FOX'),
('2022-11-5', '3:30p', 'Penn State vs. Indiana', 'B10,B10', 2.17, 'ABC'),
('2022-11-5', '10:30p', 'Cal vs. USC', 'P12,P12', 1.84, 'ESPN');


USE CollegeFootballAnalysis;

INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
('2022-11-5', '7:30p', 'FSU vs. Miami', 'ACC,ACC', 1.50, 'ABC'),
('2022-11-5', '7:30p', 'Michigan vs. Rutgers', 'B10,B10', 1.29, 'BTN'),
('2022-11-12', '3:30p', 'Alabama vs. Mississippi', 'SEC,SEC', 8.71, 'CBS'),
('2022-11-12', '7:30p', 'TCU vs. Texas', 'B12,B12', 5.03, 'ABC'),
('2022-11-12', '3:30p', 'Nebraska vs. Michigan', 'B10,B10', 3.88, 'ABC'),
('2022-11-12', '7:00p', 'Washington vs. Oregon', 'P12,P12', 3.57, 'FOX'),
('2022-11-12', '12:00p', 'LSU vs. Arkansas', 'SEC,SEC', 3.57, 'ESPN'),
('2022-11-12', '7:00p', 'Georgia vs. Mississippi State', 'SEC,SEC', 3.34, 'ESPN'),
('2022-11-12', '12:00p', 'Indiana vs. Ohio State', 'B10,B10', 3.34, 'FOX'),
('2022-11-12', '12:00p', 'Missouri vs. Tennessee', 'SEC,SEC', 3.01, 'CBS'),
('2022-11-12', '12:00p', 'Notre Dame vs. Navy', 'Independent,ACC', 2.07, 'ABC'),
('2022-11-12', '3:30p', 'Maryland vs. Penn State', 'B10,B10', 1.88, 'FOX');



INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2022-11-19', '3:30p', 'Ohio State vs Maryland', 'B10,B10', 6.60, 'ABC'),
('2022-11-19', '12:00p', 'Illinois vs Michigan', 'B10,B10', 5.47, 'ABC'),
('2022-11-19', '7:00p', 'Tennessee vs South Carolina', 'SEC,SEC', 4.87, 'ESPN'),
('2022-11-19', '8:00p', 'USC vs UCLA', 'P12,P12', 4.53, 'FOX'),
('2022-11-19', '3:30p', 'Georgia vs Kentucky', 'SEC,SEC', 4.48, 'CBS'),
('2022-11-19', '12:00p', 'TCU vs Baylor', 'B12,B12', 4.35, 'FOX'),
('2022-11-19', '7:30p', 'Oklahoma State vs Oklahoma', 'B12,B12', 3.06, 'ABC'),
('2022-11-19', '10:30p', 'Utah vs Oregon', 'P12,P12', 2.54, 'ESPN'),
('2022-11-19', '4:00p', 'Iowa vs Minnesota', 'B10,B10', 2.50, 'FOX'),
('2022-11-19', '12:00p', 'Wisconsin vs Nebraska', 'B10,B10', 1.63, 'ESPN'),
('2022-11-19', '2:30p', 'Boston College vs Notre Dame', 'ACC,Independent', 1.27, 'NBC'),
('2022-11-26', '12:00p', 'Michigan vs Ohio State', 'B10,B10', 17.14, 'FOX'),
('2022-11-25', '7:30p', 'Florida vs FSU', 'SEC,ACC', 6.71, 'ABC'),
('2022-11-26', '8:00p', 'Notre Dame vs USC', 'Independent,P12', 6.68, 'ABC'),
('2022-11-26', '3:30p', 'Auburn vs Alabama', 'SEC,SEC', 6.27, 'CBS'),
('2022-11-26', '4:00p', 'Iowa State vs TCU', 'B12,B12', 4.34, 'FOX');



INSERT INTO [2022_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2022-11-26', '7:00p', 'LSU vs Texas A&M', 'SEC,SEC', 3.92, 'ESPN'),
('2022-11-25', '3:30p', 'NC State vs North Carolina', 'ACC,ACC', 3.61, 'ABC'),
('2022-11-25', '3:30p', 'Oregon vs Oregon State', 'P12,P12', 3.56, 'ABC'),
('2022-11-25', '3:30p', 'Arkansas vs Missouri', 'SEC,SEC', 3.27, 'CBS'),
('2022-11-25', '4:30p', 'UCLA vs Cal', 'P12,P12', 3.27, 'FOX');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-09-03', '7:30p', 'FSU vs LSU', 'ACC, SEC', 9.17, 'ABC'),
('2023-09-02', '12:00p', 'Colorado vs TCU', 'P12, B12', 7.26, 'FOX'),
('2023-09-02', '3:30p', 'Ohio State vs Indiana', 'B10, B10', 4.65, 'CBS'),
('2023-09-04', '8:00p', 'Clemson vs Duke', 'ACC, ACC', 4.39, 'ESPN'),
('2023-09-02', '7:30p', 'West Virginia vs Penn State', 'B12, B10', 3.50, 'NBC'),
('2023-08-31', '8:00p', 'Nebraska vs Minnesota', 'B10, B10', 3.49, 'FOX'),
('2023-09-02', '7:30p', 'North Carolina vs South Carolina', 'ACC, SEC', 3.40, 'ABC'),
('2023-09-02', '3:30p', 'Oregon State vs San Jose State', 'P12, MWC', 3.23, 'CBS'),
('2023-09-02', '3:30p', 'Rice vs Texas', 'AAC, B12', 3.21, 'FOX'),
('2023-08-31', '8:00p', 'Florida vs Utah', 'SEC, P12', 3.19, 'ESPN'),
('2023-09-09', '7:00p', 'Texas vs Alabama', 'B12, SEC', 8.76, 'ESPN, ESPN2'),
('2023-09-09', '12:00p', 'Nebraska vs Colorado', 'B10, P12', 8.73, 'FOX'),
('2023-09-09', '5:19p', 'Texas A&M vs Miami', 'SEC, ACC', 4.02, 'ABC'),
('2023-09-09', '3:30p', 'Iowa vs Iowa State', 'B10, B12', 3.38, 'FOX'),
('2023-09-09', '3:30p', 'UNLV vs Michigan', 'MWC, B10', 2.97, 'CBS'),
('2023-09-09', '12:00p', 'Notre Dame vs NC State', 'Independent, ACC', 2.93, 'ABC'),
('2023-09-09', '7:00p', 'Oregon vs Texas Tech', 'P12, B12', 2.55, 'FOX');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-09-09', '7:30p', 'Wisconsin vs Washington St.', 'B10, P12', 2.28, 'ABC'),
('2023-09-09', '10:30p', 'Auburn vs Cal', 'SEC, P12', 2.23, 'ESPN'),
('2023-09-09', '10:30p', 'Stanford vs USC', 'P12, P12', 1.75, 'FOX'),
('2023-09-16', '10:00p', 'Colorado State vs Colorado', 'MWC, P12', 9.30, 'ESPN'),
('2023-09-16', '3:30p', 'South Carolina vs Georgia', 'SEC, SEC', 5.42, 'CBS'),
('2023-09-16', '7:00p', 'Tennessee vs Florida', 'SEC, SEC', 5.31, 'ESPN'),
('2023-09-16', '3:30p', 'Alabama vs USF', 'SEC, AAC', 4.84, 'ABC'),
('2023-09-16', '12:00p', 'FSU vs Boston College', 'ACC, ACC', 3.48, 'ABC'),
('2023-09-16', '12:00p', 'Penn State vs Illinois', 'B10, B10', 3.22, 'FOX'),
('2023-09-16', '4:00p', 'WKU vs Ohio State', 'C-USA, B10', 2.82, 'FOX'),
('2023-09-16', '12:00p', 'LSU vs Mississippi St.', 'SEC, SEC', 2.80, 'ESPN'),
('2023-09-16', '7:30p', 'Pittsburgh vs West Virginia', 'ACC, B12', 2.41, 'ABC'),
('2023-09-16', '3:30p', 'Minnesota vs North Carolina', 'B10, ACC', 1.58, 'ESPN'),
('2023-09-23', '3:30p', 'Colorado vs Oregon', 'B12, P12', 10.03, 'ABC');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-09-23', '7:30p', 'Ohio State vs Notre Dame', 'B10, Independent', 9.99, 'NBC'),
('2023-09-23', '12:00p', 'FSU vs Clemson', 'ACC, ACC', 6.71, 'ABC'),
('2023-09-23', '3:30p', 'Mississippi vs Alabama', 'SEC, SEC', 4.61, 'CBS'),
('2023-09-23', '7:30p', 'Iowa vs Penn State', 'B10, B10', 2.75, 'CBS'),
('2023-09-23', '10:30p', 'USC vs Arizona State', 'P12, P12', 2.63, 'FOX'),
('2023-09-23', '7:30p', 'Texas vs Baylor', 'B12, B12', 2.63, 'ABC'),
('2023-09-23', '7:00p', 'Arkansas vs LSU', 'SEC, SEC', 2.44, 'ESPN'),
('2023-09-23', '12:00p', 'Auburn vs Texas A&M', 'SEC, SEC', 2.18, 'ESPN'),
('2023-09-23', '12:00p', 'Oklahoma vs Cincinnati', 'B12, B12', 2.17, 'FOX'),
('2023-09-23', '12:00p', 'USC vs Colorado', 'P12, B12', 7.24, 'FOX'),
('2023-09-30', '3:30p', 'Georgia vs Auburn', 'SEC, SEC', 6.40, 'CBS'),
('2023-09-30', '7:30p', 'Notre Dame vs Duke', 'Independent, ACC', 5.32, 'ABC'),
('2023-09-30', '3:30p', 'Michigan vs Nebraska', 'B10, B10', 4.48, 'FOX'),
('2023-09-30', '6:00p', 'LSU vs Mississippi St.', 'SEC, SEC', 3.72, 'ESPN'),
('2023-09-30', '9:00p', 'Alabama vs Mississippi St.', 'SEC, SEC', 3.35, 'ESPN'),
('2023-09-30', '3:30p', 'Kansas vs Texas', 'B12, B12', 3.32, 'ABC'),
('2023-09-30', '12:00p', 'Florida vs Kentucky', 'SEC, SEC', 2.32, 'ESPN'),
('2023-09-30', '7:30p', 'Michigan State vs Iowa', 'B10, B10', 2.17, 'NBC'),
('2023-09-30', '12:00p', 'Clemson vs Syracuse', 'ACC, ACC', 1.97, 'ABC'),
('2023-10-07', '12:00p', 'Oklahoma vs Texas', 'B12, B12', 7.87, 'ABC & ESPN2'),
('2023-10-07', '3:30p', 'Alabama vs Texas A&M', 'SEC, SEC', 7.23, 'CBS');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-10-07', '7:30p', 'Notre Dame vs Louisville', 'Independent, ACC', 5.12, 'ABC'),
('2023-10-07', '12:00p', 'Maryland vs Ohio State', 'B10, B10', 4.51, 'FOX'),
('2023-10-07', '7:00p', 'Kentucky vs Georgia', 'SEC, SEC', 3.19, 'ESPN'),
('2023-10-07', '7:30p', 'Michigan vs Minnesota', 'B10, B10', 3.06, 'NBC'),
('2023-10-07', '3:30p', 'Virginia Tech vs FSU', 'ACC, ACC', 3.02, 'ABC'),
('2023-10-07', '10:30p', 'Arizona vs USC', 'P12, P12', 2.55, 'ESPN'),
('2023-10-07', '12:00p', 'LSU vs Missouri', 'SEC, SEC', 2.34, 'ESPN'),
('2023-10-06', '7:30p', 'Kansas State vs Oklahoma State', 'B12, B12', 2.27, 'ESPN'),
('2023-10-14', '3:30p', 'Oregon vs Washington', 'P12, P12', 7.04, 'ABC'),
('2023-10-14', '7:30p', 'USC vs Notre Dame', 'P12, Independent', 6.43, 'NBC');



INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-10-14', '3:30p', 'Texas A&M vs Tennessee', 'SEC, SEC', 4.38, 'CBS'),
('2023-10-14', '12:00p', 'Indiana vs Michigan', 'B10, B10', 3.55, 'FOX'),
('2023-10-14', '12:00p', 'Arkansas vs Alabama', 'SEC, SEC', 3.43, 'ESPN'),
('2023-10-14', '10:00p', 'Stanford vs Colorado', 'P12, B12', 3.29, 'ESPN'),
('2023-10-14', '7:30p', 'Miami vs North Carolina', 'ACC, ACC', 3.08, 'ABC'),
('2023-10-14', '12:00p', 'Georgia vs Vanderbilt', 'SEC, SEC', 2.46, 'CBS'),
('2023-10-14', '4:00p', 'Iowa vs Wisconsin', 'B10, B10', 2.34, 'FOX'),
('2023-10-14', '7:00p', 'Auburn vs LSU', 'SEC, SEC', 2.16, 'ESPN'),
('2023-10-21', '12:00p', 'Penn State vs Ohio State', 'B10, B10', 9.96, 'FOX'),
('2023-10-21', '3:30p', 'Tennessee vs Alabama', 'SEC, SEC', 8.01, 'CBS'),
('2023-10-21', '7:30p', 'Duke vs FSU', 'ACC, ACC', 4.08, 'ABC'),
('2023-10-21', '12:00p', 'Michigan vs Michigan St', 'B10, B10', 3.73, 'NBC'),
('2023-10-21', '8:00p', 'Utah vs USC', 'P12, P12', 3.23, 'FOX'),
('2023-10-21', '4:00p', 'Texas vs Houston', 'B12, B12', 3.06, 'FOX'),
('2023-10-21', '3:30p', 'Washington St vs Oregon', 'B12, P12', 2.35, 'ABC');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-10-21', '2:30p', 'UCF vs Oklahoma', 'B12, B12', 2.17, 'ABC'),
('2023-10-21', '7:00p', 'Mississippi vs Auburn', 'SEC, SEC', 1.80, 'ESPN'),
('2023-10-21', '3:30p', 'Minnesota vs Iowa', 'B10, B10', 1.68, 'NBC'),
('2023-10-28', '3:30p', 'Georgia vs Florida', 'SEC, SEC', 5.95, 'CBS'),
('2023-10-28', '7:30p', 'Ohio State vs Wisconsin', 'B10, B10', 4.87, 'NBC'),
('2023-10-28', '7:30p', 'Colorado vs UCLA', 'P12, P12', 4.66, 'ABC'),
('2023-10-28', '12:00p', 'Oklahoma vs Kansas', 'B12, B12', 3.60, 'FOX'),
('2023-10-28', '12:00p', 'Indiana vs Penn State', 'B10, B10', 3.04, 'CBS'),
('2023-10-28', '3:30p', 'Oregon vs Utah', 'P12, P12', 2.81, 'FOX'),
('2023-10-28', '7:00p', 'Tennessee vs Kentucky', 'SEC, SEC', 2.51, 'ESPN'),
('2023-10-28', '3:30p', 'BYU vs Texas', 'B12, B12', 2.38, 'ABC'),
('2023-10-28', '12:00p', 'FSU vs Wake Forest', 'ACC, ACC', 2.04, 'ABC'),
('2023-10-28', '12:00p', 'South Carolina vs Texas A&M', 'SEC, SEC', 1.90, 'ESPN'),
('2023-11-04', '7:45p', 'LSU vs Alabama', 'SEC, SEC', 8.82, 'CBS'),
('2023-11-04', '3:30p', 'Missouri vs Georgia', 'SEC, SEC', 7.00, 'CBS'),
('2023-11-04', '7:30p', 'Washington vs USC', 'P12, P12', 4.45, 'ABC');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-11-04', '12:00p', 'Ohio State vs Rutgers', 'B10, B10', 3.96, 'CBS'),
('2023-11-04', '3:30p', 'Oklahoma vs Oklahoma State', 'B12, B12', 3.76, 'ABC'),
('2023-11-04', '12:00p', 'Notre Dame vs Clemson', 'Independent, ACC', 3.24, 'ABC'),
('2023-11-04', '12:00p', 'Kansas State vs Texas', 'B12, B12', 2.95, 'FOX'),
('2023-11-04', '10:00p', 'Oregon State vs Colorado', 'P12, P12', 2.77, 'ESPN'),
('2023-11-04', '7:30p', 'Purdue vs Michigan', 'B10, B10', 2.60, 'NBC'),
('2023-11-04', '3:30p', 'Penn State vs Maryland', 'B10, B10', 2.39, 'FOX'),
('2023-11-11', '12:00p', 'Michigan vs Penn State', 'B10, B10', 9.16, 'FOX'),
('2023-11-11', '3:30p', 'Utah vs Washington', 'P12, P12', 5.17, 'FOX'),
('2023-11-11', '7:00p', 'Mississippi vs Georgia', 'SEC, SEC', 4.83, 'ESPN'),
('2023-11-11', '3:30p', 'Miami vs FSU', 'ACC, ACC', 4.14, 'ABC'),
('2023-11-11', '3:30p', 'Tennessee vs Missouri', 'SEC, SEC', 3.62, 'CBS'),
('2023-11-11', '7:30p', 'Michigan State vs Ohio State', 'B10, B10', 3.57, 'NBC'),
('2023-11-11', '10:30p', 'USC vs Oregon', 'P12, P12', 3.01, 'FOX'),
('2023-11-11', '7:30p', 'Texas vs TCU', 'B12, B12', 2.82, 'ABC'),
('2023-11-11', '12:00p', 'Alabama vs Kentucky', 'SEC, SEC', 2.76, 'ESPN'),
('2023-11-11', '7:00p', 'West Virginia vs Oklahoma', 'B12, B12', 2.39, 'FOX'),
('2023-11-18', '3:00p', 'Georgia vs Tennessee', 'SEC, SEC', 5.73, 'CBS'),
('2023-11-18', '12:30p', 'Michigan vs Maryland', 'B10, B10', 5.43, 'FOX');


INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-11-18', '7:30p', 'Washington vs Oregon State', 'P12, P12', 4.73, 'ABC'),
('2023-11-18', '12:00p', 'Louisville vs Miami', 'ACC, ACC', 2.89, 'ABC'),
('2023-11-18', '3:30p', 'USC vs UCLA', 'P12, P12', 2.65, 'ABC'),
('2023-11-18', '8:00p', 'Texas vs Iowa State', 'B12, B12', 2.47, 'FOX'),
('2023-11-18', '7:30p', 'Nebraska vs Wisconsin', 'B10, B10', 2.45, 'NBC'),
('2023-11-18', '7:30p', 'Florida vs Missouri', 'SEC, SEC', 2.27, 'ESPN'),
('2023-11-18', '12:00p', 'Oklahoma vs BYU', 'B12, Independent', 2.17, 'ESPN'),
('2023-11-18', '4:00p', 'Minnesota vs Ohio State', 'B10, B10', 2.02, 'BTN'),
('2023-11-25', '12:00p', 'Ohio State vs Michigan', 'B10, B10', 19.07, 'FOX'),
('2023-11-25', '3:30p', 'Alabama vs Auburn', 'SEC, SEC', 9.09, 'CBS'),
('2023-11-25', '4:00p', 'Washington St. vs Washington', 'P12, P12', 5.85, 'FOX'),
('2023-11-25', '7:30p', 'Georgia vs Georgia Tech', 'SEC, ACC', 5.33, 'ABC');



INSERT INTO [2023_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2023-11-25', '7:00p', 'FSU vs Florida', 'ACC, SEC', 5.07, 'ESPN'),
('2023-11-24', '12:00p', 'Iowa vs Nebraska', 'B10, B10', 4.39, 'CBS'),
('2023-11-24', '8:30p', 'Oregon State vs Oregon', 'P12, P12', 4.12, 'FOX'),
('2023-11-24', '4:00p', 'Missouri vs Arkansas', 'SEC, SEC', 4.09, 'CBS'),
('2023-11-24', '7:30p', 'Texas Tech vs Texas', 'B12, B12', 3.77, 'ABC'),
('2023-11-24', '7:30p', 'Penn State vs Michigan State', 'B10, B10', 3.38, 'NBC');


INSERT INTO [2024_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2024-09-01', '7:30p', 'USC vs LSU', 'B10, SEC', 8.62, 'ABC'),
('2024-08-31', '7:30p', 'Notre Dame vs Texas A&M', 'Independent, SEC', 7.92, 'ABC'),
('2024-08-31', '12:00p', 'Clemson vs Georgia', 'ACC, SEC', 7.58, 'ABC'),
('2024-08-31', '3:30p', 'Miami vs Florida', 'ACC, SEC', 6.35, 'ABC'),
('2024-08-24', '12:00p', 'Florida State vs Georgia Tech', 'ACC, ACC', 4.99, 'ESPN'),
('2024-08-29', '8:00p', 'NDSU vs Colorado', 'MAC, B12', 4.76, 'ESPN'),
('2024-09-02', '7:30p', 'Boston College vs FSU', 'ACC, ACC', 4.44, 'ESPN'),
('2024-08-31', '12:00p', 'Penn State vs West Virginia', 'B10, B12', 2.99, 'FOX'),
('2024-08-31', '3:30p', 'Akron vs Ohio State', 'MAC, B10', 2.97, 'CBS'),
('2024-08-31', '12:00p', 'Fresno State vs Michigan', 'MWC, B10', 2.56, 'NBC'),
('2024-09-07', '12:00p', 'Texas vs Michigan', 'SEC, B10', 9.19, 'FOX'),
('2024-09-07', '7:30p', 'Colorado vs Nebraska', 'B12, B10', 5.67, 'NBC'),
('2024-09-07', '3:30p', 'Northern Illinois vs Notre Dame', 'MAC, Independent', 3.93, 'NBC'),
('2024-09-07', '7:30p', 'Tennessee vs NC State', 'SEC, ACC', 2.96, 'ABC'),
('2024-09-07', '12:00p', 'Arkansas vs Oklahoma State', 'SEC, B12', 2.80, 'ABC'),
('2024-09-07', '3:30p', 'South Carolina vs Kentucky', 'SEC, SEC', 2.73, 'ABC'),
('2024-09-07', '7:00p', 'USF vs Alabama', 'AAC, SEC', 2.58, 'ESPN'),
('2024-09-07', '3:30p', 'Iowa State vs Iowa', 'B12, B10', 2.28, 'CBS');


INSERT INTO [2024_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2024-09-07', '3:30p', 'Baylor vs Utah', 'B12, P12', 2.08, 'FOX'),
('2024-09-07', '7:30p', 'Western Michigan vs Ohio State', 'MAC, B10', 1.72, 'BTN'),
('2024-09-14', '7:30p', 'Georgia vs Kentucky', 'SEC, SEC', 6.60, 'ABC'),
('2024-09-14', '12:00p', 'Alabama vs Wisconsin', 'SEC, B10', 5.03, 'ABC'),
('2024-09-14', '12:00p', 'LSU vs South Carolina', 'SEC, SEC', 4.94, 'ABC'),
('2024-09-14', '3:30p', 'Texas A&M vs Florida', 'SEC, SEC', 4.80, 'ABC'),
('2024-09-14', '8:00p', 'Colorado vs Colorado State', 'B12, MWC', 3.25, 'CBS'),
('2024-09-14', '3:30p', 'Oregon vs Oregon State', 'B10, P12', 2.82, 'FOX'),
('2024-09-13', '8:00p', 'Arizona vs Kansas State', 'B12, B12', 2.58, 'FOX'),
('2024-09-14', '3:30p', 'Notre Dame vs Purdue', 'Independent, B1', 2.28, 'CBS'),
('2024-09-14', '12:00p', 'Memphis vs FSU', 'AAC, ACC', 1.59, 'ESPN'),
('2024-09-14', '7:00p', 'UTSA vs Texas', 'AAC, SEC', 1.48, 'ESPN'),
('2024-09-21', '3:30p', 'USC vs Michigan', 'B10, B10', 6.32, 'CBS');


INSERT INTO [2024_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2024-09-21', '7:30p', 'Tennessee vs Oklahoma', 'SEC, SEC', 6.27, 'ABC'),
('2024-09-20', '8:00p', 'Illinois vs Nebraska', 'B10, B10', 4.21, 'FOX'),
('2024-09-21', '12:00p', 'Marshall vs Ohio State', 'C-USA, B10', 3.96, 'FOX'),
('2024-09-21', '8:00p', 'Baylor vs Colorado', 'B12, B12', 3.64, 'FOX'),
('2024-09-21', '3:30p', 'UCLA vs LSU', 'B10, SEC', 2.73, 'ABC'),
('2024-09-21', '12:00p', 'Florida vs Mississippi St.', 'SEC, SEC', 2.64, 'ESPN'),
('2024-09-21', '4:00p', 'Utah vs Oklahoma State', 'P12, B12', 2.14, 'FOX'),
('2024-09-21', '3:30p', 'Arkansas vs Auburn', 'SEC, SEC', 2.02, 'ESPN'),
('2024-09-21', '12:00p', 'NC State vs Clemson', 'ACC, ACC', 1.95, 'ABC'),
('2024-09-28', '7:30p', 'Georgia vs Alabama', 'SEC, SEC', 11.99, 'ABC'),
('2024-09-28', '3:30p', 'Oklahoma vs Auburn', 'SEC, SEC', 5.04, 'ABC'),
('2024-09-28', '3:30p', 'Colorado vs UCF', 'B12, B12', 4.17, 'FOX'),
('2024-09-28', '12:00p', 'Kentucky vs Mississippi', 'SEC, SEC', 3.99, 'ABC'),
('2024-09-28', '12:00p', 'Minnesota vs Michigan', 'B10, B10', 3.60, 'FOX'),
('2024-09-27', '7:30p', 'Virginia Tech vs Miami', 'ACC, ACC', 3.26, 'ESPN'),
('2024-09-27', '7:30p', 'Illinois vs Penn State', 'B10, B10', 3.09, 'NBC'),
('2024-09-27', '8:00p', 'Washington vs Rutgers', 'B10, B10', 1.93, 'FOX'),
('2024-09-28', '12:00p', 'Oklahoma State vs Kansas State', 'B12, B12', 1.88, 'ESPN');



INSERT INTO [2024_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES 
('2024-09-28', '3:30p', 'Arkansas vs Texas A&M', 'SEC, SEC', 1.80, 'ESPN'),
('2024-09-28', '7:30p', 'Tennessee vs Arkansas', 'SEC, SEC', 5.29, 'ABC'),
('2024-10-05', '3:30p', 'Auburn vs Georgia', 'SEC, SEC', 4.93, 'NBC'),
('2024-10-05', '3:30p', 'Iowa vs Ohio State', 'B10, B10', 4.46, 'CBS'),
('2024-10-05', '7:30p', 'Michigan vs Washington', 'B10, B10', 4.04, 'NBC'),
('2024-10-05', '7:00p', 'Missouri vs Texas A&M', 'SEC, SEC', 3.27, 'ABC'),
('2024-10-04', '9:00p', 'Michigan State vs Oregon', 'B10, B10', 2.84, 'FOX'),
('2024-10-05', '12:00p', 'UCLA vs Penn State', 'B10, B10', 2.75, 'FOX'),
('2024-10-11', '10:30p', 'Miami vs Cal', 'ACC, ACC', 1.92, 'ESPN'),
('2024-10-05', '7:30p', 'Houston vs TCU', 'B12, B12', 1.51, 'ESPN'),
('2024-10-05', '12:00p', 'Clemson vs FSU', 'ACC, ACC', 1.41, 'ESPN'),
('2024-10-12', '7:30p', 'Ohio State vs Oregon', 'B10, B10', 9.60, 'NBC'),
('2024-10-12', '3:30p', 'Texas vs Oklahoma', 'SEC, SEC', 7.63, 'ABC');


USE CollegeFootballAnalysis;


INSERT INTO [2024_CFB_Season] (Date, Game, Conference, Viewership, Network)
VALUES
    ('2024-10-12', 'South Carolina vs Alabama', 'SEC,SEC', 6.00, 'ABC'),
    ('2024-10-12', 'Penn State vs USC', 'B10,B10', 4.28, 'CBS'),
    ('2024-10-12', 'Mississippi vs LSU', 'SEC,SEC', 4.24, 'ABC'),
    ('2024-10-12', 'Kansas State vs Colorado', 'B12,B12', 3.26, 'ESPN'),
    ('2024-10-12', 'Florida vs Tennessee', 'SEC,SEC', 3.25, 'ESPN'),
    ('2024-10-12', 'Washington vs Iowa', 'B10,B10', 2.37, 'FOX'),
    ('2024-10-12', 'Stanford vs Notre Dame', 'ACC,Independent', 1.87, 'NBC'),
    ('2024-10-12', 'Arizona vs BYU', 'B12,B12', 1.31, 'FOX'),
    ('2024-10-12', 'Georgia vs Texas', 'SEC,SEC', 13.19, 'ABC'),
    ('2024-10-12', 'Alabama vs Tennessee', 'SEC,SEC', 10.23, 'ABC'),
    ('2024-10-12', 'Miami vs Louisville', 'ACC,ACC', 4.07, 'ABC'),
    ('2024-10-19', 'Nebraska vs Indiana', 'B10,B10', 3.18, 'FOX'),
    ('2024-10-19', 'Michigan vs Illinois', 'B10,B10', 3.01, 'CBS'),
    ('2024-10-19', 'Auburn vs Missouri', 'SEC,SEC', 2.45, 'ESPN'),
    ('2024-10-19', 'Oregon vs Purdue', 'B10,B10', 2.15, 'FOX'),
    ('2024-10-19', 'Colorado vs Arizona', 'B12,B12', 2.02, 'FOX'),
    ('2024-10-18', 'Oklahoma State vs BYU', 'B12,B12', 1.66, 'ESPN'),
    ('2024-10-19', 'Notre Dame vs Georgia Tech', 'Independent,ACC', 1.59, 'ESPN'),
    ('2024-10-26', 'Nebraska vs Ohio State', 'B10,B10', 5.96, 'FOX');


USE CollegeFootballAnalysis;

INSERT INTO [2024_CFB_Season] (Date, Game, Conference, Viewership, Network)
VALUES
    ('2024-10-25', 'Rutgers vs USC', 'B10,B10', 2.01, 'FOX'),
    ('2024-10-26', 'Missouri vs Alabama', 'SEC,SEC', 5.54, 'ABC'),
    ('2024-10-26', 'LSU vs Texas A&M', 'SEC,SEC', 5.06, 'ABC'),
    ('2024-10-26', 'Penn State vs Wisconsin', 'B10,B10', 3.34, 'NBC'),
    ('2024-10-26', 'Notre Dame vs Navy', 'Independent,AA', 2.79, 'ABC'),
    ('2024-10-26', 'Illinois vs Oregon', 'B10,B10', 2.75, 'CBS'),
    ('2024-10-26', 'Oklahoma vs Mississippi', 'SEC,SEC', 2.60, 'ESPN'),
    ('2024-10-26', 'Texas Tech vs TCU', 'B12,B12', 2.36, 'FOX'),
    ('2024-10-26', 'Cincinnati vs Colorado', 'B12,B12', 2.34, 'ESPN');


SELECT * FROM [2024_CFB_Season]
WHERE Date IS NULL OR Time IS NULL OR Game IS NULL OR Conference IS NULL OR Viewership IS NULL OR Network IS NULL;

USE CollegeFootballAnalysis;

-- Delete entries from the first batch of data
DELETE FROM [2024_CFB_Season]
WHERE (Date = '2024-10-12' AND Game = 'South Carolina vs Alabama')
   OR (Date = '2024-10-12' AND Game = 'Penn State vs USC')
   OR (Date = '2024-10-12' AND Game = 'Mississippi vs LSU')
   OR (Date = '2024-10-12' AND Game = 'Kansas State vs Colorado')
   OR (Date = '2024-10-12' AND Game = 'Florida vs Tennessee')
   OR (Date = '2024-10-12' AND Game = 'Washington vs Iowa')
   OR (Date = '2024-10-12' AND Game = 'Stanford vs Notre Dame')
   OR (Date = '2024-10-12' AND Game = 'Arizona vs BYU')
   OR (Date = '2024-10-12' AND Game = 'Georgia vs Texas')
   OR (Date = '2024-10-12' AND Game = 'Alabama vs Tennessee')
   OR (Date = '2024-10-12' AND Game = 'Miami vs Louisville')
   OR (Date = '2024-10-19' AND Game = 'Nebraska vs Indiana')
   OR (Date = '2024-10-19' AND Game = 'Michigan vs Illinois')
   OR (Date = '2024-10-19' AND Game = 'Auburn vs Missouri')
   OR (Date = '2024-10-19' AND Game = 'Oregon vs Purdue')
   OR (Date = '2024-10-19' AND Game = 'Colorado vs Arizona')
   OR (Date = '2024-10-18' AND Game = 'Oklahoma State vs BYU')
   OR (Date = '2024-10-19' AND Game = 'Notre Dame vs Georgia Tech')
   OR (Date = '2024-10-26' AND Game = 'Nebraska vs Ohio State');

-- Delete entries from the second batch of data
DELETE FROM [2024_CFB_Season]
WHERE (Date = '2024-10-25' AND Game = 'Rutgers vs USC')
   OR (Date = '2024-10-26' AND Game = 'Missouri vs Alabama')
   OR (Date = '2024-10-26' AND Game = 'LSU vs Texas A&M')
   OR (Date = '2024-10-26' AND Game = 'Penn State vs Wisconsin')
   OR (Date = '2024-10-26' AND Game = 'Notre Dame vs Navy')
   OR (Date = '2024-10-26' AND Game = 'Illinois vs Oregon')
   OR (Date = '2024-10-26' AND Game = 'Oklahoma vs Mississippi')
   OR (Date = '2024-10-26' AND Game = 'Texas Tech vs TCU')
   OR (Date = '2024-10-26' AND Game = 'Cincinnati vs Colorado');



   USE CollegeFootballAnalysis;

INSERT INTO [2024_CFB_Season] (Date, Time, Game, Conference, Viewership, Network)
VALUES
    -- First batch of data (first image)
    ('2024-10-12', '12:00 PM', 'South Carolina vs Alabama', 'SEC,SEC', 6.00, 'ABC'),
    ('2024-10-12', '3:30 PM', 'Penn State vs USC', 'B10,B10', 4.28, 'CBS'),
    ('2024-10-12', '7:30 PM', 'Mississippi vs LSU', 'SEC,SEC', 4.24, 'ABC'),
    ('2024-10-12', '10:15 PM', 'Kansas State vs Colorado', 'B12,B12', 3.26, 'ESPN'),
    ('2024-10-12', '7:00 PM', 'Florida vs Tennessee', 'SEC,SEC', 3.25, 'ESPN'),
    ('2024-10-12', '12:00 PM', 'Washington vs Iowa', 'B10,B10', 2.37, 'FOX'),
    ('2024-10-12', '3:30 PM', 'Stanford vs Notre Dame', 'ACC,Independent', 1.87, 'NBC'),
    ('2024-10-12', '4:00 PM', 'Arizona vs BYU', 'B12,B12', 1.31, 'FOX'),
    ('2024-10-12', '7:30 PM', 'Georgia vs Texas', 'SEC,SEC', 13.19, 'ABC'),
    ('2024-10-12', '3:30 PM', 'Alabama vs Tennessee', 'SEC,SEC', 10.23, 'ABC'),
    ('2024-10-12', '12:00 PM', 'Miami vs Louisville', 'ACC,ACC', 4.07, 'ABC'),
    ('2024-10-19', '12:00 PM', 'Nebraska vs Indiana', 'B10,B10', 3.18, 'FOX'),
    ('2024-10-19', '3:30 PM', 'Michigan vs Illinois', 'B10,B10', 3.01, 'CBS'),
    ('2024-10-19', '12:00 PM', 'Auburn vs Missouri', 'SEC,SEC', 2.45, 'ESPN'),
    ('2024-10-19', '8:00 PM', 'Oregon vs Purdue', 'B10,B10', 2.15, 'FOX'),
    ('2024-10-19', '2:00 PM', 'Colorado vs Arizona', 'B12,B12', 2.02, 'FOX'),
    ('2024-10-18', '10:15 PM', 'Oklahoma State vs BYU', 'B12,B12', 1.66, 'ESPN'),
    ('2024-10-19', '3:30 PM', 'Notre Dame vs Georgia Tech', 'Independent,ACC', 1.59, 'ESPN'),
    ('2024-10-26', '12:00 PM', 'Nebraska vs Ohio State', 'B10,B10', 5.96, 'FOX'),

    -- Second batch of data (second image)
    ('2024-10-25', '11:00 PM', 'Rutgers vs USC', 'B10,B10', 2.01, 'FOX'),
    ('2024-10-26', '3:30 PM', 'Missouri vs Alabama', 'SEC,SEC', 5.54, 'ABC'),
    ('2024-10-26', '7:30 PM', 'LSU vs Texas A&M', 'SEC,SEC', 5.06, 'ABC'),
    ('2024-10-26', '7:30 PM', 'Penn State vs Wisconsin', 'B10,B10', 3.34, 'NBC'),
    ('2024-10-26', '12:00 PM', 'Notre Dame vs Navy', 'Independent,AA', 2.79, 'ABC'),
    ('2024-10-26', '3:30 PM', 'Illinois vs Oregon', 'B10,B10', 2.75, 'CBS'),
    ('2024-10-26', '12:00 PM', 'Oklahoma vs Mississippi', 'SEC,SEC', 2.60, 'ESPN'),
    ('2024-10-26', '3:30 PM', 'Texas Tech vs TCU', 'B12,B12', 2.36, 'FOX'),
    ('2024-10-26', '10:15 PM', 'Cincinnati vs Colorado', 'B12,B12', 2.34, 'ESPN');


	SELECT * FROM [2024_CFB_Season]
WHERE Viewership < 0.5 OR Viewership > 20;

SELECT 
    Network,
    '2022' AS Season, 
    AVG(Viewership) AS Avg_Viewership 
FROM 
    [2022_CFB_Season]
GROUP BY 
    Network

UNION ALL

SELECT 
    Network,
    '2023' AS Season, 
    AVG(Viewership) AS Avg_Viewership 
FROM 
    [2023_CFB_Season]
GROUP BY 
    Network

UNION ALL

SELECT 
    Network,
    '2024' AS Season, 
    AVG(Viewership) AS Avg_Viewership 
FROM 
    [2024_CFB_Season]
GROUP BY 
    Network
ORDER BY 
    Network, Season;


	SELECT 
    Season, 
    Network, 
    Conference, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    (
        SELECT '2022' AS Season, Network, Conference, Viewership 
        FROM [2022_CFB_Season]
        WHERE Conference LIKE '%SEC%' OR Conference LIKE '%B10%'
        
        UNION ALL
        
        SELECT '2023' AS Season, Network, Conference, Viewership 
        FROM [2023_CFB_Season]
        WHERE Conference LIKE '%SEC%' OR Conference LIKE '%B10%'
        
        UNION ALL
        
        SELECT '2024' AS Season, Network, Conference, Viewership 
        FROM [2024_CFB_Season]
        WHERE Conference LIKE '%SEC%' OR Conference LIKE '%B10%'
    ) AS Combined
GROUP BY 
    Season, Network, Conference
ORDER BY 
    Season, Network, Conference;


SELECT 
    Time,
    '2022' AS Season, 
    AVG(Viewership) AS Avg_Viewership 
FROM 
    [2022_CFB_Season]
GROUP BY 
    Time

UNION ALL

SELECT 
    Time,
    '2023' AS Season, 
    AVG(Viewership) AS Avg_Viewership 
FROM 
    [2023_CFB_Season]
GROUP BY 
    Time

UNION ALL

SELECT 
    Time,
    '2024' AS Season, 
    AVG(Viewership) AS Avg_Viewership 
FROM 
    [2024_CFB_Season]
GROUP BY 
    Time
ORDER BY 
    Time, Season;


	WITH Avg_Viewership AS (
    SELECT 
        '2022' AS Season, Network, AVG(Viewership) AS Avg_Viewership 
    FROM 
        [2022_CFB_Season]
    GROUP BY 
        Network

    UNION ALL

    SELECT 
        '2023' AS Season, Network, AVG(Viewership) AS Avg_Viewership 
    FROM 
        [2023_CFB_Season]
    GROUP BY 
        Network

    UNION ALL

    SELECT 
        '2024' AS Season, Network, AVG(Viewership) AS Avg_Viewership 
    FROM 
        [2024_CFB_Season]
    GROUP BY 
        Network
)




WITH Avg_Viewership AS (
    SELECT 
        '2022' AS Season, Network, AVG(Viewership) AS Avg_Viewership 
    FROM 
        [2022_CFB_Season]
    GROUP BY 
        Network

    UNION ALL

    SELECT 
        '2023' AS Season, Network, AVG(Viewership) AS Avg_Viewership 
    FROM 
        [2023_CFB_Season]
    GROUP BY 
        Network

    UNION ALL

    SELECT 
        '2024' AS Season, Network, AVG(Viewership) AS Avg_Viewership 
    FROM 
        [2024_CFB_Season]
    GROUP BY 
        Network
)

SELECT 
    A.Network,
    A.Season AS Previous_Season,
    B.Season AS Current_Season,
    A.Avg_Viewership AS Previous_Avg_Viewership,
    B.Avg_Viewership AS Current_Avg_Viewership,
    ((B.Avg_Viewership - A.Avg_Viewership) / A.Avg_Viewership) * 100 AS Percentage_Change
FROM 
    Avg_Viewership A
JOIN 
    Avg_Viewership B ON A.Network = B.Network AND A.Season = '2022' AND B.Season = '2023'
UNION ALL
SELECT 
    A.Network,
    A.Season AS Previous_Season,
    B.Season AS Current_Season,
    A.Avg_Viewership AS Previous_Avg_Viewership,
    B.Avg_Viewership AS Current_Avg_Viewership,
    ((B.Avg_Viewership - A.Avg_Viewership) / A.Avg_Viewership) * 100 AS Percentage_Change
FROM 
    Avg_Viewership A
JOIN 
    Avg_Viewership B ON A.Network = B.Network AND A.Season = '2023' AND B.Season = '2024'
ORDER BY 
    Network, Previous_Season;


	WITH Top2022 AS (
    SELECT '2022' AS Season, Date, Game, Network, Conference, Viewership
    FROM [2022_CFB_Season]
    ORDER BY Viewership DESC
    OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY
),
Top2023 AS (
    SELECT '2023' AS Season, Date, Game, Network, Conference, Viewership
    FROM [2023_CFB_Season]
    ORDER BY Viewership DESC
    OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY
),
Top2024 AS (
    SELECT '2024' AS Season, Date, Game, Network, Conference, Viewership
    FROM [2024_CFB_Season]
    ORDER BY Viewership DESC
    OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY
)

SELECT * FROM Top2022
UNION ALL
SELECT * FROM Top2023
UNION ALL
SELECT * FROM Top2024;


SELECT 
    Conference, 
    '2022' AS Season, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    [2022_CFB_Season]
GROUP BY 
    Conference

UNION ALL

SELECT 
    Conference, 
    '2023' AS Season, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    [2023_CFB_Season]
GROUP BY 
    Conference

UNION ALL

SELECT 
    Conference, 
    '2024' AS Season, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    [2024_CFB_Season]
GROUP BY 
    Conference
ORDER BY 
    Conference, Season;





SELECT 
    Network, 
    Time, 
    '2022' AS Season, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    [2022_CFB_Season]
GROUP BY 
    Network, Time

UNION ALL

SELECT 
    Network, 
    Time, 
    '2023' AS Season, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    [2023_CFB_Season]
GROUP BY 
    Network, Time

UNION ALL

SELECT 
    Network, 
    Time, 
    '2024' AS Season, 
    AVG(Viewership) AS Avg_Viewership
FROM 
    [2024_CFB_Season]
GROUP BY 
    Network, Time
ORDER BY 
    Network, Time, Season;



INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
SELECT DISTINCT 
    CASE 
        WHEN Game LIKE '%Alabama%' THEN 'Alabama'
        WHEN Game LIKE '%Arkansas%' THEN 'Arkansas'
        WHEN Game LIKE '%Auburn%' THEN 'Auburn'
        WHEN Game LIKE '%Florida%' THEN 'Florida'
        WHEN Game LIKE '%Georgia%' THEN 'Georgia'
        WHEN Game LIKE '%Kentucky%' THEN 'Kentucky'
        WHEN Game LIKE '%LSU%' THEN 'LSU'
        WHEN Game LIKE '%Mississippi State%' THEN 'Mississippi State'
        WHEN Game LIKE '%Missouri%' THEN 'Missouri'
        WHEN Game LIKE '%Ole Miss%' THEN 'Ole Miss'
        WHEN Game LIKE '%South Carolina%' THEN 'South Carolina'
        WHEN Game LIKE '%Tennessee%' THEN 'Tennessee'
        WHEN Game LIKE '%Texas A&M%' THEN 'Texas A&M'
        WHEN Game LIKE '%Vanderbilt%' THEN 'Vanderbilt'
    END AS Team_Name,
    'SEC' AS Conference,
    2023 AS Season
FROM [2023_CFB_Season]
WHERE Conference LIKE '%SEC%'
AND (
    Game LIKE '%Alabama%' OR
    Game LIKE '%Arkansas%' OR
    Game LIKE '%Auburn%' OR
    Game LIKE '%Florida%' OR
    Game LIKE '%Georgia%' OR
    Game LIKE '%Kentucky%' OR
    Game LIKE '%LSU%' OR
    Game LIKE '%Mississippi State%' OR
    Game LIKE '%Missouri%' OR
    Game LIKE '%Ole Miss%' OR
    Game LIKE '%South Carolina%' OR
    Game LIKE '%Tennessee%' OR
    Game LIKE '%Texas A&M%' OR
    Game LIKE '%Vanderbilt%'
);




INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
SELECT DISTINCT 
    CASE 
        WHEN Game LIKE '%Alabama%' THEN 'Alabama'
        WHEN Game LIKE '%Arkansas%' THEN 'Arkansas'
        WHEN Game LIKE '%Auburn%' THEN 'Auburn'
        WHEN Game LIKE '%Florida%' THEN 'Florida'
        WHEN Game LIKE '%Georgia%' THEN 'Georgia'
        WHEN Game LIKE '%Kentucky%' THEN 'Kentucky'
        WHEN Game LIKE '%LSU%' THEN 'LSU'
        WHEN Game LIKE '%Mississippi State%' THEN 'Mississippi State'
        WHEN Game LIKE '%Missouri%' THEN 'Missouri'
        WHEN Game LIKE '%Ole Miss%' THEN 'Ole Miss'
        WHEN Game LIKE '%South Carolina%' THEN 'South Carolina'
        WHEN Game LIKE '%Tennessee%' THEN 'Tennessee'
        WHEN Game LIKE '%Texas A&M%' THEN 'Texas A&M'
        WHEN Game LIKE '%Vanderbilt%' THEN 'Vanderbilt'
    END AS Team_Name,
    'SEC' AS Conference,
    2022 AS Season
FROM [2022_CFB_Season]
WHERE Conference LIKE '%SEC%'
AND (
    Game LIKE '%Alabama%' OR
    Game LIKE '%Arkansas%' OR
    Game LIKE '%Auburn%' OR
    Game LIKE '%Florida%' OR
    Game LIKE '%Georgia%' OR
    Game LIKE '%Kentucky%' OR
    Game LIKE '%LSU%' OR
    Game LIKE '%Mississippi State%' OR
    Game LIKE '%Missouri%' OR
    Game LIKE '%Ole Miss%' OR
    Game LIKE '%South Carolina%' OR
    Game LIKE '%Tennessee%' OR
    Game LIKE '%Texas A&M%' OR
    Game LIKE '%Vanderbilt%'
);

INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Illinois', 'B10', 2022),
    ('Indiana', 'B10', 2022),
    ('Iowa', 'B10', 2022),
    ('Maryland', 'B10', 2022),
    ('Michigan', 'B10', 2022),
    ('Michigan State', 'B10', 2022),
    ('Minnesota', 'B10', 2022),
    ('Nebraska', 'B10', 2022),
    ('Northwestern', 'B10', 2022),
    ('Ohio State', 'B10', 2022),
    ('Penn State', 'B10', 2022),
    ('Purdue', 'B10', 2022),
    ('Rutgers', 'B10', 2022),
    ('Wisconsin', 'B10', 2022);

	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Illinois', 'B10', 2023),
    ('Indiana', 'B10', 2023),
    ('Iowa', 'B10', 2023),
    ('Maryland', 'B10', 2023),
    ('Michigan', 'B10', 2023),
    ('Michigan State', 'B10', 2023),
    ('Minnesota', 'B10', 2023),
    ('Nebraska', 'B10', 2023),
    ('Northwestern', 'B10', 2023),
    ('Ohio State', 'B10', 2023),
    ('Penn State', 'B10', 2023),
    ('Purdue', 'B10', 2023),
    ('Rutgers', 'B10', 2023),
    ('Wisconsin', 'B10', 2023);




	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Boston College', 'ACC', 2023),
    ('Clemson', 'ACC', 2023),
    ('Duke', 'ACC', 2023),
    ('Florida State', 'ACC', 2023),
    ('Georgia Tech', 'ACC', 2023),
    ('Louisville', 'ACC', 2023),
    ('Miami', 'ACC', 2023),
    ('North Carolina', 'ACC', 2023),
    ('NC State', 'ACC', 2023),
    ('Pittsburgh', 'ACC', 2023),
    ('Syracuse', 'ACC', 2023),
    ('Virginia', 'ACC', 2023),
    ('Virginia Tech', 'ACC', 2023),
    ('Wake Forest', 'ACC', 2023);




	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Boston College', 'ACC', 2022),
    ('Clemson', 'ACC', 2022),
    ('Duke', 'ACC', 2022),
    ('Florida State', 'ACC', 2022),
    ('Georgia Tech', 'ACC', 2022),
    ('Louisville', 'ACC', 2022),
    ('Miami', 'ACC', 2022),
    ('North Carolina', 'ACC', 2022),
    ('NC State', 'ACC', 2022),
    ('Pittsburgh', 'ACC', 2022),
    ('Syracuse', 'ACC', 2022),
    ('Virginia', 'ACC', 2022),
    ('Virginia Tech', 'ACC', 2022),
    ('Wake Forest', 'ACC', 2022);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Baylor', 'B12', 2022),
    ('Iowa State', 'B12', 2022),
    ('Kansas', 'B12', 2022),
    ('Kansas State', 'B12', 2022),
    ('Oklahoma', 'B12', 2022),
    ('Oklahoma State', 'B12', 2022),
    ('TCU', 'B12', 2022),
    ('Texas', 'B12', 2022),
    ('Texas Tech', 'B12', 2022),
    ('West Virginia', 'B12', 2022);

	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Baylor', 'B12', 2023),
    ('Iowa State', 'B12', 2023),
    ('Kansas', 'B12', 2023),
    ('Kansas State', 'B12', 2023),
    ('Oklahoma', 'B12', 2023),
    ('Oklahoma State', 'B12', 2023),
    ('TCU', 'B12', 2023),
    ('Texas', 'B12', 2023),
    ('Texas Tech', 'B12', 2023),
    ('West Virginia', 'B12', 2023),
    ('BYU', 'B12', 2023),
    ('Cincinnati', 'B12', 2023),
    ('Houston', 'B12', 2023),
    ('UCF', 'B12', 2023);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Arizona', 'P12', 2023),
    ('Arizona State', 'P12', 2023),
    ('California', 'P12', 2023),
    ('Colorado', 'P12', 2023),
    ('Oregon', 'P12', 2023),
    ('Oregon State', 'P12', 2023),
    ('Stanford', 'P12', 2023),
    ('UCLA', 'P12', 2023),
    ('USC', 'P12', 2023),
    ('Utah', 'P12', 2023),
    ('Washington', 'P12', 2023),
    ('Washington State', 'P12', 2023);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Arizona', 'P12', 2022),
    ('Arizona State', 'P12', 2022),
    ('California', 'P12', 2022),
    ('Colorado', 'P12', 2022),
    ('Oregon', 'P12', 2022),
    ('Oregon State', 'P12', 2022),
    ('Stanford', 'P12', 2022),
    ('UCLA', 'P12', 2022),
    ('USC', 'P12', 2022),
    ('Utah', 'P12', 2022),
    ('Washington', 'P12', 2022),
    ('Washington State', 'P12', 2022);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Cincinnati', 'AAC', 2022),
    ('East Carolina', 'AAC', 2022),
    ('Houston', 'AAC', 2022),
    ('Memphis', 'AAC', 2022),
    ('Navy', 'AAC', 2022),
    ('SMU', 'AAC', 2022),
    ('South Florida', 'AAC', 2022),
    ('Temple', 'AAC', 2022),
    ('Tulane', 'AAC', 2022),
    ('Tulsa', 'AAC', 2022),
    ('UCF', 'AAC', 2022);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Charlotte', 'AAC', 2023),
    ('East Carolina', 'AAC', 2023),
    ('Florida Atlantic', 'AAC', 2023),
    ('Memphis', 'AAC', 2023),
    ('Navy', 'AAC', 2023),
    ('North Texas', 'AAC', 2023),
    ('Rice', 'AAC', 2023),
    ('SMU', 'AAC', 2023),
    ('South Florida', 'AAC', 2023),
    ('Temple', 'AAC', 2023),
    ('Tulane', 'AAC', 2023),
    ('Tulsa', 'AAC', 2023),
    ('UTSA', 'AAC', 2023);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Air Force', 'MWC', 2023),
    ('Boise State', 'MWC', 2023),
    ('Colorado State', 'MWC', 2023),
    ('Fresno State', 'MWC', 2023),
    ('Hawaii', 'MWC', 2023),
    ('Nevada', 'MWC', 2023),
    ('New Mexico', 'MWC', 2023),
    ('San Diego State', 'MWC', 2023),
    ('San Jose State', 'MWC', 2023),
    ('UNLV', 'MWC', 2023),
    ('Utah State', 'MWC', 2023),
    ('Wyoming', 'MWC', 2023);

	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Air Force', 'MWC', 2022),
    ('Boise State', 'MWC', 2022),
    ('Colorado State', 'MWC', 2022),
    ('Fresno State', 'MWC', 2022),
    ('Hawaii', 'MWC', 2022),
    ('Nevada', 'MWC', 2022),
    ('New Mexico', 'MWC', 2022),
    ('San Diego State', 'MWC', 2022),
    ('San Jose State', 'MWC', 2022),
    ('UNLV', 'MWC', 2022),
    ('Utah State', 'MWC', 2022),
    ('Wyoming', 'MWC', 2022);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Akron', 'MAC', 2022),
    ('Ball State', 'MAC', 2022),
    ('Bowling Green', 'MAC', 2022),
    ('Buffalo', 'MAC', 2022),
    ('Central Michigan', 'MAC', 2022),
    ('Eastern Michigan', 'MAC', 2022),
    ('Kent State', 'MAC', 2022),
    ('Miami (OH)', 'MAC', 2022),
    ('Northern Illinois', 'MAC', 2022),
    ('Ohio', 'MAC', 2022),
    ('Toledo', 'MAC', 2022),
    ('Western Michigan', 'MAC', 2022);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Akron', 'MAC', 2023),
    ('Ball State', 'MAC', 2023),
    ('Bowling Green', 'MAC', 2023),
    ('Buffalo', 'MAC', 2023),
    ('Central Michigan', 'MAC', 2023),
    ('Eastern Michigan', 'MAC', 2023),
    ('Kent State', 'MAC', 2023),
    ('Miami (OH)', 'MAC', 2023),
    ('Northern Illinois', 'MAC', 2023),
    ('Ohio', 'MAC', 2023),
    ('Toledo', 'MAC', 2023),
    ('Western Michigan', 'MAC', 2023);



	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Florida International', 'C-USA', 2023),
    ('Jacksonville State', 'C-USA', 2023),
    ('Liberty', 'C-USA', 2023),
    ('Louisiana Tech', 'C-USA', 2023),
    ('Middle Tennessee', 'C-USA', 2023),
    ('New Mexico State', 'C-USA', 2023),
    ('Sam Houston', 'C-USA', 2023),
    ('UTEP', 'C-USA', 2023),
    ('Western Kentucky', 'C-USA', 2023);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Charlotte', 'C-USA', 2022),
    ('Florida Atlantic', 'C-USA', 2022),
    ('Florida International', 'C-USA', 2022),
    ('Louisiana Tech', 'C-USA', 2022),
    ('Marshall', 'C-USA', 2022),
    ('Middle Tennessee', 'C-USA', 2022),
    ('North Texas', 'C-USA', 2022),
    ('Old Dominion', 'C-USA', 2022),
    ('Rice', 'C-USA', 2022),
    ('Southern Miss', 'C-USA', 2022),
    ('UAB', 'C-USA', 2022),
    ('UTEP', 'C-USA', 2022),
    ('UTSA', 'C-USA', 2022),
    ('Western Kentucky', 'C-USA', 2022);


	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Army', 'Independent', 2022),
    ('BYU', 'Independent', 2022),
    ('Liberty', 'Independent', 2022),
    ('New Mexico State', 'Independent', 2022),
    ('Notre Dame', 'Independent', 2022),
    ('UConn', 'Independent', 2022),
    ('UMass', 'Independent', 2022);

	INSERT INTO Team_Conference_History (Team_Name, Conference, Season)
VALUES
    ('Army', 'Independent', 2023),
    ('Notre Dame', 'Independent', 2023),
    ('UConn', 'Independent', 2023),
    ('UMass', 'Independent', 2023);



	USE CollegeFootballAnalysis;


CREATE TABLE Combined_CFB_Season (
    Date DATE,
    Game VARCHAR(255),
    Conference VARCHAR(255),
    Conference_Season VARCHAR(255),
    Network VARCHAR(50),
    Time VARCHAR(20),
    Viewership FLOAT
);


INSERT INTO Combined_CFB_Season (Date, Game, Conference, Conference_Season, Network, Time, Viewership)
SELECT Date, Game, Conference, Conference_Season, Network, Time, Viewership
FROM [2022_CFB_Season];

INSERT INTO Combined_CFB_Season (Date, Game, Conference, Conference_Season, Network, Time, Viewership)
SELECT Date, Game, Conference, Conference_Season, Network, Time, Viewership
FROM [2023_CFB_Season];

INSERT INTO Combined_CFB_Season (Date, Game, Conference, Conference_Season, Network, Time, Viewership)
SELECT Date, Game, Conference, Conference_Season, Network, Time, Viewership
FROM [2024_CFB_Season];


ALTER TABLE [2022_CFB_Season] ADD Conference_Season VARCHAR(255);
ALTER TABLE [2023_CFB_Season] ADD Conference_Season VARCHAR(255);
ALTER TABLE [2024_CFB_Season] ADD Conference_Season VARCHAR(255);

UPDATE [2022_CFB_Season]
SET Conference_Season = Conference + '_' + CAST(YEAR(Date) AS VARCHAR);

UPDATE [2023_CFB_Season]
SET Conference_Season = Conference + '_' + CAST(YEAR(Date) AS VARCHAR);

UPDATE [2024_CFB_Season]
SET Conference_Season = Conference + '_' + CAST(YEAR(Date) AS VARCHAR);


SELECT * FROM Combined_CFB_Season;


USE CollegeFootballAnalysis;

-- Retrieve all data for the 2022 season
SELECT *
FROM [2024_CFB_Season];


SELECT DISTINCT SplitConferences.Conference
FROM (
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2022_CFB_Season]
    UNION ALL
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2023_CFB_Season]
    UNION ALL
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2024_CFB_Season]
) AS SeasonData
CROSS APPLY (
    SELECT DISTINCT T.N.value('.', 'VARCHAR(MAX)') AS Conference
    FROM SeasonData.ConferenceXML.nodes('x') T(N)
) AS SplitConferences
ORDER BY SplitConferences.Conference;



-- Retrieve unique conferences from all season tables
SELECT DISTINCT SplitConferences.Conference
FROM (
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2022_CFB_Season]
    UNION ALL
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2023_CFB_Season]
    UNION ALL
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2024_CFB_Season]
) AS SeasonData
CROSS APPLY (
    SELECT DISTINCT T.N.value('.', 'VARCHAR(MAX)') AS Conference
    FROM SeasonData.ConferenceXML.nodes('x') T(N)
) AS SplitConferences
ORDER BY Conference;


-- Create a table for valid conference names
CREATE TABLE ValidConferences (
    Conference VARCHAR(MAX)
);

-- Insert valid conference names
INSERT INTO ValidConferences (Conference)
VALUES 
    ('AAC'),
    ('ACC'),
    ('B10'),
    ('B12'),
    ('C-USA'),
    ('Independent'),
    ('MAC'),
    ('MWC'),
    ('P12'),
    ('SEC'),
    ('SBC');


	-- Retrieve unique conferences, filtering out invalid ones
SELECT DISTINCT SplitConferences.Conference
FROM (
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2022_CFB_Season]
    UNION ALL
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2023_CFB_Season]
    UNION ALL
    SELECT CAST('<x>' + REPLACE(Conference, ',', '</x><x>') + '</x>' AS XML) AS ConferenceXML
    FROM [2024_CFB_Season]
) AS SeasonData
CROSS APPLY (
    SELECT DISTINCT T.N.value('.', 'VARCHAR(MAX)') AS Conference
    FROM SeasonData.ConferenceXML.nodes('x') T(N)
) AS SplitConferences
WHERE SplitConferences.Conference IN (SELECT Conference FROM ValidConferences)
ORDER BY SplitConferences.Conference;



USE CollegeFootballAnalysis;


SELECT *
FROM [Combined_CFB_Season];

-- Delete Conference_Season column from 2022_CFB_Season table
ALTER TABLE [2022_CFB_Season]
DROP COLUMN Conference_Season;

-- Delete Conference_Season column from 2023_CFB_Season table
ALTER TABLE [2023_CFB_Season]
DROP COLUMN Conference_Season;

-- Delete Conference_Season column from 2024_CFB_Season table
ALTER TABLE [2024_CFB_Season]
DROP COLUMN Conference_Season;

-- Delete Conference_Season column from Combined_CFB_Season table
ALTER TABLE [Combined_CFB_Season]
DROP COLUMN Conference_Season;



SELECT *
FROM [2022_CFB_Season];
SELECT * 
FROM [2022_CFB_Season];

UPDATE [dbo].[2022_CFB_Season]
SET Network = 'ABC'
WHERE Network = 'ABC & ESPN';

UPDATE [dbo].[2023_CFB_Season]
SET Network = 'ABC'
WHERE Network = 'ABC & ESPN';

UPDATE [dbo].[2024_CFB_Season]
SET Network = 'ABC'
WHERE Network = 'ABC & ESPN';


SELECT *
FROM [dbo].[2024_CFB_Season]
WHERE Network = 'ABC & ESPN';

SELECT *
FROM [dbo].[2022_CFB_Season]
WHERE LTRIM(RTRIM(Network)) LIKE '%ABC & ESPN%';

SELECT *
FROM [dbo].[2023_CFB_Season]
WHERE LTRIM(RTRIM(Network)) LIKE '%ABC & ESPN%';

SELECT *
FROM [dbo].[2024_CFB_Season]
WHERE LTRIM(RTRIM(Network)) LIKE '%ABC & ESPN%';


SELECT *
FROM [dbo].[2023_CFB_Season]
WHERE LOWER(Network) = 'abc & espn';

SELECT *
FROM [dbo].[2024_CFB_Season]
WHERE LOWER(Network) = 'abc & espn';


UPDATE [dbo].[2022_CFB_Season]
SET Network = 'ABC'
WHERE LTRIM(RTRIM(Network)) LIKE '%ABC & ESPN%';


UPDATE [dbo].[2023_CFB_Season]
SET Network = 'ABC'
WHERE LTRIM(RTRIM(Network)) LIKE '%ABC & ESPN%';



SELECT DISTINCT LTRIM(RTRIM(Network)) AS TrimmedNetwork
FROM [dbo].[2022_CFB_Season]
ORDER BY TrimmedNetwork;


SELECT DISTINCT LTRIM(RTRIM(Network)) AS TrimmedNetwork
FROM [dbo].[2023_CFB_Season]
ORDER BY TrimmedNetwork;

SELECT DISTINCT LTRIM(RTRIM(Network)) AS TrimmedNetwork
FROM [dbo].[2024_CFB_Season]
ORDER BY TrimmedNetwork;


-- Fix "ESPN2" -> "ESPN"
UPDATE [dbo].[2022_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN2';

-- Fix "ESPN,ESPN2" -> "ESPN"
UPDATE [dbo].[2022_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN,ESPN2';


-- Fix "ESPN2" -> "ESPN"
UPDATE [dbo].[2023_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN2';

-- Fix "ESPN,ESPN2" -> "ESPN"
UPDATE [dbo].[2023_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN,ESPN2';

-- Fix "ESPN2" -> "ESPN"
UPDATE [dbo].[2024_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN2';

-- Fix "ESPN,ESPN2" -> "ESPN"
UPDATE [dbo].[2024_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN,ESPN2';


SELECT Network, LTRIM(RTRIM(Network)) AS TrimmedNetwork, 
       LEN(Network) AS Length
FROM [dbo].[2023_CFB_Season]
WHERE Network LIKE '%ESPN%';

UPDATE [dbo].[2023_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) LIKE '%ESPN2%';

UPDATE [dbo].[2023_CFB_Season]
SET Network = 'ESPN'
WHERE LOWER(LTRIM(RTRIM(Network))) = 'espn2';


SELECT DISTINCT Network
FROM [dbo].[2023_CFB_Season]
ORDER BY Network;

SELECT DISTINCT Network, LTRIM(RTRIM(Network)) AS TrimmedNetwork
FROM [dbo].[2022_CFB_Season]
ORDER BY TrimmedNetwork;


UPDATE [dbo].[Combined_CFB_Season]
SET Time = REPLACE(Time, 'pm', 'p')
WHERE Time LIKE '%pm';


-- Update 'ABC & ESPN2' to 'ABC'
UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ABC'
WHERE LTRIM(RTRIM(Network)) = 'ABC & ESPN2';

-- Update 'ESPN2' to 'ESPN'
UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN2';

-- Update 'ESPN,ESPN2' to 'ESPN'
UPDATE [dbo].[Combined_CFB_Season]
SET Network = 'ESPN'
WHERE LTRIM(RTRIM(Network)) = 'ESPN,ESPN2';


-- Check distinct values in the Conference column
SELECT DISTINCT Conference FROM [dbo].[Combined_CFB_Season];

-- Check distinct values in the Time column
SELECT DISTINCT Time FROM [dbo].[Combined_CFB_Season];

-- Check distinct values in the Network column
SELECT DISTINCT Network FROM [dbo].[Combined_CFB_Season];

