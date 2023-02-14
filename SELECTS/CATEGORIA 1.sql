
/* Mostra quants homes i quantes dones hi han en la BD */ 
SELECT COUNT(*) AS Dones
	FROM persones
		WHERE sexe = 'F'
UNION
SELECT COUNT(*) AS Homes
	FROM persones
		WHERE sexe = 'M';


/* Mostra el municipi amb mes vots de tots */
SELECT municipi_id, MAX(vots) AS Munici_Max_Vots
	FROM vots_candidatures_mun
		GROUP BY municipi_id;


/* Mostra el numero de candidats que hi han per cada provincia */ 
SELECT provincia_id AS Provincies, COUNT(candidat_id) AS Candidats
	FROM candidats
		GROUP BY provincia_id;


/* Mostra el nom, el primer cognom i la edat de les persones que tenen mes de 30 anys */
SELECT nom, cognom1, timestampdiff(YEAR,data_naixement,CURDATE()) AS edat
	FROM persones 
		WHERE timestampdiff(YEAR,data_naixement,CURDATE()) > 30;
        

/* Mostra el nom, el cognom i la data_naixement de les persones el nom dels continguin 2 vocals seguidas*/ 
	SELECT COUNT(*) quants
		FROM jugadors j 
			  WHERE nom_complet RLIKE '[aeiou]{2}';
        




