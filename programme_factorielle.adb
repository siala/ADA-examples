-- Ceci est un exemple de programme récursif en ada! 
-- Ce programme implémente la factorielle d'un entier N définie par la formule: 
-- N! = 1 Si N = 0 
-- N! = N * (N-1)! Sinon.

with Ada.Text_IO; use Ada.Text_IO;
procedure Programme_Factorielle is


function Factorielle ( N : in  Natural) return Positive is
Resultat : Positive ; 
begin

if N=0 then 
    Resultat := 1 ; 
else
    Resultat := N * Factorielle(N - 1) ; 
end if ;

return Resultat ;  
end;


procedure Tester_Factorielle is 
begin 


    Put_Line(" Procédure de test pour la fonction Factorielle(N) ");
    Put_Line(" On sait que 4!= 24. La fonction Factorielle retourne : " & Positive'image (Factorielle(4))); 
    Put_Line(" On sait que 7!= 5040. La fonction Factorielle retourne : " & Positive'image (Factorielle(7))); 
    
end;


begin
    Put_Line(" Bonjour! Dans ce programme principal, on fait simplement un appel à un programme de test de la fonction Factorielle. ");
  Tester_Factorielle  ; 
  
end Programme_Factorielle;
