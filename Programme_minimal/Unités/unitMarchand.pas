unit unitMarchand;



interface

uses PersonnageUnit,actionMine,gestionEcran,actionForet;

procedure venteAttaque(var personnage : typepersonnage);
procedure achatAttaque(var personnage : typepersonnage);
procedure achatDefense(var personnage : typepersonnage);
procedure venteDefense(var personnage : typepersonnage);
procedure venteFuite(var personnage : typepersonnage);
procedure achatFuite(var personnage : typepersonnage);
procedure venteRessource(var personnage : typepersonnage);
procedure contenuInventaire(var personnage: typepersonnage);
procedure marchand(var personnage : typepersonnage);
procedure foret(var personnage:typepersonnage);




implementation
procedure venteAttaque(var personnage : typepersonnage); // vente épée au marchand
var
	sortie: Boolean; // Condition de sortie
	choix: Integer; // Choix du joueur

begin
sortie := FALSE;

while not sortie do
	begin
		writeln('Que souhaitez vous vendre ?');    //
		writeln('1- Epée en bois ? ( 5Po )');      //  CHOIX
		writeln('2- Epée en pierre ? ( 10 Po )');  //    DU
		writeln('3- Epée en fer ? ( 15Po )');      //   JOUEUR
		writeln('4- Retourner en arrière');        //
		readln(choix);
    effacerEcran;

		case choix of

			1: begin
				if personnage.epee=1 then
					begin
						writeln('Vous vendez votre épée en bois, vous gagnez 5Po');
						personnage.orPerso:=personnage.orPerso+5;
						personnage.epee := 0;
					end

					else
						writeln('Vous ne disposez pas d''une épée en bois');

				end;

			2 :
        begin
				if personnage.epee=2 then
					begin
						writeln('Vous vendez votre épée en pierre, vous gagnez 10Po');
						personnage.orPerso:=personnage.orPerso+10;
						personnage.epee := 0;
					end
				else
					writeln('Vous ne disposez pas d''une épée en pierre');
        end;
			3 :
          begin
			      	if personnage.epee=3 then
					begin
						writeln('Vous vendez votre épée en fer, vous gagnez 15Po');
						personnage.orPerso:=personnage.orPerso+15;
						personnage.epee := 0;
					end

				else
					writeln('Vous ne disposez pas d''une épée en fer');

				end;

			4 :
        begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
          writeln('');
          writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
          writeln('vous vous demandez comment il a eu tout ça ...');
          writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
          writeln('1- Acheter ');
          writeln('2- Vendre');
          writeln('3- Sortir');
				end;
	end;

end;
end;



procedure achatAttaque(var personnage: typepersonnage);
var
	sortie: Boolean; // Condition de sortie
	choix: Integer; // Choix du joueur

begin
sortie := FALSE;

while not sortie do
	begin
		writeln('Que souhaitez vous acheter ?');
		writeln('1- Epée en bois ? ( 10Po )');
		writeln('2- Epée en pierre ? ( 20 Po )');
		writeln('3- Epée en fer ? ( 35Po )');
		writeln('4- Retourner en arrière');
    readln(choix);
    effacerEcran;
		case choix of

			1: begin
				if personnage.orPerso >= 10 then
					begin
						writeln('Vous achetez une épée en bois, vous perdez 10 Po');
						personnage.orPerso:=personnage.orPerso-10;
            if personnage.epee<1 then
						  personnage.epee := 1;

					end

					else
						writeln('Vous ne disposez pas des fonds suffisants ');
				end;

			2 : begin
				if personnage.orPerso >= 20 then
            begin
              writeln('Vous achetez une épée en pierre, vous perdez 20 Po');
              personnage.orPerso:=personnage.orPerso-10;
              if personnage.epee<2 then
                personnage.epee := 2;
            end

            else
              writeln('Vous ne disposez pas des fonds suffisants ');
        end;

			3 : begin
				if personnage.orPerso >= 35 then
            begin
              writeln('Vous achetez une épée en fer, vous perdez 35 Po');
              personnage.orPerso:=personnage.orPerso-10;
              if personnage.epee<3 then
                personnage.epee := 3;
            end

					else
						writeln('Vous ne disposez pas des fonds suffisants ');
				end;

			4 : begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
          writeln('');
          writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
          writeln('vous vous demandez comment il a eu tout ça ...');
          writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
          writeln('1- Acheter ');
          writeln('2- Vendre');
          writeln('3- Sortir');
				end;
	end;
  end;
end;



procedure venteDefense(var personnage : typepersonnage); // vente au marchand
var
	sortie: Boolean; // Condition de sortie
	choix: Integer; // Choix du joueur

begin
sortie := FALSE;

while not sortie do
	begin
		writeln('Que souhaitez vous vendre ?');
		writeln('1- Armure en cuir ? ( 5Po )');
		writeln('2- Armure en fer ? ( 15Po )');
		writeln('3- Armure en acier ? ( 25Po )');
		writeln('4- Retourner en arrière');
		readln(choix);
    effacerEcran;
		case choix of

			1: begin
				if personnage.armure = 1 then
					begin
						writeln('Vous vendez votre armure en cuir , vous gagnez 5Po');
						personnage.orPerso:=personnage.orPerso+5;
						personnage.armure := 0;
					end

					else
						writeln('Vous ne disposez pas d''une armure en cuir');

				end;

			2 :
      begin
				if personnage.armure=2 then
            begin
              writeln('Vous vendez votre armure en fer , vous gagnez 10Po');
              personnage.orPerso:=personnage.orPerso+10;
              personnage.armure := 0;
            end
				else
					writeln('Vous ne disposez pas d''une armure en fer');
      end;

			3 : begin
				if personnage.armure=3 then
					begin
						writeln('Vous vendez votre armure en acier , vous gagnez 15Po');
						personnage.orPerso:=personnage.orPerso+15;
						personnage.armure := 0;
					end

				else
					writeln('Vous ne disposez pas d''une armure en acier');

				end;

			4 : begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
          writeln('');
          writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
          writeln('vous vous demandez comment il a eu tout ça ...');
          writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
          writeln('1- Acheter ');
          writeln('2- Vendre');
          writeln('3- Sortir');
				end;
    end;
  end;
end;


procedure achatDefense(var personnage : typepersonnage); // vente au marchand
var
	sortie: Boolean; // Condition de sortie
	choix: Integer; // Choix du joueur

begin
sortie := FALSE;

while not sortie do
	begin
		writeln('Que souhaitez vous acheter ? ?');
		writeln('1- Armure en cuir ? ( 15Po )');
		writeln('2- Armure en fer ? ( 45Po )');
		writeln('3- Armure en acier ? ( 100Po )');
		writeln('4- Retourner en arrière');
		readln(choix);
    effacerEcran;
		case choix of

			1: begin
         if personnage.orPerso>=15 then

					begin
						writeln('Vous achetez une armure en cuir, vous perdez 15 Po');
						personnage.orPerso:=personnage.orPerso-15;
            if personnage.armure<1 then
						  personnage.armure := 1;
					end


					else
						writeln('Vous ne disposez pas des fonds suffisants ');
				end;


			2 : begin
				if personnage.orPerso>=45 then
					begin
						writeln('Vous achetez une armure en fer, vous perdez 45 Po');
						personnage.orPerso:=personnage.orPerso-45;
            if personnage.armure<2 then
					  	 personnage.armure := 2;
					end
				else
						writeln('Vous ne disposez pas des fonds suffisants ');
        end;
			3 : begin
				if personnage.orPerso>=100 then
					begin
						writeln('Vous achetez une armure en cuir, vous perdez 100 Po');
						personnage.orPerso:=personnage.orPerso-100;
            if personnage.armure<3 then
					   	personnage.armure := 3;
					end

				else
						writeln('Vous ne disposez pas des fonds suffisants ');

				end;

			4 : begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
          writeln('');
          writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
          writeln('vous vous demandez comment il a eu tout ça ...');
          writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
          writeln('1- Acheter ');
          writeln('2- Vendre');
          writeln('3- Sortir');
				end;
    end;
  end;
end;



procedure venteFuite(var personnage : typepersonnage);
var
	sortie: Boolean; // Condition de sortie
	choix: Integer; // Choix du joueur

begin
sortie := FALSE;

while not sortie do
begin
		writeln('Que souhaitez vous vendre ?');
		writeln('1- Bottes de cuir (5Po)');
		writeln('2- Bottes de fer ( 10 Po )');
		writeln('3- Bottes d''acier ( 15Po )');
		writeln('4- Retourner en arrière');
		readln(choix);
    effacerEcran;

		case choix of

			1: begin
				if personnage.fuite = 10 then
					begin
						writeln('Vous vendez vos bottes de cuir, vous gagnez 5Po');
						personnage.orPerso:=personnage.orPerso+5;
						personnage.fuite := 0;
					end

					else
						writeln('Vous ne disposez pas de bottes de cuir');
				end;

			2 :
      begin
				if personnage.epee=2 then
					begin
						writeln('Vous vendez vos bottes de fer, vous gagnez 10Po');
						personnage.orPerso:=personnage.orPerso+10;
						personnage.fuite := 0;
					end
				else
					writeln('Vous ne disposez pas de bottes de fer')
      end;

			3 :
      begin
				if personnage.epee=3 then
					begin
						writeln('Vous vendez vos bottes de acier, vous gagnez 15Po');
						personnage.orPerso:=personnage.orPerso+15;
						personnage.fuite := 0;
					end

				else
					writeln('Vous ne disposez pas de bottes d''acier');
      end;


			4 :
        begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
          writeln('');
          writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
          writeln('vous vous demandez comment il a eu tout ça ...');
          writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
          writeln('1- Acheter ');
          writeln('2- Vendre');
          writeln('3- Sortir');
				end;
    end;
  end;
end;

procedure achatFuite(var personnage:typepersonnage);
var
	sortie: Boolean; // Condition de sortie
	choix: Integer; // Choix du joueur

begin
sortie := FALSE;

while not sortie do
	begin
		writeln('Que souhaitez vous acheter ?');
		writeln('1- Bottes de cuir (15Po)');
		writeln('2- Bottes de fer ( 30 Po )');
		writeln('3- Bottes d''acier ( 45Po )');
		writeln('4- Retourner en arrière');
		readln(choix);
    effacerEcran;
		case choix of

			1: begin
          if personnage.orPerso >= 15 then
            begin
              writeln('Vous achetez des bottes de cuir, vous perdez 15 Po');
              personnage.orPerso:=personnage.orPerso-15;
              if personnage.fuite<10 then
                   personnage.fuite := 10;
            end

            else
              writeln('Vous ne disposez pas de fonds suffisants');
         end;

			2 :
        begin
          if personnage.orPerso >=30 then
            begin
              writeln('Vous achetez des bottes de fer, vous perdez  30');
              personnage.orPerso:=personnage.orPerso-30;
              if personnage.fuite<5 then
                  personnage.fuite := 5;
            end
				else
					writeln('Vous ne disposez pas des fonds suffisants');
        end;

			3 :
       begin
				if personnage.fuite=1 then
					begin
						writeln('Vous achetez des bottes d''acier, vous perdez 45Po ');
						personnage.orPerso:=personnage.orPerso-45;
            if personnage.fuite<1 then
					  	personnage.fuite := 1;
          end

				else
					writeln('Vous ne disposez pas des fonds suffisants');
      end;

			4 :
      begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
          writeln('');
          writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
          writeln('vous vous demandez comment il a eu tout ça ...');
          writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
          writeln('1- Acheter ');
          writeln('2- Vendre');
          writeln('3- Sortir');
      end;
    end;
  end;
end;


procedure contenuInventaire(var personnage:typepersonnage);

begin
	writeln('Vous avez : ',personnage.bois,'Unités de bois');
	writeln('Vous avez : ',personnage.pierre,'Unités de pierre');
	writeln('Vous avez : ',personnage.fer,'Unités de fer');

	case personnage.epee of
	0:
		begin
			writeln('Vous n''avez pas d''arme');
		end;
	1:
		begin
			writeln('Vous avez une épée en bois');
		end;
	2:
		begin
			writeln(' Vous avez une épée en pierre');
		end;
	3:
		begin
			writeln('Vous avez une épée en fer');
		end;
	end;

	case personnage.armure of
		0:
			begin
				writeln('Vous n''avez pas d''armure');
			end;
		1:
			begin
				writeln('Vous avez une armure en cuir');
			end;
		2:
			begin
				writeln('Vous avez une armure en fer');
			end;
		3:
			begin
				writeln('Vous avez une armure en acier');
			end;
  end;

	case personnage.fuite of
		0:
			begin
				writeln('Vous n''avez pas de bottes');
			end;
		1:
			begin
				writeln('Vous avez des bottes en cuir');
			end;

		2:
			begin
				writeln('Vous avez des bottes enacier');
			end;

		3:
			begin
				writeln('Vous avez des bottes en acier');
			end;
	end;
end;


procedure venteRessource(var personnage : typepersonnage);
var
	sortie: Boolean;
	choix: Integer;
	choixVenteRessource: Integer;

const
	PRIXBOIS = 1;
	PRIXPIERRE = 1;
	PRIXFER = 1;
begin
	sortie := FALSE;
	contenuInventaire(personnage);
	writeln ('Que voulez vous vendre ?');
	writeln ('1- Bois (0.5Po/u)');
	writeln ('2- Pierre (0.5Po/u');
	writeln ('3- Fer (1Po/u)');


	while not sortie do
  begin
	readln(choix);
  effacerEcran;

		case choix of
			1: 	begin
            writeln('Combien voulez vous vendre d''unité de bois ? ');
            readln(choixVenteRessource);
            effacerEcran;
            if choixVenteRessource > personnage.bois then
              writeln('Vous n''avez pas cette quantité de bois, appuyez sur une touche pour continuer')

					else
          begin
              personnage.orPerso := personnage.orPerso + choixVenteRessource*PRIXBOIS;
              writeln('Vous vendez',choixVenteRessource,' bois, vous gagnez ',choixVenteRessource*PRIXBOIS,' Po.' );
              personnage.bois := personnage.bois - choixVenteRessource;
              writeln('Il vous reste', personnage.bois,' unité(s) de bois.');
          end;
        end;
			2: 	begin
            writeln('Combien voulez vous vendre d''unité de pierre ? ');
            readln(choixVenteRessource);
            effacerEcran;

            if choixVenteRessource > personnage.pierre then

              writeln('Vous n''avez pas cette quantité de pierre, appuyez sur une touche pour continuer')

            else
              begin
                  personnage.orPerso := personnage.orPerso + choixVenteRessource*PRIXPIERRE;
                  writeln('Vous vendez',choixVenteRessource,' pierre, vous gagnez ',choixVenteRessource*PRIXPIERRE,' Po' );
                  personnage.pierre := personnage.pierre - choixVenteRessource;
                  writeln('Il vous reste', personnage.bois,' unité(s) de pierre.');
               end;
         end;

			3: 	begin
					writeln('Combien voulez vous vendre d''unité de fer ? ');
					readln(choixVenteRessource);
          effacerEcran;
					if choixVenteRessource > personnage.fer then
						writeln('Vous n''avez pas cette quantité de fer, appuyez sur une touche pour continuer')

					else
						personnage.orPerso := personnage.orPerso + choixVenteRessource*PRIXFER;
						writeln('Vous vendez',choixVenteRessource,' fer, vous gagnez ',choixVenteRessource*PRIXFER,' Po.' );
						personnage.fer := personnage.fer - choixVenteRessource;
						writeln('Il vous reste', personnage.fer,' unité(s) de fer. ');


		end;
  end;
end;

while not sortie do
	begin
		writeln('Que souhaitez vous acheter ? ?');
		writeln('1- Bottes de cuir ? ( 15 Po )');
		writeln('2- Bottes de fer ? ( 40 Po)');
		writeln('3- Bottes de acier ? ( 120 Po )');
		writeln('4- Retourner en arrière');
		readln(choix);

		case choix of

			1: begin

					begin
            if personnage.orPerso >= 15 then
            begin

              writeln('Vous achetez des bottes de cuir, vous perdez 15 Po');
              personnage.orPerso:=personnage.orPerso-15;
              personnage.fuite :=10;
				  	end

					else
						writeln('Vous ne disposez pas des fonds suffisants ');
          end;
				end;

			2 :
      begin
				if personnage.orPerso>=40 then
					begin
						writeln('Vous achetez des bottes de fer, vous perdez 40 Po');
						personnage.orPerso:=personnage.orPerso-40;
						personnage.fuite :=5;
					end
				else
						writeln('Vous ne disposez pas des fonds suffisants ');
      end;

			3 : begin
				if personnage.orPerso>=120 then
					begin
						writeln('Vous achetez des bottes d''acier, vous perdez 120 Po');
						personnage.orPerso:=personnage.orPerso-120;
						personnage.fuite :=1;
					end

				else
						writeln('Vous ne disposez pas des fonds suffisants ');

				end;

			4 : begin
					sortie:=TRUE;
					writeln('Vous changez d''étalage');
				end;
    end;
  end;
end;


procedure marchand (var personnage:typepersonnage);
var
	choix: Integer; // choix de l utilisateur
	sortie : Boolean; // condition de sortie
  choixBis:Integer;
begin
	sortie := FALSE;
	writeln('Vous regardez l''étalage du marchand, celui-ci est plein de différents objets, ');
	writeln('vous vous demandez comment il a eu tout ça ...');
	writeln('Il vous sourit à pleines dents et vous demande "Qu''est ce qui vous intéresse ? "');
	writeln('1- Acheter ');
	writeln('2- Vendre');
	writeln('3- Sortir');


while not sortie do
begin
readln(choix);
effacerEcran;
	case choix of
		1:
		begin
      writeln('Vous voulez vous défendre ? attaquer ? ou courir ? (comme une fillette)');
      writeln('1- Attaquer');
      writeln('2- Défendre');
      writeln('3- Courir');
      readln(choix);

      case choix of
          1:
            begin
              achatAttaque(personnage);
            end;
          2:
            begin
              achatDefense(personnage);
            end;
          3:
            begin
              achatFuite(personnage);
		        end;
      end;
    end;

		2:
		begin
    writeln('Que voulez vous vendre ? ');
      writeln('1- Epée');
      writeln('2- Armure');
      writeln('3- Bottes');
      writeln('4- Vos ressources');
      readln(choix);
      effacerEcran;

      case choix of
      1:	venteAttaque(personnage);
			2:  venteDefense(personnage);
			3:  venteFuite(personnage);
      4:  venteRessource(personnage);

		  end;
    end;
		3:
		begin
			sortie := TRUE;
		end;
  end;

end;
end;

procedure foret(var personnage:typepersonnage);



var
	entrerMine: Boolean;
	choix:Integer;
	sortie:Boolean;



begin
  sortie:=TRUE;
	writeln('Vous pénétrez dans la forêt');
			while sortie do
				begin
					writeln('Vous êtes à dans la forêt, vous voyez un marchand ambulant');
					writeln('Trois choix s''offre à vous');
					writeln('1 : parler au marchand qui se trouve là');
					writeln('2 : récolter du bois');
					writeln('3 : sortir de la forêt');
					readln(choix);
          effacerEcran;
					case choix of
						1:marchand(personnage);
						2:recolterBois(personnage);
						3:sortie:=FALSE
						else  writeln('Vous avez entré une valeur interdite, pour la peine vous quittez la foret et retournez chez vous')

					end;

				end;
    end;

end.
