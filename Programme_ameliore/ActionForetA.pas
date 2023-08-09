unit ActionForetA;

interface
uses
  PersonnageUnitA,GestionEcran;

procedure recolterBois(var personnage:typepersonnage);
procedure chasser(var personnage:typepersonnage);


implementation

procedure recolterBois(var personnage:typepersonnage);
var
  luck:Integer;
begin
  luck:=random(5)+1;
	personnage.bois:=personnage.bois + random(4);
  writeln('vous avez maintenant ',personnage.bois,' unités de bois !');
  writeln('');
  if luck=2 then
  begin
    personnage.charme:=personnage.charme+1;
    writeln('vous êtes chanceux,vous avez trouvé du charme, un arbre aux propriétés magiques !! Vous possédez maintenant ',personnage.charme,' unité(s) de charme');
    writeln('vous ne songeriez même pas à le laisser chez vous et encore moins à le revendre !'); 
    writeln('');
  end;


end;

procedure chasser(var personnage:typepersonnage);
var
  proie:Integer;// le nombre de proie qu'on a attrapé
  cuir:Integer; // le cuir que l'on récolte sur les proies
begin
write('vous êtes un chasseur or pairs, et vous le savez, lorsque vous êtes en extérieur, et que ');
writeln('ce n''est pas contre une licorne, vous êtes plus doués qu''un guépard');
writeln('vous vous mettez donc à la recherche d''une proie');
proie:=random(3)+1;
cuir:=proie*2;
attendre(1000);
writeln('Bravo vous capturez ',proie,' proie(s) et récoltez ',cuir,'unités de cuir');
personnage.cuir:=cuir;
end;
end.
