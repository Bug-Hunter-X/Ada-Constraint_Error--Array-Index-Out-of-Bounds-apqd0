```ada
procedure Example is
   subtype Positive_Index is Integer range 1 .. 10;
   type My_Array is array (Positive_Index) of Integer;
   Arr : My_Array := (others => 0);
begin
   for I in Positive_Index loop
      Arr(I) := I * 2;
   end loop;
   for I in Positive_Index loop
      Ada.Text_IO.Put_Line(Integer'Image(Arr(I)));
   end loop;
   
   --Corrected version to handle potential index out of bounds error
   Index : Integer := 11;
   if Index in Positive_Index then
       Arr(Index) := 22;
       Ada.Text_IO.Put_Line(Integer'Image(Arr(Index)));
else
       Ada.Text_IO.Put_Line("Index out of bounds");
end if;

end Example;
```