unit DepotA;

interface
	uses GestionEcran, PersonnageUnitA;


procedure depotBois(var personnage:typepersonnage;var coffre:typecoffre);
procedure depotPierre(var personnage:typepersonnage;var coffre:typecoffre);
procedure depotFer(var personnage:typepersonnage;var coffre:typecoffre);
procedure depotEpee(var personnage:typepersonnage; var coffre:typecoffre);
procedure depotArmure(var personnage:typepersonnage;var coffre:typecoffre);
procedure depotBotte(var personnage:typepersonnage;var coffre:typecoffre);

implementation

procedure depotBois(var personnage:typepersonnage;var coffre:typecoffre);

var
  q:Integer;

begin
                writeln('Vous avez ',personnage.Bois,' unit�(s) de bois.');
                writeln('Combien souhaitez vous en deposer ?');
                readln(q);
                effacerEcran;
                if q>personnage.Bois then
                  writeln('Vous n''avez pas cette quantit� de bois.')
                else
                  begin
                    coffre.nbBois:=coffre.nbBois+q;
                    personnage.bois:=personnage.bois-q;
                    writeln('Il y a maintenant ', coffre.nbBois,' unit�s de bois dans le coffre.');
                    writeln('Vous avez maintenant ',personnage.bois,' unit�s de bois dans votre inventaire')
                  end;
end;

procedure depotPierre(var personnage:typepersonnage;var coffre:typecoffre);

var
  q: Integer;   //contient le nombre de mati�re � d�poser

begin
                writeln('Vous avez ',personnage.Pierre,' unit�(s) de pierre.');
                writeln('Combien souhaitez vous en deposer ?');
                readln(q);
                effacerEcran;
                if q>personnage.Pierre then
                  writeln('Vous n''avez pas cette quantit� de pierre.')
                else
                  begin
                    coffre.nbPierre:=coffre.nbPierre+q;
                    personnage.Pierre:=personnage.Pierre-q;
                    writeln('Il y a maintenant ', coffre.nbPierre,' unit�s de pierre dans le coffre.');
                    writeln('Vous avez maintenant ',personnage.pierre,' unit�s de pierre dans votre inventaire')
                  end;
end;


procedure depotFer(var personnage:typepersonnage;var coffre:typecoffre);

var
  q: Integer;   //contient le nombre de mati�re � d�poser

begin
                writeln('Vous avez ',personnage.Fer,' unit�(s) de fer.');
                writeln('Combien souhaitez vous en deposer?');
                readln(q);
                effacerEcran;
                if q>personnage.Fer then
                  writeln('Vous n''avez pas cette quantit� de fer')
                else
                begin
                  coffre.nbFer:=coffre.nbFer+q;
                  personnage.fer:=personnage.fer-q;
                  writeln('Il y a maintenant ', coffre.nbFer,' unit�s de fer dans le coffre.');
                  writeln('Vous avez maintenant ',personnage.fer,' unit�s de fer dans votre inventaire')
                end;
end;

procedure depotEpee(var personnage:typepersonnage; var coffre:typecoffre);

var
choix:Integer;      //choisis ce qu'il faut faire,entier
q:Integer;          //contient la quantit� � deposer

begin
  	  writeln('Quel type d''�p�e voulez vous d�poser ?');
      writeln(' 1-Ep�e en bois.');
      writeln(' 2-Ep�e en pierre.');
      writeln(' 3-Ep�e en fer.');
      readln(choix);
      effacerEcran;
      case choix of
        1:begin
            writeln('Vous avez ',personnage.nbEpeeBois,' �p�e(s) de bois.');
            writeln('Combien souhaitez vous en deposer ?');
            readln(q);
            effacerEcran;
            if q>personnage.nbEpeeBois then
              writeln('Vous n''avez pas autant d''�p�es.')
            else
              begin
                coffre.nbEpeeBois:=coffre.nbEpeeBois+q;
                personnage.nbepeeBois:=personnage.nbepeeBois-q;
                writeln('Il y a maintenant ',coffre.nbEpeeBois,' �p�e en bois dans le coffre');
                writeln('Vous avez maintenant ',personnage.nbEpeeBois,' �p�e en bois dans votre inventaire')
              end;
          end;
        2:begin
          writeln('Vous avez ',personnage.nbEpeePierre,' �p�e(s) de pierre.');
          writeln('Combien souhaitez vous en deposer ?');
          readln(q);
          effacerEcran;
          if q>personnage.nbEpeePierre then
            writeln('Vous n''avez pas autant d''�p�es.')
          else
            begin
              coffre.nbEpeePierre:=coffre.nbEpeePierre+q;
              personnage.nbepeePierre:=personnage.nbepeePierre-q;
              writeln('Il y a maintenant ',coffre.nbEpeePierre,' �p�e en pierre dans le coffre');
              writeln('Vous avez maintenant ',personnage.nbEpeePierre,' �p�e en pierre dans votre inventaire')
            end;
          end;
        3:begin
          writeln('Vous avez ',personnage.nbEpeeFer,' �p�e(s) de fer.');
          writeln('Combien souhaitez vous en deposer ?');
          readln(q);
          effacerEcran;
          if q>personnage.nbEpeeFer then
            writeln('Vous n''avez pas autant d''�p�es.')
          else
            begin
              coffre.nbEpeeFer:=coffre.nbEpeeFer+q;
              personnage.nbepeeFer:=personnage.nbepeeFer-q;
              writeln('Il y a maintenant ',coffre.nbEpeeFer,' �p�e en fer dans le coffre');
              writeln('Vous avez maintenant ',personnage.nbEpeeFer,' �p�e en fer dans votre inventaire')
            end;
        end;
        else writeln('!!!Action non reconnu!!!')
      end;
end;

procedure depotArmure(var personnage:typepersonnage;var coffre:typecoffre);

var
choix:Integer;      //choisis ce qu'il faut faire,entier
q:Integer;          //contient la quantit� � deposer

begin
      writeln('Quel type d''armure ?');
      writeln(' 1-Armure en cuir.');
      writeln(' 2-Armure en fer.');
      writeln(' 3-Armure en acier');
      readln(choix);
      effacerEcran;
      case choix of
        1:begin
            writeln('Vous avez ',personnage.nbArmureCuir,' armure(s) de cuir.');
            writeln('Combien souhaitez vous en deposer ?');
            readln(q);
            effacerEcran;
            if q>personnage.nbArmureCuir then
              writeln('Vous n''avez pas autant d''armures.')
            else
              begin
                coffre.nbArmureCuir:=coffre.nbArmureCuir-q;
                personnage.nbArmureCuir:=personnage.nbArmureCuir+q;
                writeln('Il y a maintenant ',coffre.nbArmureCuir,' armure en cuir dans le coffre');
                writeln('Vous avez maintenant ',personnage.nbArmureCuir,' armure en cuir dans votre inventaire')
              end;
          end;
        2:begin
            writeln('Vous avez',personnage.nbArmureFer,' armure(s) de fer.');
            writeln('Combien souhaitez vous en deposer ?');
            readln(q);
            effacerEcran;
            if q>personnage.nbArmureFer then
              writeln('Vous n''avez pas autant d''armures.')
            else
              begin
                coffre.nbArmureFer:=coffre.nbArmureFer-q;
                personnage.nbArmureFer:=personnage.nbArmureFer+q;
                writeln('Il y a maintenant ',coffre.nbArmureFer,' armure en fer  dans le coffre');
                writeln('Vous avez maintenant ',personnage.nbArmureFer,' armure en fer dans votre inventaire')
              end;
          end;
        3:begin
            writeln('Il y a ',personnage.nbArmureAcier,' armure(s) d''acier.');
            writeln('Combien souhaitez vous en deposer ?');
            readln(q);
            effacerEcran;
            if q>personnage.nbArmureAcier then
              writeln('Vous n''avez pas autant d''armures.')
            else
              begin
                coffre.nbArmureAcier:=coffre.nbArmureAcier-q;
                personnage.nbArmureAcier:=personnage.nbArmureAcier+q;
                writeln('Il y a maintenant ',coffre.nbArmureAcier,' armure d''acier dans le coffre');
                writeln('Vous avez maintenant ',personnage.nbArmureAcier,' armure d''acier dans votre inventaire')
              end;
          end;
        else writeln('!!!Action non reconnu!!!')
      end;
end;

procedure depotBotte(var personnage:typepersonnage;var coffre:typecoffre);

var
choix:Integer;      //choisis ce qu'il faut faire,entier
q:Integer;          //contient la quantit� � deposer

begin
        writeln('Quel type de bottes ?');
        writeln(' 1-Bottes en cuir.');
        writeln(' 2-Bottes en fer.');
        writeln(' 3-Bottes en acier');
        readln(choix);
        effacerEcran;
        case choix of
          1:begin
              writeln('Il y a ',coffre.nbBotteCuir,' paire(s) de bottes de cuir.');
              writeln('Combien souhaitez vous en deposer ?');
              readln(q);
              effacerEcran;
              if q>coffre.nbBotteCuir then
                writeln('Il n''y a pas autant de paires de bottes.')
              else
                begin
                  coffre.nbBotteCuir:=coffre.nbBotteCuir-q;
                  personnage.nbBotteCuir:=personnage.nbBotteCuir+q;
                end;
              end;
          2:begin
              writeln('Il y a ',coffre.nbBotteFer,' paire(s) de bottes de fer.');
              writeln('Combien souhaitez vous en deposer ?');
              readln(q);
              effacerEcran;
              if q>coffre.nbBotteFer then
                writeln('Il n''y a pas autant de paires de bottes.')
              else
                begin
                  coffre.nbBotteFer:=coffre.nbBotteFer-q;
                  personnage.nbBotteFer:=personnage.nbBotteFer+q;
                end;
            end;
          3:begin
              writeln('Il y a ',coffre.nbBotteAcier,' paire(s) de bottes d''acier.');
              writeln('Combien souhaitez vous en deposer ?');
              readln(q);
              effacerEcran;
              if q>coffre.nbBotteAcier then
                writeln('Il n''y a pas autant de paires de bottes.')
              else
                begin
                  coffre.nbBotteAcier:=coffre.nbBotteAcier-q;
                  personnage.nbBotteAcier:=personnage.nbBotteAcier+q;
                end;
            end;
          else
            writeln('!!!Action non reconnu!!!')
        end;
end;



end.

