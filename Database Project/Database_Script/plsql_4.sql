set serveroutput on
set verify off

create or replace function get_pack
(
v_shid shelter.shid%TYPE
)
return number
is 
pack number(2);
no_v number(2);

begin
select count(vid)
into no_v
from assignment
where shid = v_shid;

if no_v = 2 then pack:=25;
elsif (no_v > 2 and no_v < 6) then pack:=60;
end if;

return(pack);

end;
/