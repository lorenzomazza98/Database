--UNA VISTA PERMETTE AD UN DETERMINATO UTENTE DELLA BASE DI DATI DI VISUALIZZARE SPECIFICHE TABELLE E COLONNE SCELTE DALL'AMMINISTRATORE, NASCONDENDONE ALTRE.
--UNA VISTA VIENE CHIAMATA COME NELLE QUERY, OVVERO SCRIVENDO SELECT colonna1,colonna2,colonnaN FROM nome_vista
 
 CREATE OR REPLACE VIEW MOSTRA_SPETTACOLI AS 
 SELECT Nome_Spettacolo, Data_Ora_Spettacolo,Durata_Spettacolo_Minuti,Nome_Artista,Cognome_Artista,Categoria,Nome_Padiglione,AREA_PAD
 FROM
 ((Spettacolo join Artista_Ospite on P_IVA_Artista=Partita_IVA_Artista) join Categoria_Spettacolo on Nome_SPT=Nome_Spettacolo) join Padiglione on COD_PAD=Codice_padiglione;

 CREATE OR REPLACE VIEW MOSTRA_ESPOSITORI AS
 SELECT Nome_Espositore,Cognome_Espositore,Codice_Stand,Superficie_Stand_Metriquadr,COD_PAD_STAND,AREA_PAD
 FROM
 ((ESPOSITORE JOIN NOLEGGIO ON ID_EXP=ID_Espositore) JOIN STAND ON NUM_PREN_NOL=Numero_Prenotazione_Noleggio) JOIN PADIGLIONE ON COD_PAD_STAND=Codice_padiglione;

 CREATE OR REPLACE VIEW MOSTRA_LAVORATORI_SOCIETA AS
 SELECT Nome_Lavoratore,Cognome_Lavoratore,C_F_Lavoratore,Ora_Inizio_Turno,Ora_Fine_Turno,Nome_Società,PART_IVA_Società,Recapito_Telefonico_Società
 FROM
 (Lavoratore JOIN Dipendente_Società ON Numero_Badge_Soc=Numero_Badge) JOIN società ON PART_IVA_Società=Partita_Iva_Società;

 CREATE OR REPLACE VIEW MOSTRA_LAVORATORI_STAND AS
 SELECT Nome_Lavoratore,Cognome_Lavoratore,C_F_Lavoratore,ID_EXPO, Nome_Espositore,Cognome_Espositore,C_F_Espositore
 FROM
 (Lavoratore join Dipendente_Stand on Numero_Badge_Stand=Numero_Badge) join espositore on id_expo=ID_Espositore;

 CREATE OR REPLACE VIEW MOSTRA_CONTRATTI_STIPULATI AS
 SELECT Codice_Contratto,Data_Contratto,Spesa_Contratto, Nome_Società, Partita_Iva_Società,Recapito_Telefonico_Società
 FROM
 CONTRATTO JOIN Società ON COD_Contratto=Codice_Contratto;