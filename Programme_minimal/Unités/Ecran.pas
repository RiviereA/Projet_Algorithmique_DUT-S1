unit Ecran;

interface
uses
  System.SysUtils,
  unitMarchand,
  PersonnageUnit,
  GestionEcran,
  Fight,
  unitMaison,
  depot,
  retrait,
  actionMine;

//procedure premierChoix(choix : Integer);

procedure histoire();
procedure lieuIntermediaire(var personnage : typepersonnage ;var coffre:typecoffre);
procedure premierChoix(var personnage:typepersonnage;var  coffre: typecoffre);


implementation
procedure premierChoix(var personnage:typepersonnage;var coffre : typecoffre);
var
	pseudo: string;
  sortie: Boolean;
  choix:Integer;



begin
	sortie := TRUE;
	writeln(' /$$$$$$$$ /$$$$$$$$ /$$      /$$');
	writeln('| $$_____/|__  $$__/| $$  /$ | $$');
	writeln('| $$         | $$   | $$ /$$$| $$');
	writeln('| $$$$$      | $$   | $$/$$ $$ $$');
	writeln('| $$__/      | $$   | $$$$_  $$$$');
	writeln('| $$         | $$   | $$$/ \  $$$');
	writeln('| $$         | $$   | $$/   \  $$');
	writeln('|__/         |__/   |__/     \__/');
	writeln('');
	writeln('');
	writeln('appuyez sur une touche pour continuer');
	readln;
	effacerEcran;
	writeln(' Quel est votre nom ?');
	readln(pseudo);
	personnage.nom := pseudo;
	effacerEcran;

	while  sortie do
	begin
    writeln(' Bien le bonjour ',pseudo,' que voulez vous faire ?');
    writeln('1- JOUER !!!');
    writeln('2- Quitter ');
    readln(choix);
    effacerEcran;
  case choix of
    1:
    begin
      histoire();
      lieuIntermediaire(personnage,coffre);
    end;
    2: sortie := FALSE ;
  end;
  end;

end;

procedure histoire();
begin
	writeln('Vous vous retrouvez au beau milieu d''une forêt, le seul souvenir que vous avez, c''est celui de votre maison, un petit chalet rustique');
	writeln('Tel tout bon stakanoviste, une furieuse envie d''aller miner vous taraude');
	writeln('Vous êtes parfaitement seul dans la forêt, il faudrait que vous trouviez un peu d''équipement, vous vous sentez un peu a nu dans ce monde qui a l''air si peu accueillant...');
	writeln(' ( appuyer sur une touche pour continuer )');
	readln;
	effacerEcran;

end;


procedure lieuIntermediaire(var personnage:typepersonnage;var coffre:typecoffre);

var
  choix: Integer;
  sortie: Boolean;
begin
initialisationPerso(personnage);
initialisationCoffre(coffre);
sortie :=TRUE;
while sortie do
begin
writeln('Que voulez vous faire ? ');

			writeln('1 : aller à la maison');
			writeln('2 : aller à la mine');
			writeln('3 : aller à la forêt');
			writeln('0 : quitter la partie');
			Readln(choix);
      effacerEcran;
			case choix of
				1:maison(personnage,coffre);
				2:mine(personnage);
				3:foret(personnage);
				0:sortie:=FALSE
				else writeln('commande invalide');
          effacerecran;
		end;
end;
end;



end.

