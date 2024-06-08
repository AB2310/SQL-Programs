create or replace procedure
incr(exper in integer, salary in number, increment out number)
is
begin
if exper >= 15
then
increment := exper;
else
if salary <= 10000
then
increment := 8;
elsif salary <=25000
then increment := 10;
else
increment := 15;
end if;
end if;
end;
/