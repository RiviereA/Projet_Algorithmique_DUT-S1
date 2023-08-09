unit EcranA;

interface
uses
  System.SysUtils,
  unitMarchandA,
  PersonnageUnitA,
  GestionEcran,
  CombatUnitAmelioree,
  unitMaisonA,
  depotA,
  retraitA,
  ActionMineAmelioree,
  FreudUnitA;



procedure histoire();

procedure premierChoix(var personnage:typepersonnage;var  coffre: typecoffre);
procedure lieuIntermediaire(var personnage:typepersonnage;var coffre:typecoffre;var sortie2:Boolean);





implementation

procedure lieuIntermediaire(var personnage:typepersonnage;var coffre:typecoffre;var sortie2:Boolean);
var
	mobFreud: typemob;		//contient toutes les variables se rapportant au mob final
	jouer:Boolean;				//SI jamais le perso perd contre Freud, le jeu se termine car il n'a pas vaincu le boss final, si jamais il le bat il gagne le droit de continuer de jouer
  sortie:Boolean;
  choix:Integer;
begin
	jouer:=TRUE;

	while jouer do
	begin
  writeln('Vous arrivez dans une cour près de votre maison');
		if personnage.freud then
			begin
				affichageFreud();
				mobFreud.hp:=5000;
				mobFreud.nom:='Freud la petite licorne';
				mobFreud.attaque:=10000;
				mobFreud.armure:=50;
				combattreFreud(personnage,mobFreud,jouer);
			end
		else
			begin
						writeln('1 : aller à la maison');
						writeln('2 : aller à la mine');
						writeln('3 : aller à la forêt');
						writeln('0 : quitter la partie');
						Readln(choix);
            effacerEcran;
						case choix of
							1:maison(personnage,coffre);
							2:mineAmelioree(personnage);
							3:foret(personnage);
							0:	begin
									sortie2:=FALSE;
									jouer:=FALSE;
								end
							else
								writeln('commande invalide');
						end;
					end;
  end;




end;

procedure premierChoix(var personnage:typepersonnage;var coffre : typecoffre);
var
	pseudo: string;
  sortie,sortie2: Boolean;
  choix:Integer;



begin
	sortie := TRUE;
  sortie2:=TRUE;
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
    while sortie2 do
    begin

      lieuIntermediaire(personnage,coffre,sortie2);
    end;
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





end.

