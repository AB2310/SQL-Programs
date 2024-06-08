declare
a number(5,2);
b number(5,2);
c number(5,2);
begin
a:=&a;
b:=&b;
sum2(a,b,c);
dbms_output.put_line('Sum is : '|| c);
end;
/
