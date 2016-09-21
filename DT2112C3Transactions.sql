--Transactions

Alter Session set Current_schema = DT2112C3;

--Created a new Club and team that will be recruiting players later
INSERT INTO CLUBS VALUES('The Cool Ice', '03 Tiptown Hills', 'Jasmin Carlon', 'Spicey Flud', 'On top of the hills');
INSERT INTO team VALUES('Icey Boys', 21, 'The Cool Ice', 'Karl Spariton',053334343, '12 Tiptown rd');
INSERT INTO team VALUES('The Spicy Boys', 16, 'The Cool Ice', 'Steve Jones',053322343, '12 upperhill rd');


--Adam is moving to Bray Boys to replace Sam who is leaving the team
update player set teamname = 'Bray Boys' where player_id = 2; 
delete player where Playername = 'Sam' AND Teamname = 'Bray Boys';

--Carlus got a new phone number so the number had to be updated
update player set ContactNum = '0872691440' where player_id = 3;

commit;
