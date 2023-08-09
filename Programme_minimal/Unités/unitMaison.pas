unit unitMaison;

interface
  uses GestionEcran, PersonnageUnit,depot,retrait;

procedure maison(var personnage:typepersonnage;var coffre:typecoffre);
 procedure Dormir(var personnage:typepersonnage);
 procedure Fenêtre;
 procedure Depot(var personnage:typepersonnage;var coffre:typecoffre);
 procedure Retrait(var personnage:typepersonnage;var coffre:typecoffre);
 procedure accesCoffre(var personnage:typepersonnage;var coffre:typecoffre);

implementation

procedure maison(var personnage:typepersonnage;var coffre:typecoffre);

var
	choix:integer;
  	sortie:boolean;

begin
	  sortie:=true;
	  effacerEcran;
	  while sortie do
	  begin

		  writeln('Que souhaitez-vous faire ?');
		  writeln('1-Dormir');
		  writeln('2-Regarder dans votre coffre');
		  writeln('3-Regarder par la fenêtre');
		  writeln('4-Sortir de la maison');
		  readln(choix);
      effacerEcran;
	    case choix of
			1:begin
		        writeln('Vous allez vous couchez.');
		        Dormir(personnage);
	        end;
	      2:
	        begin
		        writeln('Vous vous dirigez vers votre coffre et l''ouvrez');
		        accesCoffre(personnage, coffre)
	        end;
	      3:
	      	begin
		        writeln('Vous vous dirigez vers la fenêtre.');
		        Fenêtre()
	      	end;
	      4:
	      	begin
		        writeln('Vous sortez de votre maison.');
		        sortie:=false;
	      	end;
	      else writeln('!!!Action non reconnu!!!')
	    end;
	  end;
end;



 procedure Dormir(var personnage:typepersonnage);

begin
  effacerEcran;
  writeln('Vous vous installez dans votre lit et dormez jusqu''à l''aube.');
  writeln('');
  writeln('(Astuce: Dormir dans votre lit régénère votre santé)');
  personnage.hp:=HP_MAX;
  write('.');
  attendre(1000);
  write('.');
  attendre(1000);
  writeln('.');
  writeln('');
  attendre(1000);
  writeln('Vous vous réveillez en pleine forme');
  readln
end;

procedure Fenêtre;

begin
  effacerEcran;
  writeln('Vous regarder par la fenêtre et vous voyez que le ciel est dégagé,');
  writeln('a vue première ce n''est pas prêt de changer.');
  writeln('Cette idée vous rend joyeux et vous vous sentez prêt à attaquer la journée.');
  writeln('');
  writeln('      ___________________');
  writeln('     |   _____    _____  |');
  writeln('     |  |     |  |     | |');
  writeln('     |  |     |  |     | |');
  writeln('     |  |     |  |     | |');
  writeln('     |  |_____|  |_____| |');
  writeln('     |   _____    _____  |');
  writeln('     |  |     |  |     | |');
  writeln('     |  |     |  |     | |');
  writeln('     |  |     |  |     | |');
  writeln('     |  |_____|  |_____| |');
  writeln('     |___________________|');
  writeln('');
  writeln('Vous vous éloignez de la fenêtre');
  readln;
end;

procedure Depot(var personnage:typepersonnage;var coffre:typecoffre);

var
  choix:integer;
  q:integer;
  sortie:boolean;

begin
  sortie:=true;
  while sortie do
  begin

    writeln('Que souhaitez-vous faire ?');
    writeln(' 1-Déposer du bois.');
    writeln(' 2-Déposer de la pierre.');
    writeln(' 3-Déposer du fer.');
    writeln(' 4-Déposer une épée.');
    writeln(' 5-Déposer une armure.');
    writeln(' 6-Déposer des bottes.');
    writeln(' 0-Sortir.');
    readln(choix);
    effacerEcran;
    case choix of
    1:depotBois(personnage,coffre);
    2:depotPierre(personnage,coffre);
    3:depotFer(personnage,coffre);
    4:depotEpee(personnage,coffre);
    5:depotArmure(personnage,coffre);
    6:depotBotte(personnage,coffre);
    0:sortie:=false
    else writeln('!!!Action non reconnue!!!')
    end;
  end;
end;

procedure Retrait(var personnage:typepersonnage;var coffre:typecoffre);

var
  choix:integer;
  q:integer;
  sortie:boolean;

begin
  sortie:=true;
  while sortie do
    begin

      writeln('Que souhaitez-vous faire ?');
      writeln(' 1-Retirer du bois.');
      writeln(' 2-Retirer de la pierre.');
      writeln(' 3-Retirer du fer.');
      writeln(' 4-Retirer une épée');
      writeln(' 7-Retirer une armure');
      writeln(' 6-Retirer des bottes');
      writeln(' 0-Sortir');
      readln(choix);
      effacerEcran;
      case choix of
            1:retraitBois(personnage,coffre);
            2:retraitPierre(personnage,coffre);
            3:retraitFer(personnage,coffre);
            4:retraitEpee(personnage,coffre);
            5:retraitArmure(personnage,coffre);
            6:retraitBotte(personnage,coffre);
            0:sortie:=false
            else writeln('!!!Action non reconnue!!!')
        end;
    end;
end;


procedure accesCoffre(var personnage:typepersonnage;var coffre:typecoffre);

var
  choix:integer;
  sortie:boolean;

begin
  sortie:=true;
  while sortie do
  begin
    effacerEcran;
    writeln('Que souhaitez-vous faire ?');
    writeln('1-Déposer');
    writeln('2-Retirer');
    writeln('3-Vous vous éloignez de votre coffre.');
    writeln('');
    writeln('   ________________________ ');
    writeln('  /                       /|');
    writeln(' /_______________________//|');
    writeln('|__________|_°_|_________|/|');
    writeln('|                        | /');
    writeln('|________________________|/ ');
    readln(choix);
    effacerEcran;
    case choix of
      1:begin
      Depot(personnage, coffre);
      end;
      2:begin
      Retrait(personnage, coffre);
      end;
      3:begin
      writeln('Vous fermez votre coffre');
      sortie:=false
      end;
      else writeln('!!!Action non reconnue!!!')
    end;
  end;
end;

end.

