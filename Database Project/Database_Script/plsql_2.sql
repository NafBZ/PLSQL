set serveroutput on
set verify off

create or replace function get_no_v
(
v_sid staff.sid%TYPE,
v_shid shelter.shid%TYPE
)
return number
is 
no_v number(2);

begin
select count(vid)
into no_v
from assignment join shelter using (shid)
where shid = v_shid and sid = v_sid;

return(no_v);

end;
/