
--1)PROCEDURA PER DARE UN COMPENSO EXTRA AD UN PRESTIGIATORE, SE IL SUO CACHET ACCORDATO E' INFERIORE AI 250 EURO PER LA PRESTAZIONE ESEGUITA, SE IL SUO SPETTACOLO DURA PIU' DI 40 MINUTI E SE E' UN IPNOTISTA
CREATE OR REPLACE PROCEDURE COMPENSOEXTRA(IVA_MAGO IN VARCHAR2) IS
cachet_attuale number;
durata_spettacolo_attuale number;
categoria_scelta varchar2(20);
cachet_troppo_alto exception;
durata_troppo_bassa exception;
categoria_indesiderata exception;
BEGIN
SELECT cachet,Durata_Spettacolo_Minuti,Categoria into cachet_attuale,durata_spettacolo_attuale,categoria_scelta from (artista_ospite join spettacolo on Partita_IVA_Artista=P_IVA_Artista) join Categoria_Spettacolo on Nome_Spettacolo=Nome_SPT where Partita_IVA_Artista=IVA_MAGO;
IF cachet_attuale>=250
THEN
RAISE CACHET_TROPPO_ALTO;
RETURN;
ELSIF durata_spettacolo_attuale BETWEEN 0 AND 40
THEN 
RAISE durata_troppo_bassa;
RETURN;
ELSIF (categoria_scelta <> 'Ipnosi')
THEN
RAISE categoria_indesiderata;
RETURN;
ELSE
UPDATE Artista_Ospite SET CACHET = CACHET+50 WHERE Partita_IVA_Artista=IVA_MAGO;
end if;
EXCEPTION
WHEN CACHET_TROPPO_ALTO THEN
RAISE_APPLICATION_ERROR(-20020,'CACHET TROPPO ALTO');
WHEN durata_troppo_bassa THEN
RAISE_APPLICATION_ERROR(-20021,'SPETTACOLO DI DURATA INFERIORE A 45 MINUTI');
WHEN categoria_indesiderata THEN
RAISE_APPLICATION_ERROR(-20022,'CATEGORIA NON DISPONIBILE PER UN AUMENTO');
COMMIT;
end;
/
--EXECUTE COMPENSOEXTRA('INSERIRE_PARTITA_IVA_ARTISTA'); 


--2)PROCEDURA PER APPLICARE lo sconto ad un biglietto di un visitatore se quest'ultimo è minorenne 

CREATE OR REPLACE PROCEDURE SCONTO_MINORI(CODICE_FISCALE_VISITATORE IN VARCHAR2) IS
DATA_NASCITA_PERSONA DATE;
BEGIN
SELECT Data_Nascita_Visitatore INTO DATA_NASCITA_PERSONA FROM VISITATORE WHERE C_F=CODICE_FISCALE_VISITATORE;
IF floor((sysdate-(DATA_NASCITA_PERSONA))/365) < 18 THEN
UPDATE VISITATORE SET Riduzione_Prezzo_Biglietto = 'SI', Prezzo_Biglietto=Prezzo_Biglietto-5 WHERE C_F=CODICE_FISCALE_VISITATORE;
dbms_output.put_line('SCONTO APPLICATO. IL VISITATORE HA RISPARMIATO 5 EURO');
ELSE
UPDATE VISITATORE SET Riduzione_Prezzo_Biglietto = 'NO' WHERE C_F=CODICE_FISCALE_VISITATORE;
dbms_output.put_line('SCONTO NON APPLICATO. VISITATORE MAGGIORENNE');
END IF;
COMMIT;
END;
/

--3)FUNZIONI PER IL CALCOLO DELLE SPESE TOTALI, DELLE ENTRATE TOTALI E DEL BILANCIO
CREATE OR REPLACE FUNCTION tuttelespese RETURN number IS
  tot_spese_contr number := null;
  tot_spese_mago number := null;
  totalespese number :=null;
BEGIN
  SELECT sum(Spesa_Contratto) INTO tot_spese_contr FROM Contratto;
  SELECT sum(Cachet) INTO tot_spese_mago FROM Artista_Ospite;
  totalespese:=tot_spese_contr+tot_spese_mago;
  RETURN totalespese;
END;
/
/*per stampare a schermo il risultato
set serveroutput on
begin
dbms_output.put_line(tuttelespese);
End;*/

CREATE OR REPLACE FUNCTION tutteleentrate RETURN number IS
  tot_guadagni_biglietti number := null;
  tot_guadagni_noleggi number :=null;
  totaleguadagni number := null;
BEGIN
  SELECT sum(Costo_Noleggio) INTO tot_guadagni_noleggi FROM Noleggio;
  SELECT sum(Prezzo_Biglietto) INTO tot_guadagni_biglietti FROM Visitatore;
  totaleguadagni:=tot_guadagni_biglietti+tot_guadagni_noleggi;
  RETURN totaleguadagni;
END;
/
/*per stampare a schermo il risultato
set serveroutput on
begin
dbms_output.put_line(tutteleentrate);
End;*/

CREATE OR REPLACE FUNCTION BILANCIO RETURN number IS
  tot_spese_contr number := null;
  tot_spese_mago number := null;
  totalespese number :=null;
  tot_guadagni_biglietti number := null;
  tot_guadagni_noleggi number :=null;
  totaleguadagni number := null;
  totalebilancio number := null;

BEGIN
SELECT sum(Spesa_Contratto) INTO tot_spese_contr FROM Contratto;
SELECT sum(Cachet) INTO tot_spese_mago FROM Artista_Ospite;
SELECT sum(Costo_Noleggio) INTO tot_guadagni_noleggi FROM Noleggio;
SELECT sum(Prezzo_Biglietto) INTO tot_guadagni_biglietti FROM Visitatore;
totalespese:=tot_spese_contr+tot_spese_mago;
totaleguadagni:=tot_guadagni_biglietti+tot_guadagni_noleggi;
totalebilancio:=totaleguadagni-totalespese;
RETURN totalebilancio;
END;
/
/*per stampare a schermo il risultato
set serveroutput on
begin
dbms_output.put_line(BILANCIO);
End;*/


--4) PROCEDURA CHE MI PERMETTE DI MODIFICARE LA DISPONIBILITA' DI UNO STAND

CREATE OR REPLACE PROCEDURE BLOCCA_STAND(CODSTAND IN VARCHAR2) IS
NUMEROPRENOTAZIONE VARCHAR2(5);
NUMERO_STAND_BLOCCATI number;
NUMERO_STAND_DISPONIBILI number;
BEGIN
SELECT NUM_PREN_NOL INTO NUMEROPRENOTAZIONE FROM STAND WHERE Codice_Stand=CODSTAND;
IF NUMEROPRENOTAZIONE IS NOT NULL THEN
UPDATE STAND SET Disponibilita = 'NO' WHERE Codice_Stand=CODSTAND;
dbms_output.put_line('STAND BLOCATTO. NON DISPONIBILE AL NOLEGGIO');
SELECT COUNT(Numero_Prenotazione_Noleggio) INTO NUMERO_STAND_BLOCCATI FROM Noleggio join stand on num_pren_nol=numero_prenotazione_noleggio WHERE disponibilita='NO';
dbms_output.put_line('STAND NOLEGGIATI:');
dbms_output.put_line(NUMERO_STAND_BLOCCATI);
ELSE
SELECT COUNT(Numero_Prenotazione_Noleggio) INTO NUMERO_STAND_DISPONIBILI FROM Noleggio join stand on num_pren_nol=numero_prenotazione_noleggio WHERE disponibilita='SI';
dbms_output.put_line('STAND ANCORA DISPONIBILE AL NOLEGGIO');
dbms_output.put_line('STAND DISPONIBILI AL NOLEGGIO:');
dbms_output.put_line(NUMERO_STAND_DISPONIBILI);
END IF;
COMMIT;
END;