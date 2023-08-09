program TEST;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  personnageUnit,
  Ecran,
  actionForet;

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
