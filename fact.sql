declare
num number;
i number;
fact number;
begin
fact:=1;
num:=&num;
i:=num;
for i
in 1 .. num
loop
  fact:=fact*i;
end loop;
dbms_output.put_line('factorial of '|| num || ' is ' || fact);
end;
/