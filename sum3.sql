declare
a number(5,2);
b number(5,2);
begin
a:=&a;
b:=&b;
sum3(a,b);
dbms_output.put_line('Sum is : '|| b);
end;
/
