Unit actionMine;



interface

uses
	PersonnageUnit,GestionEcran;

	procedure recolterPierre(var personnage:typepersonnage);
	procedure recolterFer(var personnage:typepersonnage);
	procedure explorer(var personnage:typepersonnage);


implementation

procedure recolterPierre(var personnage:typepersonnage);

begin

	personnage.pierre:=personnage.pierre + random(4)+personnage.pioche;
  writeln('vous avez maintenant ',personnage.pierre,' unités de pierre');
end;


procedure recolterFer(var personnage:typepersonnage);

begin

	personnage.fer:=random(3)+personnage.pioche;
  writeln('vous avez maintenant ',personnage.fer,' unités de fer');
end;




procedure explorer(var personnage:typepersonnage);

var
	sortie: Boolean;
	choix:Integer;
begin
	writeln('Vous avez choisi d''explorer la mine afin de trouver de nouvelles ressources, plus rares et donc plus chère');
	writeln('Après avoir exploré la mine vous arrivez dans un endroit sombre');
	writeln('Il s''offre à vous trois choix');
	writeln('1 : collecter la pierre');
	writeln('2 : collecter du fer');
	writeln('3 : explorer');
	writeln('4 : sortir');
	while sortie do
		begin
			readln(choix);
      effacerEcran;
			case choix of
				1:recolterFer(personnage);
				2:recolterPierre(personnage);
				3:explorer(personnage);
				4:begin
			  	sortie:=false;
				  writeln('Vous avez décidé de rebrousser chemin');
				end;



			end;

		end;

end;


end.

