--- CREATE DATABASE nome_data_base --
CREATE DATABASE evenement
--- CREATE TABLE Nom_table ---
-- organis --
CREATE TABLE organis(
	ID_OR INT(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_OR VARCHAR(255),
    Email_OR VARCHAR(255),
    Telephone_OR INT(11),
    ID_EV INT(11)  
);
-- evenement--
CREATE TABLE evenemen(
	ID_EV INT(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_EV VARCHAR(255),
    Data_Debut DATE,
    Theme VARCHAR(255),
    Descriptio TEXT,
    ID_OR INT(11),
    ID_SP INT(11)
);
-- sponsor --
CREATE TABLE sponsor(
	ID_SP INT(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_SP VARCHAR(255),
    Email_SP VARCHAR(255),
    Telephone_SP INT(11),
    Type_SP VARCHAR(60),
    ID_EV INT(11)
);
-- PARTICIPAT --
CREATE TABLE participat(
	ID_PA INT(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_PA VARCHAR(255),
    Email_PA VARCHAR(255),
    Telephone_PA INT(11),
    ID_EV INT(11)  
);

-- lieu --

CREATE TABLE lieu(
	ID_LI INT(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_LI VARCHAR(255),
    City VARCHAR(255),
    Countre INT(11),
    ID_EV INT(11)  
);
-- orga --
CREATE TABLE orga(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    ID_EV INT(11),
    ID_OR INT(11),
    FOREIGN KEY (ID_EV) REFERENCES evenement(ID_EV),
    FOREIGN KEY (ID_OR) REFERENCES organis(ID_OR) 
);
-- BILLET --
CREATE TABLE billet(
	ID_BI INT(11) PRIMARY KEY AUTO_INCREMENT,
    ID_PA INT(11),
    ID_EV INT(11),
    Prix INT ,
    Type_BI VARCHAR(20),
    FOREIGN KEY (ID_EV) REFERENCES evenement(ID_EV),
    FOREIGN KEY (ID_PA) REFERENCES participat(ID_PA) 
);

-- a lieu dans  --
CREATE TABLE a_lieu_dans (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    ID_EV INT(11),
    ID_LI INT(11),
    FOREIGN KEY (ID_EV) REFERENCES evenement(ID_EV),
    FOREIGN KEY (ID_Li) REFERENCES lieu(ID_LI) 
);

-- soutient  --
CREATE TABLE soutient (
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    ID_EV INT(11),
    ID_SP INT(11),
    FOREIGN KEY (ID_EV) REFERENCES evenement(ID_EV),
    FOREIGN KEY (ID_SP) REFERENCES lieu(ID_SP) 
);

SELECT * FROM evenement ;
SELECT ID_OR , Nom_OR FROM organis ;

