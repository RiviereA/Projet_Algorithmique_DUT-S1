unit retrait;

interface

	uses GestionEcran, PersonnageUnit;

	procedure retraitBois(var personnage:typepersonnage;var coffre:typecoffre);
	procedure retraitPierre(var personnage:typepersonnage;var coffre:typecoffre);
	procedure retraitFer(var personnage:typepersonnage;var coffre:typecoffre);
	procedure retraitEpee(var personnage:typepersonnage; var coffre:typecoffre);
	procedure retraitArmure(var personnage:typepersonnage;var coffre:typecoffre);
	procedure retraitBotte(var personnage:typepersonnage;var coffre:typecoffre);






implementation

procedure retraitBois(var personnage:typepersonnage;var coffre:typecoffre);

var
  q:Integer;

begin
                writeln('Il y a ',coffre.nbBois,' unité(s) de bois.');
                writeln('Combien souhaitez vous en retirer ?');
                readln(q);
                if q>coffre.nbBois then
                  writeln('Il n''y a pas cette quantité de bois.')
                else
                  begin
                    coffre.nbBois:=coffre.nbBois-q;
                    personnage.bois:=personnage.bois+q;
                    writeln('vous avez maintenant ',personnage.bois,' unités de bois');
                  end;
end;

procedure retraitPierre(var personnage:typepersonnage;var coffre:typecoffre);

var
  q: Integer;   //contient le nombre de matière à déposer

begin
                writeln('Il y a ',coffre.nbPierre,' unité(s) de pierre.');
                writeln('Combien souhaitez vous en retirer ?');
                readln(q);
                if q>coffre.nbPierre then
                  writeln('Il n''y a pas cette quantité de pierre.')
                else
                  begin
                    coffre.nbPierre:=coffre.nbPierre-q;
                    personnage.pierre:=personnage.pierre+q;
                  end;
end;


procedure retraitFer(var personnage:typepersonnage;var coffre:typecoffre);

var
  q: Integer;   //contient le nombre de matière à déposer

begin
                writeln('Il y a ',coffre.nbFer,' unité(s) de fer.');
                writeln('Combien souhaitez vous en retirer ?');
                readln(q);
                if q>coffre.nbFer then
                  writeln('Il n''y a pas cette quantité de fer.')
                else
                begin
                  coffre.nbFer:=coffre.nbFer-q;
                  personnage.fer:=personnage.fer+q;
                end;
end;

procedure retraitEpee(var personnage:typepersonnage; var coffre:typecoffre);

var
choix:Integer;      //choisis ce qu'il faut faire,entier
q:Integer;          //contient la quantité à retirer

begin
  writeln('Quel type d''épée ?');
      writeln(' 1-Epée en bois.');
      writeln(' 2-Epée en pierre.');
      writeln(' 3-Epée en fer.');
      readln(choix);
      case choix of
        1:begin
            writeln('Il y a ',coffre.nbepeeBois,' épée(s) de bois.');
            writeln('Combien souhaitez en retirer ?');
            readln(q);
            if q>coffre.nbEpeeBois then
              writeln('Il n''y a pas autant d''épées.')
            else
              begin
                coffre.nbEpeeBois:=coffre.nbEpeeBois-q;
                personnage.nbepeeBois:=personnage.nbepeeBois+q;
              end;
          end;
        2:begin
          writeln('Il y a ',coffre.nbEpeePierre,' épée(s) de pierre.');
          writeln('Combien souhaitez en retirer ?');
          readln(q);
          if q>coffre.nbepeePierre then
            writeln('Il n''y a pas autant d''épées.')
          else
            begin
              coffre.nbEpeePierre:=coffre.nbEpeePierre-q;
              personnage.nbepeePierre:=personnage.nbepeePierre+q;
            end;
          end;
        3:begin
          writeln('Il y a ',coffre.nbEpeeFer,' épée(s) de fer.');
          writeln('Combien souhaitez en retirer ?');
          readln(q);
          if q>coffre.nbepeeFer then
            writeln('Il n''y a pas autant d''épées.')
          else
            begin
              coffre.nbEpeeFer:=coffre.nbEpeeFer-q;
              personnage.nbepeeFer:=personnage.nbepeeFer+q;
            end;
        end;
        else writeln('!!!Action non reconnu!!!')
      end;
end;

procedure retraitArmure(var personnage:typepersonnage;var coffre:typecoffre);

var
choix:Integer;      //choisis ce qu'il faut faire,entier
q:Integer;          //contient la quantité à retirer

begin
      writeln('Quel type d''armure ?');
      writeln(' 1-Armure en cuir.');
      writeln(' 2-Armure en fer.');
      writeln(' 3-Armure en acier');
      readln(choix);
      case choix of
        1:begin
            writeln('Il y a ',coffre.nbArmureCuir,' armure(s) de cuir.');
            writeln('Combien souhaitez vous en retirer ?');
            readln(q);
            if q>coffre.nbArmureCuir then
              writeln('Il n''y a pas autant d''armures.')
            else
              begin
                coffre.nbArmureCuir:=coffre.nbArmureCuir-q;
                personnage.nbArmureCuir:=personnage.nbArmureCuir+q;
              end;
          end;
        2:begin
            writeln('Il y a ',coffre.nbArmureFer,' armure(s) de fer.');
            writeln('Combien souhaitez vous en retirer ?');
            readln(q);
            if q>coffre.nbArmureFer then
              writeln('Il n''y a pas autant d''armures.')
            else
              begin
                coffre.nbArmureFer:=coffre.nbArmureFer-q;
                personnage.nbArmureFer:=personnage.nbArmureFer+q;
              end;
          end;
        3:begin
            writeln('Il y a ',coffre.nbArmureAcier,' armure(s) d''acier.');
            writeln('Combien souhaitez vous en retirer ?');
            readln(q);
            if q>coffre.nbArmureAcier then
              writeln('Il n''y a pas autant d''armures.')
            else
              begin
                coffre.nbArmureAcier:=coffre.nbArmureAcier-q;
                personnage.nbArmureAcier:=personnage.nbArmureAcier+q;
              end;
          end;
        else writeln('!!!Action non reconnu!!!')
      end;
  end;

procedure retraitBotte(var personnage:typepersonnage;var coffre:typecoffre);

var
choix:Integer;      //choisis ce qu'il faut faire,entier
q:Integer;          //contient la quantité à retirer

begin
        writeln('Quel type de bottes ?');
        writeln(' 1-Bottes en cuir.');
        writeln(' 2-Bottes en fer.');
        writeln(' 3-Bottes en acier');
        readln(choix);
        case choix of
          1:begin
              writeln('Il y a ',coffre.nbBotteCuir,' paire(s) de bottes de cuir.');
              writeln('Combien souhaitez vous en retirer ?');
              readln(q);
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
              writeln('Combien souhaitez vous en retirer ?');
              readln(q);
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
              writeln('Combien souhaitez vous en retirer ?');
              readln(q);
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

