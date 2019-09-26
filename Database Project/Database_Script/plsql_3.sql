set serveroutput on
set verify off

create or replace procedure retrieve_detail
(v_vid in volunteer.vid%TYPE,
sd in assignment.start_date%TYPE
)

as
jr assignment.job_role%TYPE;
vn volunteer.v_name%TYPE;
v_shid shelter.shid%type;
sn staff.s_name%TYPE;
shn shelter.sh_name%TYPE;

begin

select job_role, v_name, shid
into jr, vn, v_shid
from volunteer join assignment using (vid)
where vid = v_vid and start_date = to_date(sd);


select sh_name, s_name
into shn,sn
from shelter join staff using(sid)
where shid = v_shid;

dbms_output.put_line('Job role: ' || jr);
dbms_output.put_line('Shelter Name: ' || shn);
dbms_output.put_line('Staff-in-charge: ' || sn);

end;
/