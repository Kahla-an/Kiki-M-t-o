CREATE DATABASE IF NOT EXISTS Kiki_meteo;
USE Kiki_meteo;

CREATE TABLE IF NOT EXISTS sondes(
    id_sonde INT PRIMARY KEY AUTO_INCREMENT,
    nom_sonde VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS releves(
    id_sonde_fk INT,
    date_enregistrement DATETIME,
    temperature DECIMAL(3,1),
    humidite DECIMAL(3,2),
    FOREIGN KEY (id_sonde_fk) REFERENCES sondes(id_sonde)
);


INSERT INTO sondes(nom_sonde) VALUES ('I2C GY-21');

INSERT INTO releves(id_sonde_fk, date_enregistrement, temperature, humidite) VALUES 
    (1,'2021-02-05 23:01:00','20.1','0.40'),
    (1,'2021-02-05 23:02:00','21.7','0.23'),
    (1,'2021-02-05 23:03:00','23.8','0.34'),
    (1,'2021-02-05 23:04:00','24.6','0.58'),
    (1,'2021-02-05 23:05:00','22.3','0.89'),
    (1,'2021-02-05 23:06:00','26.9','0.13'),
    (1,'2021-02-05 23:07:00','18.4','0.55'),
    (1,'2021-02-05 23:08:00','29.5','0.47'),
    (1,'2021-02-05 23:09:00','28.3','0.62'),
    (1,'2021-02-05 23:10:00','29.2','0.31');  