unit PersonnageUnit;

interface
const

  HP_MAX = 100;

type
		typehp = 0..HP_MAX;		//Correspond au type hp que peut avoir le personnage
		typepiece = Integer;	//Correspond au type  pièce que peut avoir le joueur
		typeEpee = 0..3;			//Correspond au type d'épée qu'a le joueur
		typeArmure = 0..3;		//Correspond au type de l'armure qu'a le joueur
		typeFuite = 0..10;		//Correspond au type l'équipement de fuite du joueur
		typepioche = 0..3;		//Correspond au type de pioche du joueur
		typehache = 0..3;			//correspond au type de hache du joueur
		typebois = Integer;		//Correspond au type de bois
		typePierre = Integer;		//Correspond au type de pierre
		typeFer = Integer;		//Correpond au type de fer


    typemob= record
      hp:Integer;
      attaque:Integer;
      nom:String;
      armure:Integer;
    end;



		typepersonnage = record 	//Correpond au type personnage, cela permet de mettre toutes les valeurs et de n'utiliser qu'une seule variable dans nos procedures, fonctions

		  hp:typehp;				//correspond au nombre d'hp du joueur
		  epee:typeEpee;			//correspond à la valeur d'attaque bonus du joueur donné par l'épée
		  armure:typeArmure;		//correspond à la valeur de l'armure donné par l'équipement du joueur
		  piece:typepiece;		//correspond au nombre de pièce qu'à la joueur sur lui
		  fuite:typeFuite;		//correspond à la valeur bonus de fuite qu'à le joueur
		  pioche:typepioche;		//correspond au type de pioche du joueur et permet de donné la valeur bonus lors de la récolte
		  hache:typehache;		//même chose qu'en haut mais avec la hache
		  orPerso:typepiece;  	//correspond au nombre de pièce du perso
		  pierre:typePierre;
		  fer:typeFer;
      bois:Integer;
      nbepeeBois:Integer;
			nbEpeePierre:Integer;
			nbEpeeFer:Integer;
			nbArmureCuir:Integer;
			nbArmureFer:Integer;
			nbArmureAcier:Integer;
			nbBotteCuir:Integer;
			nbBotteFer:Integer;
			nbBotteAcier:Integer;
      nom:String;
      lieu:String;
		end;

		typecoffre = record


			nbBois:Integer;
			nbPierre:Integer;
			nbFer:Integer;
			nbEpeeBois:Integer;
			nbEpeePierre:Integer;
			nbEpeeFer:Integer;
			nbArmureCuir:Integer;
			nbArmureFer:Integer;
			nbArmureAcier:Integer;
			nbBotteCuir:Integer;
			nbBotteFer:Integer;
			nbBotteAcier:Integer;

		end;


 procedure initialisationPerso(var personnage:typepersonnage);
 procedure initialisationCoffre(var coffre:typecoffre);

implementation
procedure initialisationPerso(var personnage:typepersonnage);
begin
      personnage.hp:= HP_MAX ;
		  personnage.epee:=1;
		  personnage.armure:=1;
		  personnage.fuite:=0;
		  personnage.pioche:=1;
		  personnage.hache:=1;
		  personnage.orPerso:=100;
		  personnage.pierre:=0;
		  personnage.fer:=0;
      personnage.bois:=0;
      personnage.nbepeeBois:=1;
		  personnage.nbEpeePierre:=0;
		  personnage.nbEpeeFer:=0;
		  personnage.nbArmureCuir:=1;
		  personnage.nbArmureFer:=0;
		  personnage.nbArmureAcier:=0;
		  personnage.nbBotteCuir:=0;
		  personnage.nbBotteFer:=0;
		  personnage.nbBotteAcier:=0;
end;



procedure initialisationCoffre(var coffre:typecoffre);
begin
  coffre.nbBois:=0;
  coffre.nbPierre:=0;
  coffre.nbFer:=0;
  coffre.nbEpeeBois:=0;
  coffre.nbEpeePierre:=0;
  coffre.nbEpeeFer:=0;
  coffre.nbArmureCuir:=0;
  coffre.nbArmureFer:=0;
  coffre.nbArmureAcier:=0 ;
  coffre.nbBotteCuir:=0;
  coffre.nbBotteFer:=0;
  coffre.nbBotteAcier:=0;
end;
end.

