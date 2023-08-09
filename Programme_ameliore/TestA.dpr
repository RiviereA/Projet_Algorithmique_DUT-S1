program TestA;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  EcranA,
  actionForetA,
  ActionMineAmelioree,
  DepotA,
  GestionEcran,
  PersonnageUnitA,
  RetraitA,
  unitMaisonA,
  unitMarchandA,
  FreudUnitA,
  CraftA,
  cavePot,
  combatUnitAmelioree;

var
  personnage:Typepersonnage;
  coffre:Typecoffre;
  choix:Integer;

begin
  randomize;
  initialisationPerso(personnage);
  initialisationCoffre(coffre);
  premierChoix(personnage,coffre);
end.

