unit Fight;


interface

uses
PersonnageUnit,actionMine,GestionEcran;



function degatPerso(personnage:typepersonnage):Integer;                                 //calcul les degats du perso
function degatMob():Integer;                                                            //calcul les d�gats du mob
function parer(personnage:typepersonnage): Integer;                                    //calcul les d�gats par�s par le h�ros
function fuir(personnage:typepersonnage): Boolean;                                      //donne la valeur de v�rit� de la fuite, TRUE r�ussite et FALSE rat�
procedure attaquer(var lifeMob:Integer;var personnage:typepersonnage);                 //r�alise la phase combat tour par tour
procedure defendre(var personnage:typepersonnage);                                      //r�alise la phase de d�fense du combat
procedure fuite(var personnage:typepersonnage;var sortie:Boolean;var sortie2:Boolean);  //r�alise la phase fuite du combat
procedure combat(var personnage:typepersonnage;var resCombat:Boolean);
procedure mine(var personnage:typepersonnage);

implementation
procedure mine(var personnage:typepersonnage);



var
	entrerMine: Boolean;
	choix:Integer;
	sortie:Boolean;



begin
sortie:=TRUE;
	writeln('Vous entrez actuellement dans la mine, un monstre appara�t devant vous et vous �tes oblig� de le combattre');
	combat(personnage,entrerMine);
	if entrerMine=TRUE then
		begin
			writeln('Apr�s avoir vaincu le monstre, vous penetrez dans la mine');
			while sortie do
				begin
					writeln('Vous �tes � dans la mine');
					writeln('Trois choix s''offre � vous');
					writeln('1 : explorer la mine en esperant trouver votre bonheur');
					writeln('2 : r�colter de la pierre, qui est pr�sente en abondance ici');
					writeln('3 : sortir de la mine');
					readln(choix);
          effacerEcran;
					case choix of
						1:explorer(personnage);
						2:recolterPierre(personnage);
						3:sortie:=FALSE
						else
              writeln('Vous avez entr� une valeur interdite, pour la peine vous quittez la mine et retourner chez vous')

					end;
        end;
    end;

end;


function degatPerso(personnage:typepersonnage):Integer;

var
  degats:Integer;       //variable de type enti�re qui contient la valeur des d�gats du personnage


begin
  randomize;

      degats:=(random(3)+1)+personnage.epee;
      degatPerso:=degats;

end;




function degatMob():Integer;


begin
  randomize;
  degatMob:=random(5)+1;

end;







function  parer(personnage:typepersonnage): Integer;

var
  baseParage:Integer;       //Contient la valeur de base de la parade, il est possible de tout faire en une ligne mais plus de lisibilit� comme �a

begin
  randomize;
  baseParage:=random(2)+1;
  parer:=baseParage+personnage.armure;

end;






function fuir(personnage:typepersonnage): Boolean;

var
  fuiteEquipement:Integer;      //variable de type entier,contient la valeur de fuite du personnage apr�s ajout du nombre al�atoire et du bonus du persos

begin
  randomize;
  fuiteEquipement:=random(101)+personnage.fuite;
  if fuiteEquipement>=90 then                       //Si taux de fuite sup�rieur � 75% alors fuir prend valeur TRUE sinon FALSE
    fuir:=TRUE
  else
    fuir:=FALSE
end;




procedure attaquer(var lifeMob:Integer; var personnage:typepersonnage);



var
  degatDuPerso,degatDuMob: Integer;         //variable de type entier, qui contient en premier les d�gats du perso et ensuite les d�gats du mob


 begin

                degatDuPerso:=degatPerso(personnage) ;
                Writeln('Vous infligez ',degatDuPerso,' d�gats � votre adversaire');
                lifeMob:=LifeMob-degatDuPerso;
               if lifeMob>0 then
                  begin
                    writeln('Il reste ', lifeMob, 'points de vie au monstre');
                    degatDuMob:=degatMob();
                    writeln('Le monstre vous inflige ', degatDuMob,' points de d�gats');
                    if degatDuMob>personnage.hp then
                      personnage.hp:=0
                    else
                      personnage.hp:=personnage.hp-degatDuMob;
                    writeln('Il vous reste ', personnage.hp, ' points de vie');
        end;
end;










procedure defendre(var personnage:typepersonnage);

var

  degatSubi: Integer;               //Variable de type entier, qui contient la valeur des d�gats subi par le perso pendant la phase de d�fense
  degatParer:Integer;               //Variable de type entier, qui contient la valeur des d�gats parer par le h�ro pendant la phase de d�fense
begin
        degatParer:=parer(personnage);
        degatSubi:=degatMob()-degatParer;
        if degatSubi<0 then
          degatSubi:=0;
        writeln('Vous aves r�ussi � parer ',degatParer,' points de d�gats venant du monstre');
        writeln('le monstre vous inflige donc ',degatSubi,' points de d�gats');
        if degatSubi>personnage.hp then
          begin
            personnage.hp:=0;
            writeln('C''est trop pour vous et vous perdez le peu de points de vie qu''il vous reste')

          end
        else
        personnage.hp:=personnage.hp-degatSubi;
end;










procedure fuite(var personnage:typepersonnage;var sortie:Boolean;var sortie2:Boolean);

var

  degat:Integer;            //Variable de type entier, qui contient les d�gats du mob en cas de l'�chec de la fuite


begin
  if fuir(personnage)=TRUE then
    begin
      writeln('Fuite r�ussie avec succ�s, la fuite �tant �prouvante vous retourner � votre maison pour vous reposer.');
      sortie:=FALSE;                          //cette ligne veut dire que dans le programme appelant, la boucle de combat va prendre fin
      sortie2:=FALSE                          //cette ligne veut dire que dans le programme appelant la fuite � r�ussi et donc le personnage va retourner dans sa maison se reposer
    end
  else
    begin
      writeln('La fuite � �chouer, vous �tes oblig�s de continuer � combattre c''est horrible monstre');
      degat:=degatMob();
      writeln('Le monstre vous inflige ', degat,' points de d�gats');
      personnage.hp:=personnage.hp-degat;
      writeln('Il vous reste ', personnage.hp, ' points de vie');
    end;
end;





procedure combat(var personnage:typepersonnage;var resCombat:Boolean);

var

  choix:Integer;
  lifeMob:Integer;
  sortie:Boolean;



begin
  sortie:=TRUE;
  lifeMob:=100;
  while sortie do
  begin
  Writeln('Le monstre se tient toujours devant vous, que voulez vous faire ? ');
  Writeln('1 : Attaquer');
  writeln('2 : D�fendre');
  writeln('3 : Fuir');
  readln(choix);
  effacerEcran;
  case choix of
    1:begin
          attaquer(lifeMob,personnage);
          if personnage.hp=0 then
            begin
              writeln('Le monstre vous inflige plus de d�gats que vous avez de points de vie, donc par cons�quent vous avez ',personnage.hp,' points de vie');
              writeln('Vous avez perdu le combat');
              sortie:=false;
              resCombat:=false
            end;
          if lifeMob<=0 then
            begin
              writeln('Vous avez gagn� le combat');
              writeln('');
              writeln('Vous gagnez 10Po');
              writeln('');
              personnage.orPerso := personnage.orPerso+10;
              sortie:=false;
              resCombat:=true;
            end;


      end;
    2:begin
        defendre(personnage);
        if personnage.hp=0 then
            begin
              resCombat:=FALSE;
              writeln('Vous avez perdu le combat, le monstre �tait trop fort pour vous')
            end;
        writeln('Il vous reste alors ' ,personnage.hp,' points de vie' );
        writeln('Ayant choisi de d�fendre, le monstre ne perd pas points de vie et il lui reste donc ',lifeMob,' points de vie')
      end;
    3:fuite(personnage,sortie,resCombat);
    else
      begin
        writeln('Vous avez choisi une action inexistante, pour avoir os� vous perdez le combat et retourner � votre maison. C''est pas bien du tout!!!!');
        sortie:=false;
        resCombat:=false;
      end;
end;
end;


end;
end.


