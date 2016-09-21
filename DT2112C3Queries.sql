select user from dual;
Alter Session set Current_schema = DT2112C3;

Select CLUB_NAME from CLUBS WHERE HOME_GROUND LIKE 'Loreto Grange';
Select CLUB_NAME from CLUBS WHERE Manager LIKE 'J%';



 --Projection 
 -- This will display any player whos Date of Birth is greater than 20th of march 1997
 Select Player_id, Playername from player where DOB > '20-march-1997';
 
 --Selection(Restriction)
 --This will display only the first 5 playernames from the player table
SELECT playername FROM player where Limit like 5;

--Sorting 
-- This will sort the players names based on what team they are in
SELECT playername FROM player ORDER BY teamname;

--Testing for NULL
--This will display a teamname if the manager_address is null
SELECT teamname, Manager_ADDRESS FROM team
WHERE Manager_ADDRESS IS NULL;

--Aggregation	with ‘GROUP BY’
--This will count every player who starts with a C in their name then display them grouped depending on their team
SELECT COUNT(playername), teamname FROM player
WHERE playername LIKE 'C%'
GROUP BY TeamName;

--This will do the same as the above but it will only show the team which has more than 1 'C' at the start of their players name
SELECT COUNT(playername), teamname FROM player
WHERE playername LIKE 'C%'
GROUP BY TeamName having count(*) > 1;

--Union
--Displays the matchs from both '11-FEB-16 09:50' & '25-JUN-16 12:40'
select '11-FEB-16 09:50' from matches
Union
select '25-JUN-16 12:40' from matches;

--Intersect
--Players who's Guardian's nmae is 'Bob Marley' or 'Steven art' are displayed
Select playername from player
where GuardianName = 'Bob Marley'
Intersect 
Select playername from player
where GuardianName = 'Steven art';

--Minus
--Displays all the players from player except the ones that have a C at the start of their name
select playername from player
minus 
select playername from player
where playername like 'C%';

--Join on
SELECT clubs.manager, team.TeamName FROM team
inner JOIN clubs
ON (team.manager=clubs.manager);

--Join using
--Inner joins Team and players using the teamname 
SELECT teamname, player.playername FROM team
inner JOIN player using (teamname);

--Join using where
--joins Team and players using the teamname  and only displays players who's name starts with a letter thats less than 'J'
SELECT teamname, player.playername FROM team
inner JOIN player using (teamname) where player.playername < 'J';

--Outer join
--Outer joins Team and players using the teamname
SELECT teamname, player.playername
FROM team
left OUTER JOIN player
using (teamname);

--Sub Query
SELECT Playername FROM player WHERE NOT EXISTS
(SELECT * FROM team  WHERE NOT EXISTS
(SELECT * FROM clubs  WHERE teamname = teamname AND team.club = clubs.club_name));

--Displays all the matchs that 'Bray Boys' play in
Select * from matches Where 'Bray Boys' in (matches.home_team, matches.away_team);
select teamname from player where teamname in (matches.away_team);
