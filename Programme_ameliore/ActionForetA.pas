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
  writeln('vous avez maintenant ',personnage.bois,' unit�s de bois !');
  writeln('');
  if luck=2 then
  begin
    personnage.charme:=personnage.charme+1;
    writeln('vous �tes chanceux,vous avez trouv� du charme, un arbre aux propri�t�s magiques !! Vous poss�dez maintenant ',personnage.charme,' unit�(s) de charme');
    writeln('vous ne songeriez m�me pas � le laisser chez vous et encore moins � le revendre !'); 
    writeln('');
  end;


end;

procedure chasser(var personnage:typepersonnage);
var
  proie:Integer;// le nombre de proie qu'on a attrap�
  cuir:Integer; // le cuir que l'on r�colte sur les proies
begin
write('vous �tes un chasseur or pairs, et vous le savez, lorsque vous �tes en ext�rieur, et que ');
writeln('ce n''est pas contre une licorne, vous �tes plus dou�s qu''un gu�pard');
writeln('vous vous mettez donc � la recherche d''une proie');
proie:=random(3)+1;
cuir:=proie*2;
attendre(1000);
writeln('Bravo vous capturez ',proie,' proie(s) et r�coltez ',cuir,'unit�s de cuir');
personnage.cuir:=cuir;
end;
end.
