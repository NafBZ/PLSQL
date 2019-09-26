accept v_sid prompt 'Enter Staff ID: '
accept v_shid prompt 'Enter Shelter ID: '

declare
no_v number(2);

begin
no_v:= get_no_v(&v_sid, &v_shid);

if (no_v > 4) then dbms_output.put_line('ALLOCATE TO OTHER SHELTER.');
end if;

end;
/