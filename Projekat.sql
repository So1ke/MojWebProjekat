create table Korisnik(
ID int not null primary key identity(1,1),
Ime nvarchar(100),
Username nvarchar(100),
Telefon nvarchar(100),
)


create table Accounti(
ID int not null primary key identity(1,1),
NazivNaloga nvarchar(100),
BE int,
Region nvarchar(100),
)

INSERT INTO Accounti(NazivNaloga,BE,Region) VALUES ('jonybiz',50000,'NA')
INSERT INTO Accounti(NazivNaloga,BE,Region) VALUES ('jonybiz',55000,'EUNE')
INSERT INTO Accounti(NazivNaloga,BE,Region) VALUES ('jonybiz',100000,'EUW')
INSERT INTO Accounti(NazivNaloga,BE,Region) VALUES ('jonybiz',70000,'KOR')
INSERT INTO Accounti(NazivNaloga,BE,Region) VALUES ('jonybiz',20000,'TUR')
INSERT INTO Accounti(NazivNaloga,BE,Region) VALUES ('jonybiz',47000,'OCE')

create table Kupovina(
IDKupovine int not null primary key identity(1,1),
IDKorisnika int foreign key references Korisnik(ID),
IDAccounta int foreign key references Accounti(ID),
)

