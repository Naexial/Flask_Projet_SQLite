DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    email TEXT,
    telephone TEXT
);

);
CREATE TABLE livres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL
    disponible INTEGER DEFAULT 1
);
CREATE TABLE emprunts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    livre_id INTEGER,
    utilisateur TEXT NOT NULL,
    date_emprunt TEXT,
    date_retour TEXT,
    FOREIGN KEY (livre_id) REFERENCES livres (id)
);
