declare
num1 number;
num2 number;
begin
num1:=&num1;
num2:=&num2;
dbms_output.put_line('Sum of ' || num1 || ' and ' || num2 || ' is ' || (num1+num2));
end;
/