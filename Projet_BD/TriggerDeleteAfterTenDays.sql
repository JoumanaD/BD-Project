CREATE OR REPLACE TRIGGER DELETE_FICHIER 
AFTER INSERT ON LesFichiersImages
FOR EACH ROW ENABLE 
BEGIN
    DELETE FROM LesFichiersImages 
    WHERE SYSDATE - LesFichiersImages.DateCreation > 10;
END;
/