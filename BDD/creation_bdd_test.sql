CREATE DATABASE IF NOT EXISTS Kiki_meteo;
USE Kiki_meteo;

CREATE TABLE IF NOT EXISTS sondes(
    id_sonde INT PRIMARY KEY AUTO_INCREMENT,
    nom_sonde VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS releves(
    id_sonde_fk INT,
    date_enregistrement TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    temperature DECIMAL(3,1),
    humidite DECIMAL(3,2),
    FOREIGN KEY (id_sonde_fk) REFERENCES sondes(id_sonde)
);

SELECT id_sonde_fk AS "ID Sonde", date_enregistrement AS "Date Enregistrement", temperature AS "Température", humidite*100 AS "Taux d'Humidité", nom_sonde AS "Nom Sonde" FROM releves INNER JOIN sondes ON releves.id_sonde_fk = sondes.id_sonde;

