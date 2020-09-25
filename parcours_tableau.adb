--Ce code représente les bases pour parcourir 'proprement' un tableau en ADA. 

with Ada.Text_IO; use Ada.Text_IO;

procedure Parcours_Tableau is
    --On declatre ici une liste d'indices 
    type my_index_list is range 11 .. 15  ; 
    --On declatre ici un type de tableau (d'entiers potitives) indexé par la liste my_index_list
    type My_Array_type1 is array (my_index_list) of positive;
    type My_Array_type2 is array (Integer range <>) of positive;
    
    my_table1 : My_Array_type1 := (2, 3, 5, 7, 23);
    my_table2 : My_Array_type2 := (2, 3, 5, 7, 23);
   
   
    procedure afficher_tab(tableau : My_Array_type2) is  
    begin 
    
   New_Line;
   Put_Line ( " Je suis dans la procédure afficher_tab. je vais afficher tous les éléments du tableau en paramètre" ) ; 
   
   
    Put_Line ( " La longeur du tableau en paramètre : "  & Natural'Image (tableau'Length) ) ;
    
   for I in tableau'First .. tableau'Last loop
      Put (" " & Positive'Image (tableau (I)));
   end loop;
   
   New_Line;
    
    end afficher_tab; 

begin

    New_Line;
    --Comprendre 'First, 'Last, et 'Length'
    Put_Line ( " my_table1 premier indice "  & my_index_list'Image (my_table1'First) ) ;
    Put_Line ( " my_table1 dernier indice "  & my_index_list'Image (my_table1'Last) ) ;
    Put_Line ( " Longeur de my_table1 "  & Natural'Image (my_table1'Length) ) ;
    
    --Cette ligne génére une erreur d'exécution 
    --Put_Line ( " Valeur de la première variable dans my_table1 "  & positive'Image (my_table1(1) ) ) ;
    
    New_Line;

    Put_Line ( " Valeur de la première variable dans my_table1 "  & positive'Image (my_table1(my_table1'First) ) ) ;
    
     --Cette ligne génére une erreur d'exécution 
    --Put_Line ( " Valeur de la dernière variable dans my_table1 "  & positive'Image (my_table1(my_table1'Length) ) ) ;
 
 
    Put_Line ( " Valeur de la dernière variable dans my_table1 "  & positive'Image (my_table1(my_table1'Last) ) ) ;
    New_Line;
       
       
    --AFFICHAGE 
    Put_Line ( " Afficher tous les éléments de my_table1  " ) ; 
   for I in my_table1'First .. my_table1'Last loop
      Put (" " & Positive'Image (my_table1 (I)));
   end loop;
  
   New_Line;
   
   
    Put_Line ( " Afficher tous les éléments de my_table2  " ) ; 
   for I in my_table2'First .. my_table2'Last loop
      Put (" " & Positive'Image (my_table2 (I)));
   end loop;
   
   
   
   New_Line;
    --Utilisation de sous tableau : 
    afficher_tab (my_table2 (my_table2'First .. my_table2'First+1 ) ) ; 
    afficher_tab (my_table2 (my_table2'First .. my_table2'First+2 ) ) ; 
    afficher_tab (my_table2 (my_table2'First .. my_table2'First+3 ) ) ; 
    
    
    
   
end Parcours_Tableau;

