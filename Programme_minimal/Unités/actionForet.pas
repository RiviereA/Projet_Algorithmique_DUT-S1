unit actionForet;

interface
uses
  PersonnageUnit,GestionEcran;

procedure recolterBois(var personnage:typepersonnage);


implementation

procedure recolterBois(var personnage:typepersonnage);

begin
	personnage.bois:=personnage.bois + random(4);
  writeln('vous avez maintenant ',personnage.bois,' unités de bois !');
  writeln('');


end;



end.
