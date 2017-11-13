insert into czekoladki values('W98','Biały kieł','biała','laskowe','marcepan',
	'Rozpływająca się w rękach i kieszeniach',0.45,20);

insert into klienci values(90,'Matusiak Edward','Kropiwnickiego 6/3','Leningrad','31-471','031 423 45 38');
insert into klienci values(91,'Matusiak Alina','Kropiwnickiego 6/3','Leningrad','31-471','031 423 45 38');
insert into klienci values(92,'Kimono Franek','Karateków 8','Mistrz','30-029','501 498 324');

insert into klienci values(
93, 'Matusiak Iza',
(select ulica from klienci where idklienta = 90),
(select miejscowosc from klienci where idklienta = 90),
(select kod from klienci where idklienta = 90),
(select telefon from klienci where idklienta = 90));
