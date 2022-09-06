--LA MOSTRA SI SVOLGE DAL 27 APRILE AL 30 APRILE (LE DATE DEGLI EVENTI DELLA MOSTRA DEVO ESSERE IN QUESTO RANGE)

--CREAZIONE DELLE TABELLE

DROP TABLE Impresa_Pulizie;
DROP TABLE Allestimento_Stand;
DROP TABLE Security;
DROP TABLE Contratto;
DROP TABLE Società;
DROP TABLE Lavoratore;
DROP TABLE Dipendente_Società;
DROP TABLE Espositore;
DROP TABLE Dipendente_Stand;
DROP TABLE Noleggio;
DROP TABLE Area;
DROP TABLE Padiglione;
DROP TABLE Numero_Telefono_Espositore;
DROP TABLE Stand;
DROP TABLE Visitatore;
DROP TABLE Ingresso_Mostra;
DROP TABLE Artista_Ospite;
DROP TABLE Spettacolo;
DROP TABLE Numero_Telefono_Artista;
DROP TABLE Categoria;
DROP TABLE Ingresso_Lavoratore;

--5
CREATE TABLE Contratto(
   Codice_Contratto varchar2(20) PRIMARY KEY,
   Data_Contratto date NOT NULL,
   Spesa_Contratto number NOT NULL 
); 

--4
CREATE TABLE Società(
    Partita_Iva_Società varchar2(11) PRIMARY KEY,
    Nome_Società varchar2(50) NOT NULL UNIQUE,
    Recapito_Telefonico_Società varchar2(13) NOT NULL UNIQUE,
    COD_Contratto varchar2(20),
    constraint codcontr_fk FOREIGN KEY (COD_Contratto) REFERENCES Contratto(Codice_Contratto) ON DELETE CASCADE,
    CHECK (LENGTH(Partita_Iva_Società)=11),
    CHECK (LENGTH(Recapito_Telefonico_Società)>=10)
);

--1
CREATE TABLE Impresa_Pulizie (
    Partita_Iva_Società_IP varchar2(11) PRIMARY KEY, 
    CHECK(LENGTH(Partita_Iva_Società_IP)=11),
    constraint part_iva_pul_fk FOREIGN KEY (Partita_Iva_Società_IP) REFERENCES Società(Partita_Iva_Società) ON DELETE CASCADE
);

--2
CREATE TABLE Allestimento_Stand(
    Partita_Iva_Società_AS varchar2(11) PRIMARY KEY, 
    CHECK(LENGTH(Partita_Iva_Società_AS)=11),
    constraint part_iva_stand_fk FOREIGN KEY (Partita_Iva_Società_AS) REFERENCES Società(Partita_Iva_Società) ON DELETE CASCADE
);

--3
CREATE TABLE Security(
    Partita_Iva_Società_SEC varchar2(11) PRIMARY KEY, 
    CHECK(LENGTH(Partita_Iva_Società_SEC)=11),
    constraint part_iva_sec_fk FOREIGN KEY (Partita_Iva_Società_SEC) REFERENCES Società(Partita_Iva_Società) ON DELETE CASCADE
);

--6
CREATE TABLE Lavoratore(
    Numero_Badge varchar2(5) PRIMARY KEY,
    C_F_Lavoratore varchar2(16) NOT NULL UNIQUE,
    Nome_Lavoratore varchar2(20) NOT NULL,
    Cognome_Lavoratore varchar2(20) NOT NULL,
    CHECK (LENGTH(C_F_Lavoratore)=16)
);

--21
CREATE TABLE Ingresso_Lavoratore(
    COD_FISCALE_Lavoratore varchar2(16) PRIMARY KEY,
    Numero_BDG varchar2(5),
    Data_Ora_Ingresso_Lavoratore timestamp,
    constraint bdg_ingr_fk FOREIGN KEY(Numero_BDG) REFERENCES Lavoratore(Numero_Badge) ON DELETE CASCADE,
    CHECK (Data_Ora_Ingresso_Lavoratore BETWEEN TO_DATE('27-04-2022','DD-MM-YYYY') AND TO_DATE('01-05-2022','DD-MM-YYYY'))

);

--7
CREATE TABLE Dipendente_Società(
    Numero_Badge_Soc varchar2(5) PRIMARY KEY,
    Ora_Inizio_Turno timestamp NOT NULL, --By default format of TIMESTAMP is ‘YYYY-MM-DD HH24:MI:SS.FF’.
    Ora_Fine_Turno timestamp NOT NULL, --By default format of TIMESTAMP is ‘YYYY-MM-DD HH24:MI:SS.FF’.
    PART_IVA_Società varchar2(11),
    constraint Badge_soc_fk FOREIGN KEY (Numero_Badge_Soc) REFERENCES Lavoratore(Numero_Badge) ON DELETE CASCADE,
    CHECK (Ora_Inizio_Turno<Ora_Fine_Turno)
);   

--9
CREATE TABLE Espositore(
    ID_Espositore varchar2(5) PRIMARY KEY,
    C_F_Espositore  varchar2(16) NOT NULL UNIQUE,
    Nome_Espositore varchar2(20) NOT NULL,
    Cognome_Espositore varchar2(20) NOT NULL,
    CHECK (LENGTH(C_F_Espositore)=16)
);

--8
CREATE TABLE Dipendente_Stand(
    Numero_Badge_Stand varchar2(5) PRIMARY KEY,
    ID_EXPO varchar2(5),
    constraint idexp_fk FOREIGN KEY (ID_EXPO) REFERENCES Espositore(ID_Espositore) ON DELETE CASCADE,
    constraint Badge_stand_fk FOREIGN KEY (Numero_Badge_Stand) REFERENCES Lavoratore(Numero_Badge) ON DELETE CASCADE

);

--11
CREATE TABLE Noleggio(
    Numero_Prenotazione_Noleggio varchar2(5) PRIMARY KEY,
    Data_Prenotazione_Noleggio date NOT NULL,
    ID_EXP varchar2(5),
    Costo_Noleggio number NOT NULL,
    Metodo_Pagamento varchar2(50) NOT NULL,
    constraint id_exp_fk FOREIGN KEY (ID_EXP) REFERENCES Espositore(ID_Espositore) ON DELETE CASCADE,
    CHECK (Metodo_Pagamento IN ('Carta Credito','Contanti','Bonifico','Assegno'))
);

--14
CREATE TABLE Area(
    Nome_Area varchar2(20) PRIMARY KEY,
    Superficie_Area_Metriquadr number NOT NULL 
);

--13
CREATE TABLE Padiglione(
    Codice_padiglione varchar2(4) PRIMARY KEY,
    Nome_Padiglione varchar2(20) NOT NULL UNIQUE,
    AREA_PAD varchar2(20),
    constraint areapad_fk FOREIGN KEY (AREA_PAD) REFERENCES Area(Nome_Area) ON DELETE CASCADE
);


--12
CREATE TABLE Numero_Telefono_Espositore(
    ID_ESPOSIT varchar2(5),
    Numero_Telefono varchar2(13),
    CONSTRAINT numtelesp_pk PRIMARY KEY(ID_ESPOSIT,Numero_Telefono),
    constraint id_espo_tel_fk FOREIGN KEY (ID_ESPOSIT) REFERENCES Espositore(ID_Espositore) ON DELETE CASCADE,
    CHECK(LENGTH(Numero_Telefono)>=10)
);


--10
CREATE TABLE Stand(
    Codice_Stand varchar2(5) PRIMARY KEY,
    Superficie_Stand_Metriquadr number NOT NULL,
    NUM_PREN_NOL varchar2(5),
    COD_PAD_STAND varchar2(4),
    Disponibilita varchar2(2),
    CHECK (Disponibilita IN('SI','NO')),
    constraint numprennol_fk FOREIGN KEY (NUM_PREN_NOL) REFERENCES Noleggio(Numero_Prenotazione_Noleggio) ON DELETE CASCADE,
    constraint codpadstand_fk FOREIGN KEY (COD_PAD_STAND) REFERENCES Padiglione(Codice_padiglione) ON DELETE CASCADE
);


--16
CREATE TABLE Visitatore(
    Codice_Biglietto_Visitatore varchar2(20) PRIMARY KEY,
    Data_Nascita_Visitatore date NOT NULL,
    Prezzo_Biglietto number NOT NULL,
    Riduzione_Prezzo_Biglietto varchar2(2),
    Nome_Visitatore varchar2(20) NOT NULL,
    Cognome_Visitatore varchar2(20) NOT NULL,
    C_F varchar2(16) NOT NULL UNIQUE,
    constraint check_sconto CHECK (Riduzione_Prezzo_Biglietto IN ('SI','NO','ND')),
    CHECK(LENGTH(C_F)=16),
    CHECK(Prezzo_Biglietto >=10 AND Prezzo_Biglietto <=18)
);


--15
CREATE TABLE Ingresso_Mostra ( 
    COD_Biglietto varchar2(20) REFERENCES Visitatore(Codice_Biglietto_Visitatore) ON DELETE CASCADE, 
    Data_Ora_Ingresso_Mostra timestamp, --By default format of TIMESTAMP is ‘YYYY-MM-DD HH24:MI:SS.FF’.
    Via_Ingresso varchar2(50) NOT NULL, 
    AREA_INGR varchar2(20), 
    constraint ingrmostr_pk PRIMARY KEY (COD_Biglietto,Data_Ora_Ingresso_Mostra),
    constraint area_ingr_fk FOREIGN KEY (AREA_INGR) REFERENCES Area(Nome_Area) ON DELETE CASCADE,
    CHECK (Data_Ora_Ingresso_Mostra BETWEEN TO_DATE('27-04-2022','DD-MM-YYYY') AND TO_DATE('01-05-2022','DD-MM-YYYY')),
    CHECK (Via_Ingresso IN ('VIA HOUDINI','VIA COPPERFIELD','VIA BEBEL','VIA ALLEGRI','VIA TAMARIZ','VIA DAORTIZ'))
);

--18
CREATE TABLE Artista_Ospite(
    Partita_IVA_Artista varchar2(11) PRIMARY KEY,
    Nome_Artista varchar2(20) NOT NULL,
    Cognome_Artista varchar2(20) NOT NULL,
    Data_Nascita_Artista date NOT NULL,
    Cachet number NOT NULL,
    CHECK(Cachet>=150),
    CHECK(LENGTH(Partita_IVA_Artista)=11)
);

--17
CREATE TABLE Spettacolo(
    Nome_Spettacolo varchar2(50) PRIMARY KEY,
    Data_Ora_Spettacolo timestamp NOT NULL, --By default format of TIMESTAMP is ‘YYYY-MM-DD HH24:MI:SS.FF’.
    Durata_Spettacolo_Minuti number NOT NULL,
    P_IVA_Artista varchar2(11),
    COD_PAD varchar2(4),
    constraint pivaart_fk FOREIGN KEY (P_IVA_Artista) REFERENCES Artista_Ospite(Partita_IVA_Artista) ON DELETE CASCADE,
    constraint codpad_fk FOREIGN KEY (COD_PAD) REFERENCES Padiglione(Codice_padiglione) ON DELETE CASCADE
);

--19
CREATE TABLE Numero_Telefono_Artista(
    Part_IVA_Art varchar2(11),
    Numero_Telefono varchar2(13),
    constraint numtelart_pk PRIMARY KEY(Part_IVA_Art,Numero_Telefono),
    constraint part_iva_art_num_fk FOREIGN KEY (Part_IVA_Art) REFERENCES Artista_Ospite(Partita_IVA_Artista) ON DELETE CASCADE,
    CHECK (LENGTH(Part_IVA_Art)=11),
    CHECK (LENGTH(Numero_Telefono)>=10)
);

--20
CREATE TABLE Categoria_Spettacolo(
    Nome_SPT varchar2(50),
    Categoria varchar2(20), 
    constraint catspet_pk PRIMARY KEY(Nome_SPT,Categoria),
    constraint nome_spt_fk FOREIGN KEY (Nome_SPT) REFERENCES Spettacolo(Nome_Spettacolo) ON DELETE CASCADE,
    CHECK (Categoria IN ('Illusionismo','Mentalismo','Ipnosi'))
);










