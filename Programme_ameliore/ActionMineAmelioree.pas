Unit ActionMineAmelioree;




interface

uses
	PersonnageUnitA,gestionEcran;


	procedure recolterPierre(var personnage:typepersonnage);
	procedure recolterFer(var personnage:typepersonnage);
	procedure explorer(var personnage:typepersonnage);


implementation


procedure recolterPierre(var personnage:typepersonnage);		//permet de calculer la taille de la récolte de pierre

begin
	randomize;
	personnage.pierre:=random(4)+personnage.pioche;
end;


procedure recolterFer(var personnage:typepersonnage);		//permet de calculer la taille de la récolte de fer

begin
	randomize;
	personnage.fer:=random(3)+personnage.pioche;
end;




procedure explorer(var personnage:typepersonnage);

var
	sortie: Boolean;		//contient la condition de sortie de la boucle while
	choix:Integer;			//contient le choix du héros sur son action
begin


	if not personnage.victoire then		//Condition pour savoir si le perso à battu le Boss final Freud
		begin
			writeln('Vous avez choisi d''explorer la mine afin de trouver de nouvelles ressources, plus rares et donc plus chère');
			writeln('Après avoir exploré la mine vous arrivez dans un endroit sombre');
			writeln('Vous trouvez un aventurier blessé au fond de la mine.');
			writeln('Celui-ci vous adresse la parole et les quelques mots que vous décernez sont "aidez-moi" et Freud');
			writeln('Vous en déduisez que l''aventurier à besoin d''aide et vous pouvez choisir de l''aider');

			while sortie do
      begin
      writeln(personnage.victoire);
      writeln('Que voulez vous faire ? ');
			writeln('1 : collecter la pierre');
			writeln('2 : collecter du fer');
			writeln('3 : aider l''aventurier à sortir de la mine');
			writeln('4 : sortir');
      if not personnage.victoire  then
      begin
					readln(choix);
          effacerEcran;
					case choix of
						1:recolterFer(personnage);
						2:recolterPierre(personnage);
						3:	begin
                  writeln('vous avez choisi d''aider l''aventurier et  vous quittez donc la mine avec lui sur le dos');
                  personnage.freud:=FALSE;
                  sortie:=FALSE;
                end;
						4:begin
              sortie:=false;
              writeln('Vous avez décidé de rebrousser chemin');
						end;
          end;



					end;

				end;
			end
	else				//si le boss  battu il ne peut plus aider l'aventurier
		begin
			writeln('Vous avez choisi d''explorer la mine afin de trouver de nouvelles ressources, plus rares et donc plus chère');
			writeln('Après avoir exploré la mine vous arrivez dans un endroit sombre');
			writeln('Vous trouvez un aventurier blessé au fond de la mine.');
			writeln('Celui-ci vous adresse la parole et les quelques mots que vous décernez sont "aidez-moi" et Freud');
			writeln('Vous en déduisez que l''aventurier à besoin d''aide et vous pouvez choisir de l''aider');
			writeln('Que voulez vous faire ? ');
			writeln('1 : collecter la pierre');
			writeln('2 : collecter du fer');
			writeln('0 : sortir');
      writeln('plop');
			while sortie do
				begin
					readln(choix);
          effacerEcran;
					case choix of
						1:recolterFer(personnage);
						2:recolterPierre(personnage);
						0:begin
						sortie:=false;
						writeln('Vous avez décidé de rebrousser chemin');
						end;



					end;

				end
		end;


end;


end.
