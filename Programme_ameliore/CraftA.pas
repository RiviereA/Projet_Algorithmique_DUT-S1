unit CraftA;

interface
uses
  gestionEcran,PersonnageUnitA;
procedure craft(var personnage:typepersonnage);

implementation



procedure craftEpee(var personnage:typepersonnage);		//craft les épees

var
	choix: Integer;				//contient ke choix du perso sur le craft d'épee

begin
	writeln('Quelle epee voulez vous crafter');
	writeln('1 : epee en bois');
	writeln('2 : epee en fer');
	writeln('3 : epee en pierre');
	writeln('4 : epee du roi');
	readln(choix);
	EffacerEcran;
	case choix of
		1: 	begin
				writeln('Il vous faut 5 bois pour crafter cette épée');
				if personnage.bois>=5 then
					begin
						personnage.bois:=personnage.bois-5;
						personnage.nbEpeeBois:=personnage.nbEpeeBois+1;
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Vous avez maintenant ', personnage.nbEpeeBois,' épée en bois dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
				if personnage.epee<1 then
					personnage.epee:=1;
			end;
		2:begin
				writeln('Il vous faut 10 fer pour crafter cette épée');
				if personnage.fer>=10 then
					begin
						personnage.fer:=personnage.fer-10;
						personnage.nbEpeeFer:=personnage.nbEpeeFer+1;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Vous avez maintenant ', personnage.nbEpeeFer,' épée en fer dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
      if personnage.epee<2 then
					personnage.epee:=2;
			end;
		3:begin
				writeln('Il vous faut 15 pierre et 10 de bois pour crafter cette épée');
				if (personnage.pierre>=15) and (personnage.bois>=10) then
					begin
						personnage.pierre:=personnage.pierre-15;
						personnage.bois:=personnage.bois-10;
						personnage.nbEpeePierre:=personnage.nbEpeePierre+1;
						writeln('Il vous reste ', personnage.pierre,' unités de pierre');
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Vous avez maintenant ', personnage.nbEpeePierre,' épée en pierre dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
      if personnage.epee<3 then
					personnage.epee:=3;
			end;
		4:begin
				writeln('Il vous faut 40 fers, 50 pierre,50 de bois et 30 charme pour crafter cette épée');
				if (personnage.fer>=40) and (personnage.bois>=50) and (personnage.pierre>=50) and (personnage.charme>=30)  then
					begin
						personnage.fer:=personnage.fer-40;
						personnage.bois:=personnage.bois-50;
						personnage.pierre:=personnage.pierre-50;
						personnage.charme:=personnage.charme-30;
						personnage.nbEpeeRoi:=personnage.nbEpeeRoi+1;
						if personnage.nbEpeeRoi<1 then
							begin
								personnage.hp:=personnage.hp+100;
								personnage.epee:=personnage.epee+15;
								personnage.armure:=personnage.armure+10;
							end;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Il vous reste', personnage.charme,' unités de charme');
						writeln('Il vous reste', personnage.pierre,' unités de pierre');
						writeln('Vous avez maintenant ', personnage.nbEpeeRoi,' épée du Roi dans votre inventaire')
					end
				else writeln('Pas assez de ressources')
		end;
	end;
end;

procedure craftArmure(var personnage:typepersonnage);

var
	choix: Integer;		//contient le choix du héros sur son craft

begin
	writeln('Quelle armure voulez vous crafter');
	writeln('1 : armure en cuir');
	writeln('2 : armure en fer');
	writeln('3 : armure en acier');
	readln(choix);
	EffacerEcran;
	case choix of
		1: 	begin
				  writeln('Il vous faut 5 Cuir pour crafter cette armure');
				if personnage.cuir>=5 then
					begin
						personnage.cuir:=personnage.cuir-5;
						personnage.nbArmureCuir:=personnage.nbArmureCuir+1;
						writeln('Il vous reste ', personnage.cuir,' unités de cuir');
						writeln('Vous avez maintenant ', personnage.nbArmureCuir,' armure en cuir dans votre inventaire')
					end
				else writeln('Pas assez de ressources');

			  if personnage.armure<1 then
					personnage.armure:=1;
      end;
		2:begin
				writeln('Il vous faut 10 fer pour crafter cette armure');
				if personnage.fer>=10 then
					begin
						personnage.fer:=personnage.fer-10;
						personnage.nbArmureFer:=personnage.nbArmureFer+1;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Vous avez maintenant ', personnage.nbArmureFer,' armure en fer dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
				if personnage.armure<2 then
					personnage.armure:=2;
			end;
		3:begin
				writeln('Il vous faut 15 fer et 10 de bois pour crafter cette armure');
				if (personnage.fer>=15) and (personnage.bois>=10) then
					begin
						personnage.fer:=personnage.fer-15;
						personnage.bois:=personnage.bois-10;
						personnage.nbArmureAcier:=personnage.nbArmureAcier+1;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Vous avez maintenant ', personnage.nbArmureAcier,' armure en acier dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
				if personnage.armure<3 then
					personnage.armure:=3;
		end;
		4:begin
				writeln('Il vous faut 40 fers, 50 pierre,50 de bois et 30 charme pour crafter cette armure');
				if (personnage.fer>=40) and (personnage.bois>=50) and (personnage.pierre>=50) and (personnage.charme>=30)  then
					begin
						personnage.fer:=personnage.fer-40;
						personnage.bois:=personnage.bois-50;
						personnage.pierre:=personnage.pierre-50;
						personnage.charme:=personnage.charme-30;
						personnage.nbArmureRoi:=personnage.nbArmureRoi+1;
						if personnage.nbArmureRoi<1 then
							begin
								personnage.hp:=personnage.hp+100;
								personnage.epee:=personnage.epee+15;
								personnage.armure:=personnage.armure+10;
							end;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Il vous reste', personnage.charme,' unités de charme');
						writeln('Il vous reste', personnage.pierre,' unités de pierre');
						writeln('Vous avez maintenant ', personnage.nbArmureRoi,' armure du Roi dans votre inventaire')
					end
				else writeln('Pas assez de ressources')
		end;
	end;

end;

procedure craftBotte(var personnage:typepersonnage);

var
	choix: Integer;		//contient le choix du héros sur son craft

begin
	writeln('Quelle botte voulez vous crafter');
	writeln('1 : botte en cuir');
	writeln('2 : botte en fer');
	writeln('3 : abotte en acier');
	readln(choix);
	EffacerEcran;
	case choix of
		{1: 	begin
				//rajoute le cuir par rapport à la chasse
			end;}
		2:begin
				writeln('Il vous faut 10 fer pour crafter cette botte');
				if personnage.fer>=10 then
					begin
						personnage.fer:=personnage.fer-10;
						personnage.nbBotteFer:=personnage.nbBotteFer+1;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Vous avez maintenant ', personnage.nbBotteFer,' épée en bois dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
				if personnage.fuite<1 then
					personnage.fuite:=1;
			end;
		3:begin
				writeln('Il vous faut 15 fer et 10 de bois pour crafter cette botte');
				if (personnage.fer>=15) and (personnage.bois>=10) then
					begin
						personnage.fer:=personnage.fer-15;
						personnage.bois:=personnage.bois-10;
						personnage.nbBotteAcier:=personnage.nbBotteAcier+1;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Vous avez maintenant ', personnage.nbBotteAcier,' épée en bois dans votre inventaire')
					end
				else writeln('Pas assez de ressources');
				if personnage.armure<5 then
					personnage.armure:=5;
		end;
		4:begin
				writeln('Il vous faut 40 fers, 50 pierre,50 de bois et 30 charme pour crafter cette armure');
				if (personnage.fer>=40) and (personnage.bois>=50) and (personnage.pierre>=50) and (personnage.charme>=30)  then
					begin
						personnage.fer:=personnage.fer-40;
						personnage.bois:=personnage.bois-50;
						personnage.pierre:=personnage.pierre-50;
						personnage.charme:=personnage.charme-30;
						personnage.nbArmureRoi:=personnage.nbBotteRoi+1;
						if personnage.nbBotteRoi<1 then
							begin
								personnage.hp:=personnage.hp+100;
								personnage.epee:=personnage.epee+15;
								personnage.armure:=personnage.armure+10;
							end;
						writeln('Il vous reste ', personnage.fer,' unités de fer');
						writeln('Il vous reste ', personnage.bois,' unités de bois');
						writeln('Il vous reste', personnage.charme,' unités de charme');
						writeln('Il vous reste', personnage.pierre,' unités de pierre');
						writeln('Vous avez maintenant ', personnage.nbBotteRoi,' botte du Roi dans votre inventaire')
					end
				else writeln('Pas assez de ressources')
		end;

end;
end;


procedure craft(var personnage:typepersonnage);

var
	choix: Integer;		//contient le choix du perso sur ce qu'il veut crafter
	sortie:Boolean;		//Cpermet de sortir de la table de craft

begin
	sortie:=TRUE;
	while sortie do
	begin
		writeln('Que voulez vus crafter ? ');
		writeln('1 : Epee ');
		writeln('2 : Armure');
		writeln('3 : Botte');
		writeln('0 : sortir');
		readln(choix);
		EffacerEcran;
		case choix of
			1:craftEpee(personnage);
			2:craftArmure(personnage);
			3:craftBotte(personnage);
			0:sortie:=FALSE
			else writeln('Commande non reconnue')
		end;
	end
end;

end.
