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
   Arr(11) := 22; -- This will cause a Constraint_Error
end Example;
```