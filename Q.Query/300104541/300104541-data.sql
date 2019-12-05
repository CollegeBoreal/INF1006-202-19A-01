
use Jeuxvideos;

INSERT INTO CONSOLES (Consoles, console) VALUES ('PS4', 1);
INSERT INTO CONSOLES (Consoles, console) VALUES ('XBOX ONE', 2);
INSERT INTO CONSOLES (Consoles, console) VALUES ('XBOX 360', 3);

INSERT INTO VENTE_VIRTUELLES (Ventes, vente_virtuelle) VALUES ('En ligne', 1);
INSERT INTO VENTE_VIRTUELLES (Ventes, vente_virtuelle) VALUES ('PS+', 2);

INSERT INTO VENTE_PHYSIQUES (Ventes, vente_physique) VALUES ('En Store', 1);
INSERT INTO VENTE_PHYSIQUES (Ventes, vente_physique) VALUES ('THE SOURCE', 2);
INSERT INTO VENTE_PHYSIQUES (Ventes, vente_physique) VALUES ('EB GAMES', 3);

INSERT INTO DIFFUSIONS (Diffusion, diffusion) VALUES ('Streaming' , 1);
INSERT INTO DIFFUSIONS (Diffusion, diffusion) VALUES ('Mode Story' , 2);

INSERT INTO JEUX (Jeux, Categorie, jeux, console, diffusion) VALUES ('Modern Combat', 'Action', 1, 1, 2);
INSERT INTO JEUX (Jeux, Categorie, jeux, console, diffusion) VALUES ('FIFA19', 'Sport', 2, 3, 1);
INSERT INTO JEUX (Jeux, Categorie, jeux, console, diffusion) VALUES ('Naruto', 'Adventure', 3, 2, 2);
INSERT INTO JEUX (Jeux, Categorie, jeux, console, diffusion) VALUES (''

INSERT INTO SUPPORTS (support, vente_virtuelle, Support) VALUES(1, 1, 'Clavardage');
INSERT INTO SUPPORTS (support, vente_virtuelle, Support) VALUES(2, 2, 'Appel');
INSERT INTO SUPPORTS (support, vente_physique, Support) VALUES(3, 3, 'Guichet');  
INSERT INTO SUPPORTS (support, vente_physique, Support) VALUES(4, 2, 'Check-Out');                                                                     
