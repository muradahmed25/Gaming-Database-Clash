use clashwars;
create table clan (
ClanID int primary key,
PlayerName varchar(255),
ClanTrophies int(10));
create table users (
ID int primary key auto_increment,
userName varchar(64) not null,
email varchar(255) not null,
ClanID int,
clanName varchar(255),
foreign key (ClanID) references clan(ClanID) )
;
create table membership (
UserID int,
goldPass boolean,
dateJoin date,
foreign key (UserID) references users (ID) );

##################################################
insert into clan (clanID, PlayerName, ClanTrophies)
values(1,'Murad',1000),
(2,'Ahmed', 1001),
(3,'Ahmed M', 1001),
(4,'Ahmed A', 1003),
(5,'Ahmed D', 970)
;
insert into users (userName,email, ClanID, clanName)
values ('Muradz14','murad@gmx.us',1,'Stoners'),
('Muradz15','murad@gmx.us',2,'Covid-19'),
('Muradz16','murad@gmx.us',3,'Spartan'),
('Muradz17','murad@gmx.us',4,'Draco Nidum'),
('Muradz18','murad@gmx.us',5,'Intrnationale')
insert into membership (UserID, goldPass,dateJoin)
values (6,True, 01/01/2021),
(7,False, 01/01/2021),
(8, True,  01/01/2021),
(9, True,  01/01/2021),
(10, True,  01/01/2021);
