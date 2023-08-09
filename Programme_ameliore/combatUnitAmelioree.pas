unit combatUnitAmelioree;


interface

uses 
PersonnageUnitA,gestionEcran,ActionMineAmelioree;



function degatPerso(personnage:typepersonnage):Integer;                                 //calcul les degats du perso
function degatMob(mob:typemob):Integer;                                                            //calcul les dégats du mob
function parer(personnage:typepersonnage): Integer;                                    //calcul les dégats parés par le héros
function fuir(personnage:typepersonnage): Boolean;                                      //donne la valeur de vérité de la fuite, TRUE réussite et FALSE raté
procedure attaquer(var mob:typemob;var personnage:typepersonnage);                 //réalise la phase combat tour par tour
procedure defendre(var personnage:typepersonnage;mob:typemob);                                      //réalise la phase de défense du combat
procedure fuite(var personnage:typepersonnage;var sortie : Boolean;var entrerMine:Boolean;mob:typemob);  //réalise la phase fuite du combat
procedure combat(var personnage:typepersonnage;var mob:typeMob;var resCombat:Boolean);
procedure mineAmelioree(personnage:typepersonnage);

implementation
procedure mineAmelioree(personnage:typepersonnage);
var
	entrerMine: Boolean;
	choix:Integer;
	sortie:Boolean;
	aleatoire:Integer;
  mob:typemob;


begin
  mob.nom:='';
  mob.hp:=0;
  mob.attaque:=0;
  mob.armure:=0;
	aleatoire:=random(2)+1;
  sortie:=TRUE;
	writeln('Vous entrez actuellement dans la mine, un monstre apparaît devant vous et vous êtes obligé de le combattre');
	case aleatoire of
		1:	begin
				mob.nom:='Gobelin';
				mob.hp:=100;
				mob.attaque:=5;
				mob.armure:=5;
				combat(personnage,mob,entrerMine);
		  	end;
		2:	begin
				mob.nom:='Troll des Cavernes';
				mob.hp:=500;
				mob.attaque:=10;
				mob.armure:=10;
				combat(personnage,mob,entrerMine);
			end;
		3:	begin
				mob.nom:='Balrog';
				mob.hp:=1000;
				mob.attaque:=30;
				mob.armure:=30;
				combat(personnage,mob,entrerMine);

			end;
	end;
	if entrerMine=TRUE then
		begin
		while sortie do
			begin



				writeln('Après avoir vaincu le monstre, vous penetrez dans la mine');
				writeln('Trois choix s''offre à vous');
				writeln('1 : explorer la mine en esperant trouver votre bonheur');
				writeln('2 : récolter de la pierre, qui est présente en abondance ici');
				writeln('3 : sortir de la mine');
				readln(choix);
        effacerEcran;
				case choix of
					1:explorer(personnage);
					2:recolterPierre(personnage);
					3:sortie:=FALSE
					else
						begin
							writeln('Vous avez entré une valeur interdite, pour la peine vous quittez la mine et retourner chez vous')
						end;
				end;

			end;
		end

end;



function degatPerso(personnage:typepersonnage):Integer;

var
  degats:Integer;       //variable de type entière qui contient la valeur des dégats du personnage


begin
  randomize;
  
      degats:=(random(10)+personnage.epee);
      degatPerso:=degats;

end;




function degatMob(mob:typemob):Integer;


begin
  randomize;
  degatMob:=random(10)+ mob.attaque;

end;







function  parer(personnage:typepersonnage): Integer;

var
  baseParage:Integer;       //Contient la valeur de base de la parade, il est possible de tout faire en une ligne mais plus de lisibilité comme ça

begin
  randomize;
  baseParage:=random(5)+1;
  parer:=baseParage+personnage.armure;
  
end;






function fuir(personnage:typepersonnage): Boolean;

var
  fuiteEquipement:Integer;      //variable de type entier,contient la valeur de fuite du personnage après ajout du nombre aléatoire et du bonus du persos

begin
  randomize;
  fuiteEquipement:=random(101)+personnage.fuite;
  if fuiteEquipement>=90 then                       //Si taux de fuite supérieur à 75% alors fuir prend valeur TRUE sinon FALSE
    fuir:=TRUE
  else
    fuir:=FALSE
end;




procedure attaquer(var mob: typemob; var personnage:typepersonnage);



var
  degatDuPerso,degatDuMob: Integer;         //variable de type entier, qui contient en premier les dégats du perso et ensuite les dégats du mob
  

 begin
                degatDuPerso:=degatPerso(personnage)-mob.armure ;
                if degatDuPerso >= 0 then
                  begin
                    Writeln('Vous infligez ',degatDuPerso,' dégats à votre adversaire');
                    if degatDuPerso<mob.hp then
                      begin
                        mob.hp:=mob.hp-degatDuPerso;
                        writeln('Il reste ', mob.hp, 'points de vie au monstre');
                        degatDuMob:=degatMob(mob)-personnage.armure;
                        writeln('Le monstre vous inflige ', degatDuMob,' points de dégats');
                        if degatDuMob>personnage.hp then
                          personnage.hp:=0
                        else
                          personnage.hp:=personnage.hp-degatDuMob;
                        writeln('Il vous reste ', personnage.hp, ' points de vie');
                      end
                    else
                    begin
                      writeln('Vous avez gagné le combat!');
                      mob.hp:=mob.hp-degatDuPerso;
                    end;
                  end
                  else
                  begin
                    writeln('vous n''arrivez même pas à toucher le monstre');
                     degatDuMob:=degatMob(mob)-personnage.armure;
                        writeln('Le monstre vous inflige ', degatDuMob,' points de dégats');
                        if degatDuMob>personnage.hp then
                          personnage.hp:=0
                        else
                          personnage.hp:=personnage.hp-degatDuMob;
                        writeln('Il vous reste ', personnage.hp, ' points de vie');
                  end;
 end;

                    
                 

procedure defendre(var personnage:typepersonnage; mob:typeMob);

var

  degatSubi: Integer;               //Variable de type entier, qui contient la valeur des dégats subi par le perso pendant la phase de défense
  degatParer:Integer;               //Variable de type entier, qui contient la valeur des dégats parer par le héro pendant la phase de défense
begin
        degatParer:=parer(personnage);                                                
        degatSubi:=degatMob(mob)-degatParer;
        if degatSubi<0 then
          degatSubi:=0;
        writeln('Vous aves réussi à parer ',degatParer,' points de dégats venant du monstre');
        writeln('le monstre vous inflige donc ',degatSubi,' points de dégats');
        if degatSubi>personnage.hp then
          begin
            personnage.hp:=0;
            writeln('C''est trop pour vous et vous perdez le peu de points de vie qu''il vous reste')
            
          end
        else
        personnage.hp:=personnage.hp-degatSubi;
end;










procedure fuite(var personnage:typepersonnage;var sortie:Boolean;var entrerMine:Boolean;mob:typemob);

var 

  degat:Integer;            //Variable de type entier, qui contient les dégats du mob en cas de l'échec de la fuite


begin
  if fuir(personnage)=TRUE then
    begin
      writeln('Fuite réussie avec succès, la fuite étant éprouvante vous retourner à votre maison pour vous reposer.');
      entrerMine:=FALSE;                          //cette ligne veut dire que dans le programme appelant la fuite à réussi et donc le personnage va retourner dans sa maison
      sortie:=FALSE;
    end
  else
    begin
      writeln('La fuite à échouer, vous êtes obligés de continuer à combattre c''est horrible monstre');
      degat:=degatMob(mob);
      writeln('Le monstre vous inflige ', degat,' points de dégats');
      personnage.hp:=personnage.hp-degat;
      writeln('Il vous reste ', personnage.hp, ' points de vie');
    end;
end; 





procedure combat(var personnage:typepersonnage;var mob:typemob ;var resCombat:Boolean);

var

  choix:Integer;
  sortie:Boolean;
  


begin

  sortie:=TRUE;
  while sortie do
      begin
        Writeln('Le ',mob.nom,' est juste devant vous et vous nargue, que voulez vous faire ? ');
        Writeln('1 : Attaquer');
        writeln('2 : Défendre');
        writeln('3 : Fuir');
        readln(choix);
        effacerEcran;
        case choix of
          1:begin
                attaquer(mob,personnage);
                if personnage.hp=0 then
                  begin
                    writeln('Le monstre vous inflige plus de dégats que vous avez de points de vie, donc par conséquent vous avez ',personnage.hp,' points de vie');
                    writeln('Vous avez perdu le combat');
                    sortie:=false;
                    resCombat:=false
                  end
                else
                  begin
                    if mob.hp<=0 then
                      begin
                        writeln('Vous avez gagné le combat');
                        sortie:=false;
                        resCombat:=true;
                      end;
                  end;
                
             
            end;
          2:begin
              defendre(personnage,mob);
              if personnage.hp=0 then
                  begin
                    resCombat:=FALSE;
                    writeln('Vous avez perdu le combat, le monstre était trop fort pour vous')
                  end;
              writeln('Il vous reste alors ' ,personnage.hp,' points de vie' );
              writeln('Ayant choisi de défendre, le monstre ne perd pas points de vie et il lui reste donc ',mob.hp,' points de vie')
            end;
          3:fuite(personnage,sortie,resCombat,mob);
          else
            begin
              writeln('Vous avez choisi une action inexistante, pour avoir osé vous perdez le combat et retourner à votre maison. C''est pas bien du tout!!!!');
              sortie:=false;
              resCombat:=false;
            end;
        end;
      end; 
end;

end.

