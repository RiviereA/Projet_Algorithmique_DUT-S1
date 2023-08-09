unit FreudUnitA;

interface

uses
	PersonnageUnitA,gestionEcran,combatUnitAmelioree;


procedure combattreFreud(var personnage:typepersonnage;var mob:typemob;var jouer:Boolean);
procedure affichageFreud();
procedure equipementFreud(var personnage:typepersonnage);


implementation
procedure equipementFreud(var personnage:typepersonnage);
begin
  personnage.epeeFreud:=1;
  personnage.armureFreud:=1;
  personnage.botteFreud:=1;
  personnage.armure:=150;
  personnage.epee:=150;
  personnage.hpMax:=1500;
  personnage.hp:=personnage.hpMax;
end;


procedure combattreFreud(var personnage:typepersonnage; var mob:typemob; var jouer:Boolean);


var
  degatDuPerso: Integer;         //variable de type entier, qui contient en premier les dégats du perso
  sortie:Boolean;
  chanceAttaque:Integer;
  degatInflige:Integer;

 begin
 				sortie:=TRUE;
                while sortie do
                begin

             			writeln('Vous ne pouvez pas fuir vous êtes obligé d''attaquer');
             			writeln('Appuyez sur une touche pour attaquer');
             			readln;
                		chanceAttaque:=random(100)+1;
		                case chanceAttaque of
		                1:	begin
				               	writeln('Freud la petite licorne arrive à vous toucher, vous n''avez pas réussie à esquiver son attaque');
				                writeln('Il vous inflige ',mob.attaque, 'points de dégats');
				                writeln('Il vous a tué');
				                personnage.hp:=personnage.hp-mob.attaque;
				                sortie:=FALSE;
				                jouer:=FALSE;
                        personnage.freud:=FALSE;

				            end;
				        else	begin
				        			if mob.hp>0 then
					        			begin
						        			degatInflige:=degatPerso(personnage);
						        			writeln('Vous infligez ',degatInflige,' point de dégats à Freud la petite licorne');
						        			mob.hp:=mob.hp-degatInflige;
						        			writeln('Il reste ',mob.hp,' points de vie à Freud la petite licorne')
					        			end
					        		else
					        			begin
					        				writeln('Vous avez gagnez le combat contre Freud et avez gagnez tous ses equipements, que vous ne pouvez vendre');
					        				jouer:=TRUE;
					        				personnage.freud:=FALSE;
                          equipementFreud(personnage);
                          sortie:=FALSE
					        			end;

				        		end;
				        end;
		        end;
end;


procedure affichageFreud();
begin

			writeln('Freud se réveille et semble très mal en point. Vous essayez de le soulagé en lui passant de l''eau sur la tête mais rien n''y fait');
			writeln('Soudain il se tord de douleur, vous ne savez que faire et partez chercher de l''eau chez vous');
			writeln('Tout d''un coup vous entendez un hurlement, à vous glacer le sang, vous courez retrouvez Freud mais la seul chose que vous trouvez c''est un Licorne inter dimensionelle');
			writeln('\.													');attendre(100);
			writeln(' \\      .                                         ');attendre(100);
			writeln('  \\ _,.+;)_                                       ');attendre(100);
			writeln('  .\\;~%:88%%.                                     ');attendre(100);
			attendre(100);
			writeln(' (( a   `)9,8;%.                                   ');attendre(100);
			writeln(' /`   _) '' `9%%%?                                 ');attendre(100);
			writeln('('' .-'' j    ''8%%''                              ');attendre(100);
			writeln(' `"+   |    .88%)+._____..,,_   ,+%$%.             ');attendre(100);
			writeln('       :.   d%9`             `-%*''"''~%$.         '); attendre(100);
			attendre(100);
			writeln('    ___(   (%C                 `.   68%%9          '); attendre(100);
			writeln('  ."        \7                  ;  C8%%)`          ');attendre(100);
			writeln('  : ."-.__,''.____________..,`   L.  \86'' ,       ');attendre(100);
			writeln('  : L    : :            `  .''\.   ''.  %$9%)      ');attendre(100);
			writeln('  ;  -.  : |             \  \  "-._ `. `~"         ');
			attendre(100);
			writeln('   `. !  : |              )  >     ". ?            ');attendre(100);
			writeln('     `''  : |            .'' .''       : |         '); attendre(100);
			writeln('         ; !          .'' .''         : |          '); attendre(100);
			writeln('        ,'' ;         '' .''           ; (         ');attendre(100);
			attendre(100);
			writeln('       .  (         j  (            `  \           ');attendre(100);
			writeln('       """''          ""''             `""         ');attendre(100);

end;

end.
