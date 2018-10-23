if object_id('voznja','U') is not null
drop table voznja;
if object_id('komentar','U') is not null
drop table komentar;
if object_id('vozac','U') is not null
drop table vozac;
if object_id('lokacija','U') is not null
drop table lokacija;
if object_id('korisnik','U') is not null
drop table korisnik;
if object_id('automobil','U') is not null
drop table automobil;
if object_id('adresa','U') is not null
drop table adresa;


create table automobil(
  id_automobil int IDENTITY(1,1),
  godiste numeric(15),
  registarska_oznaka varchar(100),
  br_vozila numeric(25),
  tip_automobila integer
  )
  alter table automobil add constraint PK_automobil primary key(id_automobil);

create table adresa(
  id_adresa int IDENTITY(1,1),
  ulica varchar(250),
  broj varchar(50),
  mesto varchar(150),
  pozivni_broj numeric(30)
  )
alter table adresa add constraint PK_adresa primary key(id_adresa);

  create table korisnik(
  id_korisnik int IDENTITY(1,1),
  korisnicko_ime varchar(200),
  lozinka varchar(200),
  ime varchar(200),
  prezime varchar(200),
  pol integer,
  jmbg numeric(13),
  kontakt_telefon varchar(50),
  email varchar(150),
  uloga varchar(50)
  )
  alter table korisnik add constraint PK_korisnik primary key(id_korisnik);

create table lokacija(
  id_lokacija int IDENTITY(1,1),
  x_koordinata decimal,
  y_koordinata decimal,
  id_adresa integer
  )
  alter table lokacija add constraint PK_lokacija primary key(id_lokacija);
  alter table lokacija add constraint FK_lokacija_adresa foreign key(id_adresa) references adresa(id_adresa);

create table vozac(
  id_vozac int IDENTITY(1,1),
  korisnicko_ime varchar(200),
  lozinka varchar(200),
  ime varchar(200),
  prezime varchar(200),
  pol integer,
  jmbg numeric(13),
  kontakt_telefon varchar(50),
  email varchar(150),
  trenutna_lokacija integer
  )
  alter table vozac add constraint PK_vozac primary key(id_vozac);
  alter table vozac add constraint FK_vozac_lokacija foreign key(trenutna_lokacija) references lokacija(id_lokacija);

 create table komentar(
  id_komentar int identity(1,1),
  opis varchar(200),
  datum_objave date,
  id_korisnik  integer,
  ocena numeric(10)
  )
  alter table komentar add constraint PK_komentar primary key(id_komentar);
  alter table komentar add constraint FK_komentar_korisnik foreign key(id_korisnik) references korisnik(id_korisnik);
  alter table komentar add constraint Ocena_provera check (ocena in (0,1,2,3,4,5));

create table voznja(
  id_voznja int IDENTITY(1,1) not null,
  datum_vreme_porudzbine datetime,
  polazna_lokacija_id integer,
  zeljeni_tip_automobila integer,
  id_korisnik integer,
  odredisna_lokacija_id integer,
  id_dispecer integer,
  id_vozac integer,
  iznos numeric(20),
  status_voznje integer,
  id_komentar integer
  )
  alter table voznja add constraint PK_voznja primary key(id_voznja);
  alter table voznja add constraint FK_voznja_polazna_lokacija foreign key(polazna_lokacija_id) references lokacija(id_lokacija);
  alter table voznja add constraint FK_voznja_odredisna_lokacija foreign key(odredisna_lokacija_id) references lokacija(id_lokacija);
  alter table voznja add constraint FK_voznja_vozac foreign key(id_vozac) references vozac(id_vozac);
  alter table voznja add constraint FK_voznja_komentar foreign key(id_komentar) references komentar(id_komentar);
  alter table voznja add constraint FK_voznja_korisnik foreign key(id_korisnik) references korisnik(id_korisnik);

