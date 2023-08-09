unit cavePot;

interface

uses
	PersonnageUnitA,gestionEcran;

procedure cave(var personnage:typepersonnage);



implementation
procedure potbis(var pot:typePotion);		//générère un potion aléatoire pour le héros

var
	aleat: Integer;		//contient la valeur qui va définir la contenance de la potion

begin
	aleat:=random(4)+1;
	case aleat of
		1:	begin
				pot.nom:='Potion rouge';
				pot.hp:=50;
				pot.attaque:=5;
				pot.def:=2;
				pot.fuite:=-5
			end;
		2: 	begin
				pot.nom:='Potion verte';
				pot.hp:=-50;
				pot.attaque:=-5;
				pot.def:=10;
				pot.fuite:=15;
			end;
		3:	begin
				pot.nom:='Potion violette';
				pot.hp:=25;
				pot.attaque:=3;
				pot.def:=4;
				pot.fuite:=5;
			end;
		else
			begin
				pot.nom:='Potion bleuatre';
				pot.hp:=-75;
				pot.attaque:=-20;
				pot.def:=-15;
				pot.fuite:=40;
			end;



end;
end;
procedure potion(var personnage:typepersonnage);		//Boit la potion et affecte les effets de celle-ci sur le personnage
var
	pot:typePotion;

begin
	potbis(pot);
	personnage.hp:=personnage.hp+pot.hp;
	personnage.epee:=personnage.epee+pot.attaque;
	personnage.armure:=personnage.armure+pot.def;
	personnage.fuite:=personnage.fuite+pot.fuite;
	writeln('Vous buvez une ',pot.nom);
	writeln('Elle vous confère quelques bonus');
	writeln('Votre attaque est buffé de ',pot.attaque,' vous avez maintenant ',personnage.epee);
	writeln('Votre défense est buffé de ',pot.def,' vous avez maintenant ',personnage.armure);
	writeln('Votre fuite est buffé de ',pot.fuite,' vous avez maintenant ',personnage.fuite);
	writeln('Votre vie est buffé de ',pot.hp,' vous avez maintenant ',personnage.hp)


end;



procedure cave(var personnage:typepersonnage);		//contient la cave

var
	sortie:Boolean;		//sortie de voucle qui dit quand sortir de la cave
  choix:Integer;
begin
	sortie:=TRUE;
	writeln('Vous penetrez dans cette pièce sombre qui se trouvait sous ce tapis');
	while sortie do
	begin
		writeln('Vous êtes dans la cave');
		writeln('Vous trouvez des alembics, voulez vous boire une potion ? ');
		writeln('1 : tester une potion');
		writeln('2 : sortir de cette cave');
		readln(choix);
		effacerEcran;
		case choix of
			1:potion(personnage)
			else
				begin
					writeln('Vous avez décidez de sortir de cette cave');
					sortie:=FALSE
				end;

		end;
	end;


end;





end.
