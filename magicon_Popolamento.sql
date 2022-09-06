--POPOLAMENTO DATABASE

--CONTRATTO
INSERT INTO Contratto(Codice_Contratto,Data_Contratto,Spesa_Contratto) VALUES('990556887145015',TO_DATE('13-02-2021','DD-MM-YYYY'),1300.76);
INSERT INTO Contratto(Codice_Contratto,Data_Contratto,Spesa_Contratto) VALUES('990556887145123',TO_DATE('18-04-2021','DD-MM-YYYY'),2140.21);
INSERT INTO Contratto(Codice_Contratto,Data_Contratto,Spesa_Contratto) VALUES('567493450916472',TO_DATE('03-12-2020','DD-MM-YYYY'),3058.90);


--SOCIETA'
INSERT INTO Società(Partita_Iva_Società,Nome_Società,Recapito_Telefonico_Società,COD_Contratto) VALUES ('67834529091','Pulizie S.R.L.','0256713801','990556887145015');
INSERT INTO Società(Partita_Iva_Società,Nome_Società,Recapito_Telefonico_Società,COD_Contratto) VALUES ('34678901236', 'Allest. Stand S.R.L.','0817764025','990556887145123');
INSERT INTO Società(Partita_Iva_Società,Nome_Società,Recapito_Telefonico_Società,COD_Contratto) VALUES ('46710945739','Security S.R.L.','0613476590','567493450916472');

--IMPRESA PULIZIE
INSERT INTO Impresa_Pulizie(Partita_Iva_Società_IP) VALUES ('67834529091');

--ALLESTIMENTO STAND
INSERT INTO Allestimento_Stand(Partita_Iva_Società_AS) VALUES ('34678901236');

--SECURITY
INSERT INTO Security (Partita_Iva_Società_SEC) VALUES ('46710945739');

--LAVORATORE
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('1','GGRMRC67A67P0651','Marco','Gaggaroni');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('2','PRTMRA92A13Q1352','Maria','Prato');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('3','PLNANT67A67P0653','Antonino','Platano');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('4','MZNLNZ67A67P0654','Lorenzo','Mazani');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('5','PPLELD67A67P0655','ELDA','Puopolare');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('6','SRCANP67A67P0656','Annapia','Saracino');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('7','CNTANA67A67P0657','Anna','Cantone');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('8','SCNMRO67A67P0658','Mauro','Scognamiglio');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('9','EPTGNR67A67P0659','Gennaro','Esposito');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('10','NVNANR67A67P0610','Andrea','Nevanati');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('11','MDNENR67A67P0611','Enrico','Madonnini');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('12','PRLGLA67A67P0612','Giulia','Procolo');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('13','SNTPLO67A67P0613','Paolo','Santi');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('14','MZZLCA67A67P0614','Luca','Mazzarri');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('15','PLBSRA67A67P0615','Sara','Palombi');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('16','CRSMRTJDH2249316','Martino','Cerraso');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('17','SCPMROKEKL94FJ17','Mario','Scarrapuoti');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('18','SCFFBOUFHUWI4818','Fabio','Scafandro');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('19','GLDRBTFKJDDK4819','Roberta','Gilardini');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('20','MRNBNDJIJCR48D20','Benedetto','Mardoni');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('21','UTISRAJCJ9D39D21','Sara','Unti');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('22','CBNAMRH8D03HD322','AnnaMaria','Carboni');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('23','RSSMRO0JD0JD8D23','Mario','Rossi');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('24','EPTGNR67A67P0624','Genny','Lazzaro');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('25','BNVPTKJD9D84H825','Patrick','Benevolo');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('26','DCRETHJJ8D48DH26','Enrichetta','De Cesare');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('27','FTASSNH2654HD427','Susanna','Fortunata');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('28','PTOGLAJS3004UD28','Giulia','Proto');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('29','IRTMDL38347DYD29','Maddalena','Imperato');
INSERT INTO Lavoratore(Numero_Badge,C_F_Lavoratore,Nome_Lavoratore,Cognome_Lavoratore) VALUES('30','CZLGPP39DU93U030','Giuseppe','Cozzolino');

--DIPENDENTE SOCIETA'
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('1',TO_DATE('21:00:00','HH24:MI:SS'),TO_DATE('23:00:00','HH24:MI:SS'),'67834529091');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('2',TO_DATE('21:00:00','HH24:MI:SS'),TO_DATE('23:00:00','HH24:MI:SS'),'67834529091');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('3',TO_DATE('21:00:00','HH24:MI:SS'),TO_DATE('23:00:00','HH24:MI:SS'),'67834529091');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('11',TO_DATE('21:00:00','HH24:MI:SS'),TO_DATE('23:00:00','HH24:MI:SS'),'67834529091');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('12',TO_DATE('21:00:00','HH24:MI:SS'),TO_DATE('23:00:00','HH24:MI:SS'),'67834529091');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('13',TO_DATE('21:00:00','HH24:MI:SS'),TO_DATE('23:00:00','HH24:MI:SS'),'67834529091');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('4',TO_DATE('07:00:00','HH24:MI:SS'),TO_DATE('09:30:00','HH24:MI:SS'),'34678901236');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('5',TO_DATE('07:00:00','HH24:MI:SS'),TO_DATE('09:30:00','HH24:MI:SS'),'34678901236');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('6',TO_DATE('07:00:00','HH24:MI:SS'),TO_DATE('09:30:00','HH24:MI:SS'),'34678901236');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('14',TO_DATE('07:00:00','HH24:MI:SS'),TO_DATE('09:30:00','HH24:MI:SS'),'34678901236');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('15',TO_DATE('07:00:00','HH24:MI:SS'),TO_DATE('09:30:00','HH24:MI:SS'),'34678901236');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('7',TO_DATE('06:00:00','HH24:MI:SS'),TO_DATE('19:30:00','HH24:MI:SS'),'46710945739');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('8',TO_DATE('06:00:00','HH24:MI:SS'),TO_DATE('19:30:00','HH24:MI:SS'),'46710945739');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('9',TO_DATE('06:00:00','HH24:MI:SS'),TO_DATE('19:30:00','HH24:MI:SS'),'46710945739');
INSERT INTO Dipendente_Società(Numero_Badge_Soc,Ora_Inizio_Turno,Ora_Fine_Turno,PART_IVA_Società) VALUES ('10',TO_DATE('06:00:00','HH24:MI:SS'),TO_DATE('19:30:00','HH24:MI:SS'),'46710945739');

--ESPOSITORE
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('1C4A','SRCMRO67A67P0656','Mauro','Saraceno');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('7B6R','CSPLCA67A67P0656','Lucia','Crispi');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('L90M','ELAANTUFWI3838D8','Antonella','Elia');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('P6T9','PTBGRGHUDH389D39','George','Portobello');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('HW5P','CSCPLOHUHD3H8391','Paolo','Criscuolo');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('45H2','ZMBMRCKE03D03KD0','Marco','Zimbelli');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('9U3E','MZZVCNDHUHDU94D3','Vincenzo','Mozzi');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('FJF3','MRMCTAJ93JE0FGF4','Catena','Memoresi');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('P2EE','LRILLAJF0475HD83','Liliana','Lori');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('RO50','CLSCNL448DDJ49DJ','Cornelio','Calabresi');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('3E33','UNSNRACMMFIR933D','Nerea','Udinesi');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('LOO3','AGLALO94DU939DU3','Amalio','Angelo');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('L290','GDONLAKFJ03JD03P','Nicoletta','Giordano');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('430D','MRHPRDJF4FF4843F','Paride','Marchesi');
INSERT INTO Espositore(ID_Espositore,C_F_Espositore,Nome_Espositore,Cognome_Espositore) VALUES('530E','ESPFBR834783348F','Fabrizio','Esposito');


--DIPENDENTE STAND
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('21','1C4A');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('22','7B6R');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('23','L90M');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('24','P6T9');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('25','HW5P');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('26','45H2');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('27','9U3E');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('28','FJF3');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('29','P2EE');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('30','RO50');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('20','3E33');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('19','LOO3');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('18','L290');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('17','430D');
INSERT INTO Dipendente_Stand(Numero_Badge_Stand,ID_EXPO) VALUES('16','530E');

--NOLEGGIO
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('01A',TO_DATE('03-07-2021','DD-MM-YYYY'),'1C4A',428.90,'Carta Credito');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('02A',TO_DATE('09-06-2021','DD-MM-YYYY'),'7B6R',712.65,'Contanti');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('03A',TO_DATE('23-06-2021','DD-MM-YYYY'),'L90M',1003.91,'Carta Credito');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('04A',TO_DATE('18-07-2021','DD-MM-YYYY'),'P6T9',1327.13,'Assegno');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('05A',TO_DATE('28-09-2021','DD-MM-YYYY'),'HW5P',602.37,'Bonifico');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('01B',TO_DATE('04-08-2021','DD-MM-YYYY'),'45H2',428.90,'Carta Credito');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('02B',TO_DATE('19-10-2021','DD-MM-YYYY'),'9U3E',712.65,'Contanti');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('03B',TO_DATE('20-03-2021','DD-MM-YYYY'),'FJF3',1003.91,'Carta Credito');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('04B',TO_DATE('28-07-2021','DD-MM-YYYY'),'P2EE',1327.13,'Assegno');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('05B',TO_DATE('05-05-2021','DD-MM-YYYY'),'RO50',602.37,'Bonifico');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('01C',TO_DATE('07-08-2021','DD-MM-YYYY'),'3E33',428.90,'Carta Credito');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('02C',TO_DATE('22-01-2021','DD-MM-YYYY'),'LOO3',712.65,'Contanti');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('03C',TO_DATE('30-03-2021','DD-MM-YYYY'),'L290',1003.91,'Carta Credito');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('04C',TO_DATE('16-09-2021','DD-MM-YYYY'),'430D',1327.13,'Assegno');
INSERT INTO Noleggio(Numero_Prenotazione_Noleggio,Data_Prenotazione_Noleggio,ID_EXP,Costo_Noleggio,Metodo_Pagamento) VALUES('05C',TO_DATE('01-02-2021','DD-MM-YYYY'),'530E',602.37,'Bonifico');

--AREA
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area1',310);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area2',787);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area3',152);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area4',902);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area5',190);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area6',1200);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area7',310);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area8',787);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area9',152);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area10',902);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area11',190);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area12',1200);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area13',310);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area14',787);
INSERT INTO Area(Nome_Area,Superficie_Area_Metriquadr) VALUES('Area15',152);


--PADIGLIONE
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD1','PAD1','Area1');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD2','PAD2','Area3');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD3','PAD3','Area6');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD4','PAD4','Area5');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD5','PAD5','Area4');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD6','PAD6','Area2');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD7','PAD7','Area1');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD8','PAD8','Area2');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD9','PAD9','Area5');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD10','PAD10','Area15');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD11','PAD11','Area9');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD12','PAD12','Area10');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD13','PAD13','Area4');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD14','PAD14','Area8');
INSERT INTO Padiglione(Codice_padiglione,Nome_Padiglione,AREA_PAD) VALUES('PD15','PAD15','Area7');


--NUMERO TELEFONO ESPOSITORE
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('1C4A','+396674461094');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('7B6R','+395791245090');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('L90M','+393381831977');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('P6T9','+396617890952');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('HW5P','+391274672671');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('45H2','+396674461094');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('9U3E','+395791245090');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('FJF3','+393381831977');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('P2EE','+396617890952');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('RO50','+391274672671');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('3E33','+396674461094');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('LOO3','+395791245090');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('L290','+393381831977');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('430D','+396617890952');
INSERT INTO Numero_Telefono_Espositore(ID_ESPOSIT,Numero_Telefono) VALUES('530E','+391274672671');

--STAND
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES ('STA1',90,'01A','PD1','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA2',77,'02A','PD2','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA3',54,'03A','PD1','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA4',110,'04A','PD12','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA5',49,'05A','PD9','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES ('STA6',30,'01B','PD1','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA7',37,'02B','PD2','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA8',154,'03B','PD1','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA9',110,'04B','PD12','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA10',82,'05B','PD9','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES ('STA11',102,'01C','PD1','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA12',78,'02C','PD2','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA13',59,'03C','PD1','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA14',120,'04C','PD12','SI');
INSERT INTO Stand(Codice_Stand,Superficie_Stand_Metriquadr,NUM_PREN_NOL,COD_PAD_STAND,Disponibilita) VALUES('STA15',39,'05C','PD9','SI');


--VISITATORE
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL1',TO_DATE('17-06-2000','DD-MM-YYYY'),18,'ND','Sora','kairi','SRAKRI124598FG4S');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL2',TO_DATE('14-05-2008','DD-MM-YYYY'),18,'ND','Riku','Paperino','RKUPPR567AP3GXP0');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL3',TO_DATE('03-01-1970','DD-MM-YYYY'),18,'ND','Pippo','Topolino','PPOTPLGTU89ML254');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL4',TO_DATE('21-04-2010','DD-MM-YYYY'),18,'ND','Roxas','Aqua','RXSAQANML09SG6Q5');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL5',TO_DATE('10-05-1983','DD-MM-YYYY'),18,'ND','Ventus','Terra','VNTTRRJ98HB6R5X0');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL6',TO_DATE('30-01-2015','DD-MM-YYYY'),18,'ND','Grillo','Ansem','GRLASM7CBAL1987C');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL7',TO_DATE('09-12-1967','DD-MM-YYYY'),18,'ND','Naminè','Lea','NMNLEACVBA456CBG');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL8',TO_DATE('12-05-1998','DD-MM-YYYY'),18,'ND','Xion','Eraqus','XONERSCPO76BC016');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL9',TO_DATE('26-08-2003','DD-MM-YYYY'),18,'ND','Dilan','Even','DLNEVN56XVAB1897');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL10',TO_DATE('14-02-1992','DD-MM-YYYY'),18,'ND','Aeleus','Ienzo','ALSINZ65BCBC765A');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL11',TO_DATE('08-03-1964','DD-MM-YYYY'),18,'ND','Ephemer','Skuld','EMRSKD76FG142FX6');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL12',TO_DATE('22-07-2005','DD-MM-YYYY'),18,'ND','Lauriam','Brain','LRMBRNCBNAL0987G');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL13',TO_DATE('28-04-2002','DD-MM-YYYY'),18,'ND','Strlitzia','Elrena','STRELR87HBNMPO01');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL14',TO_DATE('15-11-2001','DD-MM-YYYY'),18,'ND','Odin','Vor','ODNVORCV1567CB52');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL15',TO_DATE('10-07-1986','DD-MM-YYYY'),18,'ND','Bragi','Urd','BRGURDCV15BCNL02');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL16',TO_DATE('22-10-2010','DD-MM-YYYY'),18,'ND','Hermod','Baldr','HRDBDR76A123L0R6');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL17',TO_DATE('05-09-2007','DD-MM-YYYY'),18,'ND','Xemnas','Xigbar','XMNXGBX56A145C80');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL18',TO_DATE('17-06-2009','DD-MM-YYYY'),18,'ND','Xaldin','Vexen','XDNVXN46DG10987W');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL19',TO_DATE('14-01-2009','DD-MM-YYYY'),18,'ND','Lexaeus','Zexion','LXSZXN156BC235A0');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL20',TO_DATE('22-09-1980','DD-MM-YYYY'),18,'ND','Saix','Axel','SIXAXL356CB0917X');
INSERT INTO Visitatore(Codice_Biglietto_Visitatore,Data_Nascita_Visitatore,Prezzo_Biglietto,Riduzione_Prezzo_Biglietto,Nome_Visitatore,Cognome_Visitatore,C_F) VALUES('BIGL21',TO_DATE('24-01-2014','DD-MM-YYYY'),18,'ND','Demyx','Luxord','DMXLXDA0OP123XP0');


--INGRESSO MOSTRA
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL1',TO_DATE('27-04-2022 12:37','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area12');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL2',TO_DATE('27-04-2022 11:12','DD-MM-YYYY HH24:MI'),'VIA TAMARIZ','Area1');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL3',TO_DATE('27-04-2022 10:20','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area4');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL4',TO_DATE('27-04-2022 10:10','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area3');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL5',TO_DATE('27-04-2022 10:10','DD-MM-YYYY HH24:MI'),'VIA COPPERFIELD','Area8');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL6',TO_DATE('27-04-2022 14:39','DD-MM-YYYY HH24:MI'),'VIA TAMARIZ','Area9');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL7',TO_DATE('27-04-2022 12:20','DD-MM-YYYY HH24:MI'),'VIA DAORTIZ','Area13');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL8',TO_DATE('27-04-2022 10:10','DD-MM-YYYY HH24:MI'),'VIA DAORTIZ','Area15');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL9',TO_DATE('27-04-2022 10:00','DD-MM-YYYY HH24:MI'),'VIA TAMARIZ','Area2');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL10',TO_DATE('28-04-2022 10:00','DD-MM-YYYY HH24:MI'),'VIA COPPERFIELD','Area15');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL11',TO_DATE('28-04-2022 17:30','DD-MM-YYYY HH24:MI'),'VIA COPPERFIELD','Area4');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL12',TO_DATE('28-04-2022 14:15','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area10');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL13',TO_DATE('28-04-2022 16:30','DD-MM-YYYY HH24:MI'),'VIA TAMARIZ','Area11');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL14',TO_DATE('28-04-2022 12:35','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area12');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL15',TO_DATE('28-04-2022 11:40','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area2');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL16',TO_DATE('28-04-2022 12:40','DD-MM-YYYY HH24:MI'),'VIA DAORTIZ','Area3');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL17',TO_DATE('28-04-2022 11:20','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area7');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL18',TO_DATE('28-04-2022 15:30','DD-MM-YYYY HH24:MI'),'VIA COPPERFIELD','Area3');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL19',TO_DATE('28-04-2022 12:50','DD-MM-YYYY HH24:MI'),'VIA ALLEGRI','Area4');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL20',TO_DATE('28-04-2022 10:10','DD-MM-YYYY HH24:MI'),'VIA DAORTIZ','Area1');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL21',TO_DATE('28-04-2022 10:00','DD-MM-YYYY HH24:MI'),'VIA BEBEL','Area12');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL9',TO_DATE('30-04-2022 15:30','DD-MM-YYYY HH24:MI'),'VIA TAMARIZ','Area7');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL8',TO_DATE('30-04-2022 17:20','DD-MM-YYYY HH24:MI'),'VIA COPPERFIELD','Area3');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL7',TO_DATE('30-04-2022 18:00','DD-MM-YYYY HH24:MI'),'VIA COPPERFIELD','Area11');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL6',TO_DATE('30-04-2022 15:20','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area10');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL5',TO_DATE('29-04-2022 17:22','DD-MM-YYYY HH24:MI'),'VIA DAORTIZ','Area12');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL4',TO_DATE('29-04-2022 11:50','DD-MM-YYYY HH24:MI'),'VIA HOUDINI','Area15');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL3',TO_DATE('29-04-2022 12:01','DD-MM-YYYY HH24:MI'),'VIA ALLEGRI','Area8');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL2',TO_DATE('29-04-2022 13:35','DD-MM-YYYY HH24:MI'),'VIA ALLEGRI','Area6');
INSERT INTO Ingresso_Mostra(COD_Biglietto,Data_Ora_Ingresso_Mostra,Via_Ingresso,AREA_INGR) VALUES('BIGL1',TO_DATE('29-04-2022 14:37','DD-MM-YYYY HH24:MI'),'VIA BEBEL','Area5');


--ARTISTA OSPITE
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('45618909125','Roberto','Giobbi',TO_DATE('01-05-1959','DD-MM-YYYY'),170);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('12389067843','Diego','Allegri',TO_DATE('01-01-1974','DD-MM-YYYY'),200);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('63019876541','Aurelio','Paviato',TO_DATE('12-07-1959','DD-MM-YYYY'),180);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('14518916780','Francesco','Scimemi',TO_DATE('20-08-1957','DD-MM-YYYY'),150);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('78901236710','Giacomo','Nobile',TO_DATE('24-06-1969','DD-MM-YYYY'),330);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('89156027810','Arturo','Brachetti',TO_DATE('05-12-1967','DD-MM-YYYY'),200);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('90981423781','Salvatore Maria','Ciccone',TO_DATE('27-05-1983','DD-MM-YYYY'),210);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('61290160915','Gabriele','D Angiò',TO_DATE('20-06-1992','DD-MM-YYYY'),240);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('16011142551','Tony','Binarelli',TO_DATE('09-11-1953','DD-MM-YYYY'),400);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('11669015614','Ranieri','Bustelli',TO_DATE('26-10-1962','DD-MM-YYYY'),180);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('88155617719','Raul','Cremona',TO_DATE('05-03-1963','DD-MM-YYYY'),160);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('00102617289','Giucas','Casella',TO_DATE('18-07-1955','DD-MM-YYYY'),175);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('11516771629','Andrew','Basso',TO_DATE('29-06-1960','DD-MM-YYYY'),220);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('22661678150','Marco','Berry',TO_DATE('07-07-1965','DD-MM-YYYY'),190);
INSERT INTO Artista_Ospite(Partita_IVA_Artista,Nome_Artista,Cognome_Artista,Data_Nascita_Artista,Cachet) VALUES('12457180973','Elio Alexander','De Grandi',TO_DATE('10-11-1960','DD-MM-YYYY'),320);

--SPETTACOLO
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT1',TO_DATE('27-04-2022 11:00:00','DD-MM-YYYY HH24-MI-SS'),60,'45618909125','PD1');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT2',TO_DATE('27-04-2022 13:00:00','DD-MM-YYYY HH24-MI-SS'),35,'12389067843','PD4');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT3',TO_DATE('27-04-2022 15:00:00','DD-MM-YYYY HH24-MI-SS'),25,'63019876541','PD12');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT4',TO_DATE('27-04-2022 17:00:00','DD-MM-YYYY HH24-MI-SS'),60,'14518916780','PD6');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT5',TO_DATE('28-04-2022 11:00:00','DD-MM-YYYY HH24-MI-SS'),40,'78901236710','PD7');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT6',TO_DATE('28-04-2022 13:00:00','DD-MM-YYYY HH24-MI-SS'),30,'89156027810','PD1');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT7',TO_DATE('28-04-2022 15:00:00','DD-MM-YYYY HH24-MI-SS'),45,'90981423781','PD9');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT8',TO_DATE('28-04-2022 17:00:00','DD-MM-YYYY HH24-MI-SS'),60,'61290160915','PD10');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT9',TO_DATE('29-04-2022 11:00:00','DD-MM-YYYY HH24-MI-SS'),25,'16011142551','PD3');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT10',TO_DATE('29-04-2022 13:00:00','DD-MM-YYYY HH24-MI-SS'),30,'11669015614','PD8');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT11',TO_DATE('29-04-2022 15:00:00','DD-MM-YYYY HH24-MI-SS'),15,'88155617719','PD11');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT12',TO_DATE('29-04-2022 17:00:00','DD-MM-YYYY HH24-MI-SS'),20,'00102617289','PD12');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT13',TO_DATE('30-04-2022 11:00:00','DD-MM-YYYY HH24-MI-SS'),35,'11516771629','PD5');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT14',TO_DATE('30-04-2022 14:00:00','DD-MM-YYYY HH24-MI-SS'),60,'22661678150','PD7');
INSERT INTO Spettacolo(Nome_Spettacolo,Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,P_IVA_Artista,COD_PAD) VALUES ('SPT15',TO_DATE('30-04-2022 17:00:00','DD-MM-YYYY HH24-MI-SS'),30,'12457180973','PD12');

--NUMERO TELEFONO ARTISTA
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('45618909125','+396783451090');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('12389067843','+391256789012');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('63019876541','+397438392004');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('14518916780','+399287489828');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('78901236710','+398427988429');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('89156027810','+398993878222');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('90981423781','+393717111271');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('61290160915','+397878420203');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('16011142551','+399483202839');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('11669015614','+394328422291');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('88155617719','+390950495400');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('00102617289','+391128381787');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('11516771629','+398173871505');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('22661678150','+394790203002');
INSERT INTO Numero_Telefono_Artista(Part_IVA_Art,Numero_Telefono) VALUES('12457180973','+391717291849');

--CATEGORIA SPETTACOLO
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT1','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT2','Mentalismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT3','Ipnosi');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT4','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT5','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT6','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT7','Mentalismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT8','Mentalismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT9','Ipnosi');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT10','Mentalismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT11','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT12','Mentalismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT13','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT14','Illusionismo');
INSERT INTO Categoria_Spettacolo(Nome_SPT,Categoria) VALUES('SPT15','Ipnosi');


--INGRESSO LAVORATORE
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('GGRMRC67A67P0651','1',TO_DATE('27-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('PRTMRA92A13Q1352','2',TO_DATE('27-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('PLNANT67A67P0653','3',TO_DATE('27-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('MZNLNZ67A67P0654','4',TO_DATE('27-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('PPLELD67A67P0655','5',TO_DATE('28-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('SRCANP67A67P0656','6',TO_DATE('28-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('CNTANA67A67P0657','7',TO_DATE('28-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('SCNMRO67A67P0658','8',TO_DATE('28-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('EPTGNR67A67P0659','9',TO_DATE('29-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('NVNANR67A67P0610','10',TO_DATE('29-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('MDNENR67A67P0611','11',TO_DATE('29-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('PRLGLA67A67P0612','12',TO_DATE('29-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('SNTPLO67A67P0613','13',TO_DATE('30-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('MZZLCA67A67P0614','14',TO_DATE('30-04-2022 08:00','DD-MM-YYYY HH24:MI'));
INSERT INTO Ingresso_Lavoratore(COD_FISCALE_Lavoratore,Numero_BDG,Data_Ora_Ingresso_Lavoratore) VALUES('PLBSRA67A67P0615','15',TO_DATE('30-04-2022 08:00','DD-MM-YYYY HH24:MI'));

