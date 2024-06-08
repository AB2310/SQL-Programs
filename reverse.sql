declare
num int;
t int;
rev int;
begin
num:=&num;
rev:=0;
while num!=0
loop
t:=mod(num,10);
rev:=(rev*10)+t;
num:=floor(num/10);
end loop;
dbms_output.put_line('Reverse is '||rev);
end;
/
