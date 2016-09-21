drop table yassr.team;
drop table yassr.player;

Create table Team(
Teamname varchar2(40) primary key not null,
Club     varchar2(40)Not null,
Coach    varchar2(30)Not null,
Agegroup number(2)Not null);


Create table player(
Playername varchar2(30)Primary key Not null,
DOB        date Not null,
ContactNum number(10)Not null,
GuardianName varchar(30)Not null, 
Teamname varchar2(40) references team(teamname) );

INSERT INTO team VALUES('Tallaght Youth', 'Tallaght FC', 'Yassr Shaar', 16);
INSERT INTO team VALUES('Bray Boys', 'Bray United', 'Ciaran Linsy', 16);
INSERT INTO team VALUES('Arklow Rowers', 'Standers FC', 'Dan Stander', 17);
INSERT INTO team VALUES('Droghda Beards', 'Bearded Fc', 'Arnold Hairy', 21);

--Team Tallaght Youth
insert into player values('Yassr','05-Jun-2000', 0872591552, 'Bob Marley', 'Tallaght Youth');
insert into player values('Adam','07-MAY-2000', 0872591662, 'Steven art', 'Tallaght Youth');
insert into player values('Carlus','21-Jun-2000', 0872591333, 'carl james', 'Tallaght Youth');
insert into player values('Jacub','12-july-2000', 0872341552, 'mary stevens', 'Tallaght Youth');
insert into player values('Darah','25-may-2000', 0872666552, 'chris white', 'Tallaght Youth');
insert into player values('Bobby','06-Jun-2000', 0872123552, 'tom brown', 'Tallaght Youth');

--Team Bray Boys
insert into player values('David','06-Aug-2000', 0871111552, 'hephsky flatcapper', 'Bray Boys');
insert into player values('Sam','07-MAY-2000', 0872543262, 'steve stephens', 'Bray Boys');
insert into player values('Petter','21-Jun-2000', 0872512333, 'Bob ohern', 'Bray Boys');
insert into player values('Danial','02-july-2000', 0876781552, 'adam stanler', 'Bray Boys');
insert into player values('Carl','26-OCt-2000', 0872665552, 'michael jackson', 'Bray Boys');
insert into player values('Steven','06-Jun-2000', 0872156552, 'peter parkson', 'Bray Boys');

--Team Arklow Rowers
insert into player values('Gavin','05-oct-1998', 0872591552, 'james stripher', 'Tallaght Youth');
insert into player values('Dan','08-MAY-1998', 0872123162, 'Bae Marley', 'Tallaght Youth');
insert into player values('Connor','20-Jun-1998', 0862591333, 'oision karlus', 'Tallaght Youth');
insert into player values('Conor','12-aug-1998', 0892341552, 'Bob Marley', 'Tallaght Youth');
insert into player values('Konner','01-may-1998', 0882666552, 'Bob Marley', 'Tallaght Youth');
insert into player values('Conner','06-Jun-1998', 0872123552, 'Bob Marley', 'Tallaght Youth');

--Team Droghda Beards
insert into player values('Yassr','05-Jun-1998', 0872591552, 'Bob Marley', 'Tallaght Youth');
insert into player values('Adam','07-MAY-1998', 0872591662, 'Bob Marley', 'Tallaght Youth');
insert into player values('Carlus','21-Jun-1998', 0872591333, 'Bob Marley', 'Tallaght Youth');
insert into player values('Jacub','12-july-1998', 0872341552, 'Bob Marley', 'Tallaght Youth');
insert into player values('Darah','25-may-1998', 0872666552, 'Bob Marley', 'Tallaght Youth');
insert into player values('Bobby','06-Jun-1998', 0872123552, 'Bob Marley', 'Tallaght Youth');
--describe yassr.team;
SELECT * FROM player;

