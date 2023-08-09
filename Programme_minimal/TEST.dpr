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
  t:Integer;
begin
  randomize;
  t:=1;
  initialisationPerso(personnage);
  initialisationCoffre(coffre);
  premierChoix(personnage,coffre);
end.
