CREATE TABLE Libri (
    id_libro INTEGER PRIMARY KEY,
    titolo TEXT NOT NULL,
    autore TEXT NOT NULL,
    isbn TEXT UNIQUE
);

CREATE TABLE Utenti (
    id_utente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT UNIQUE,
    pass varchar(32) not null,
    data_creazione DATETIME DEFAULT CURRENT_TIMESTAMP -- Monitoraggio audit
);

CREATE TABLE Prestiti (
    id_prestito INTEGER PRIMARY KEY,
    id_libro INTEGER,
    id_utente INTEGER,
    data_inizio DATE NOT NULL,
    data_fine DATE,
    FOREIGN KEY (id_libro) REFERENCES Libri(id_libro),
    FOREIGN KEY (id_utente) REFERENCES Utenti(id_utente)
);