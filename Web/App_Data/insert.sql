
insert into automobil(godiste,registarska_oznaka,br_vozila,tip_automobila)
values(2003,'NS021-GG',3,0),
(2002,'NS553-AM',3,1),
(2003,'NS425-NP',3,0),
(2001,'NS123-FF',3,0),
(2010,'NS356-OK',3,1);

  insert into adresa(ulica,broj,mesto,pozivni_broj)
  values('Železnička',33,'Novi Sad',21000),
  ('Radnička',3,'Novi Sad',21000),
  ('Hercegovačka',13,'Novi Sad',21000),
  ('Pavla Papa',43,'Novi Sad',21000),
  ('Hadži Melentijeva',55,'Novi Sad',21000);

insert into lokacija(x_koordinata,y_koordinata,id_adresa)
values(256.22,145.31,1),
(254.20,145.48,2),
(253.24,145.55,3),
(252.23,145.34,4),
(251.22,145.88,5);

  insert into vozac(korisnicko_ime,lozinka,ime,prezime,pol,jmbg,kontakt_telefon,email,trenutna_lokacija)
  values('magia','skrskr','Jala','Brat',0,9658745321548,'06644898799','ocajnoPevam@gmail.com',1),
  ('opasno','pompom','Bubo','Skoreli',0,1235487957846,'0604548449','prasetina@gmail.com',2),
  ('ceca','arkan','Svetlana','Ražnjatović',1,1352459874516,'0629564484','nanogica@gmail.com',3),
  ('crno','zlatno','Seka','Aleksić',1,2256987851245,'06359415484','tkdtkdtkd@gmail.com',4),
  ('crnogorac','petrol','Knez','Crnogorski',0,3154856454879,'06411454848','dalsiikada@gmail.com',5);

    insert into komentar(opis,datum_objave,id_vozac,ocena)
  values('sve ok',getdate(),1,5),
  ('kul',getdate(),2,4),
  ('nije lose',getdate(),3,3),
  ('pa onako',getdate(),4,2),
  ('bilo je i bolje',getdate(),5,1);

  insert into voznja(datum_vreme_porudzbine,polazna_lokacija_id,zeljeni_tip_automobila,odredisna_lokacija_id,id_dispecer,id_vozac,iznos,status_voznje,id_komentar)
  values(CURRENT_TIMESTAMP,1,0,5,1,1,200,0,1),
  (CURRENT_TIMESTAMP,2,1,4,2,5,500,1,2),
  (CURRENT_TIMESTAMP,3,0,3,4,2,700,2,3),
  (CURRENT_TIMESTAMP,4,1,2,5,4,350,4,4),
  (CURRENT_TIMESTAMP,5,1,1,1,3,155,0,5);

