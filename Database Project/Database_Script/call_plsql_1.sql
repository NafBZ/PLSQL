accept sn prompt 'Enter Staff Name: '
accept sa prompt 'Enter Address: '
accept se prompt 'Enter Email: '
accept sp prompt 'Enter Phone no.: '
accept vn prompt 'Enter Volunteer Name: '
accept va prompt 'Enter Address: '
accept vd prompt 'Enter DOB: '
accept ve prompt 'Enter Email: '
accept vp prompt 'Enter Phone no.: '


begin
add_vs('&sn', '&sa', '&se', '&sp', '&vn', '&va', '&vd', '&ve', '&vp');

end;
/