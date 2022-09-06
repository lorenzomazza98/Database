--CREAZIONE DEI TRIGGER

--VINCOLO DINAMICO: Per un espositore possono lavorare al massimo 3 dipendenti (FATTO)

CREATE OR REPLACE TRIGGER MAX_DIP_EXPO
BEFORE INSERT ON Dipendente_Stand
FOR EACH ROW
DECLARE
max_esp exception;
count_dip number(1);
begin 
select count(*) into count_dip from Dipendente_Stand
where ID_EXPO=:new.ID_EXPO;
if count_dip>=3 then 
raise max_esp;
end if;
exception 
when max_esp then
raise_application_error(-20001,'ESPOSITORE CON TROPPI DIPENDENTI');
end;
/
------------------------------------------------------------------

--VINCOLO DINAMICO: Controllare che nell'impresa di pulizia non lavorino più di 6 persone, nell'allestimento stand non lavorino più di 5 persone e nella security non lavorino più di 4 persone (FATTO)

CREATE OR REPLACE TRIGGER MAX_LAV_SOC_IMPPUL
BEFORE INSERT ON Dipendente_Società
for each row
DECLARE
max_lav_societa_imppul exception;
count_lavoratore_imppul number(2);
begin
select count(*) into count_lavoratore_imppul from (Dipendente_Società join società on :new.PART_IVA_Società=Partita_Iva_Società) join Impresa_Pulizie on Partita_Iva_Società=Partita_Iva_Società_IP where PART_IVA_Società=:new.PART_IVA_Società;
if count_lavoratore_imppul >= 6 then
raise max_lav_societa_imppul;
end if;
exception
when max_lav_societa_imppul then
raise_application_error(-20003,'TROPPI LAVORATORI NELLA SOCIETA -IMPRESA PULIZIE-');
end;
/
CREATE OR REPLACE TRIGGER MAX_LAV_SOC_ALLSTAND
BEFORE INSERT ON Dipendente_Società
for each row
DECLARE
max_lav_societa_allstand exception;
count_lavoratore_allstand number(2);
begin
select count(*) into count_lavoratore_allstand from (Dipendente_Società join società on :new.PART_IVA_Società=Partita_Iva_Società) join Allestimento_Stand on Partita_Iva_Società=Partita_Iva_Società_AS where PART_IVA_Società=:new.PART_IVA_Società;
if count_lavoratore_allstand >= 5 then
raise max_lav_societa_allstand;
end if;
exception
when max_lav_societa_allstand then
raise_application_error(-20004,'TROPPI LAVORATORI NELLA SOCIETA -ALLESTIMENTO STAND-');
end;
/
CREATE OR REPLACE TRIGGER MAX_LAV_SOC_SECURITY
BEFORE INSERT ON Dipendente_Società
for each row
DECLARE
max_lav_societa_security exception;
count_lavoratore_security number(2);
begin
select count(*) into count_lavoratore_security from (Dipendente_Società join società on :new.PART_IVA_Società=Partita_Iva_Società) join Security on Partita_Iva_Società=Partita_Iva_Società_SEC where PART_IVA_Società=:new.PART_IVA_Società;
if count_lavoratore_security >= 4 then
raise max_lav_societa_security;
end if;
exception
when max_lav_societa_security then
raise_application_error(-20005,'TROPPI LAVORATORI NELLA SOCIETA -SECURITY-');
end;
/
----------------------------------------------------------------------------

--VINCOLO DINAMICO: Possono essere svolti al massimo 4 spettacoli al giorno (FATTO)

CREATE OR REPLACE TRIGGER NUM_SPETTACOLO_DAY
BEFORE INSERT ON Spettacolo
for each row
declare 
max_spett_day exception;
num_spet_day number(1);
begin
select count(*) into num_spet_day from spettacolo where TO_CHAR(Data_Ora_Spettacolo,'DD-MM-YYYY')=TO_CHAR(:new.Data_Ora_Spettacolo,'DD-MM-YYYY');
if num_spet_day >= 4 then
raise max_spett_day;
end if;
exception
when max_spett_day then
raise_application_error(-20006,'TROPPI SPETTACOLI');
end;
/
-----------------------------------------------------------------

--VINCOLO DINAMICO: In un giorno della mostra possono essere effettuati al max 200 ingressi (FATTO)

CREATE OR REPLACE TRIGGER MAX_VIS_DAY
BEFORE INSERT ON Ingresso_Mostra
FOR EACH ROW 
DECLARE
max_visitatori exception;
count_ingressi number(3);
begin
select count(*) into count_ingressi from Ingresso_Mostra where TO_CHAR(Data_Ora_Ingresso_Mostra,'DD-MM-YYYY')=TO_CHAR(:new.Data_Ora_Ingresso_Mostra,'DD-MM-YYYY');
if count_ingressi>= 200 then
raise max_visitatori;
end if;
exception
when max_visitatori then
raise_application_error(-20002,'TROPPI VISITATORI IN UN GIORNO');
end;
/
-----------------------------------------------------------------

--VINCOLO DINAMICO: 1 società per ogni tipologia e un contratto al massimo per ognuna (FATTO)

CREATE OR REPLACE TRIGGER MAX_TUPLE_SOC
BEFORE INSERT ON Società
for each row
DECLARE
max_tuple_societa exception;
count_tuple number(1);
begin
select count(*) into count_tuple from Società;
if count_tuple >=3 then
raise max_tuple_societa;
end if;
exception
when max_tuple_societa then
raise_application_error(-20007,'TROPPE SOCIETA');
end;
/
CREATE OR REPLACE TRIGGER MAX_CONTR_SOC
BEFORE INSERT ON Contratto
for each row
DECLARE
max_tuple_contratto exception;
count_tuple_contr number(1);
begin
select count(*) into count_tuple_contr from Contratto;
if count_tuple_contr >=3 then
raise max_tuple_contratto;
end if;
exception
when max_tuple_contratto then
raise_application_error(-20008,'TROPPI CONTRATTI');
end;
/
CREATE OR REPLACE TRIGGER MAX_SOC_IMPPUL
BEFORE INSERT ON Impresa_Pulizie
for each row
DECLARE
max_tuple_imppul exception;
count_tuple_imppul number(1);
begin
select count(*) into count_tuple_imppul from Impresa_Pulizie;
if count_tuple_imppul >=1 then
raise max_tuple_imppul;
end if;
exception
when max_tuple_imppul then
raise_application_error(-20009,'TROPPE SOCIETA PULIZIA');
end;
/
CREATE OR REPLACE TRIGGER MAX_SOC_ALLSTAND
BEFORE INSERT ON Allestimento_Stand
for each row
DECLARE
max_tuple_allstand exception;
count_tuple_allstand number(1);
begin
select count(*) into count_tuple_allstand from Allestimento_Stand;
if count_tuple_allstand >=1 then
raise max_tuple_allstand;
end if;
exception
when max_tuple_allstand then
raise_application_error(-20010,'TROPPE SOCIETA ALLESTIMENTO STAND');
end;
/
CREATE OR REPLACE TRIGGER MAX_SOC_SECURITY
BEFORE INSERT ON Security
for each row
DECLARE
max_tuple_sec exception;
count_tuple_sec number(1);
begin
select count(*) into count_tuple_sec from Security;
if count_tuple_sec >=1 then
raise max_tuple_sec;
end if;
exception
when max_tuple_sec then
raise_application_error(-20011,'TROPPE SOCIETA SECURITY');
end;
/
-----------------------------------------------------------

--VINCOLO DINAMICO: Un'area può contenere al massimo 3 padiglioni (FATTO)

CREATE OR REPLACE TRIGGER MAX_PAD_AREA
BEFORE INSERT ON Padiglione
FOR EACH ROW
DECLARE
max_pad_inarea exception;
count_pad_inarea number(1);
begin 
select count(*) into count_pad_inarea from Padiglione where AREA_PAD=:new.AREA_PAD;
if count_pad_inarea>=3 then 
raise max_pad_inarea;
end if;
exception 
when max_pad_inarea then
raise_application_error(-20012,'CI SONO TROPPI PADIGLIONI IN QUESTA AREA');
end;
/

--VINCOLO DINAMICO: Un espositore può noleggiare al massimo 3 stand per tutta la durata della mostra
CREATE OR REPLACE TRIGGER MAX_STAND_ESPO
BEFORE INSERT ON Noleggio
FOR EACH ROW
DECLARE
max_stand_exp exception;
count_nol number(1);
begin 
select count(*) into count_nol from Noleggio where ID_EXP=:new.ID_EXP;
if count_nol>=3 then 
raise max_stand_exp;
end if;
exception 
when max_stand_exp then
raise_application_error(-20014,'ESPOSITORE CON TROPPI NOLEGGI');
end;
