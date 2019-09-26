select * from shelter;
select * from staff;
select * from volunteer;
select * from Assignment;
select * from Skill;

-- Find the details of the shelter(s) with more than 4 (four) volunteers.

Select SHID, SH_NAME, SH_PHONE, COUNT(VID) AS N0_OF_VOLUNTEER
FROM SHELTER JOIN ASSIGNMENT USING (SHID)
GROUP BY SHID,SH_NAME, SH_PHONE 
HAVING COUNT(VID)>4;



-- Find the shelter with the most volunteers.

Select SHID, SH_NAME, SH_PHONE, COUNT(VID) AS N0_OF_VOLUNTEER
FROM SHELTER JOIN ASSIGNMENT USING (SHID)
GROUP BY SHID,SH_NAME, SH_PHONE 
HAVING COUNT(VID)= (SELECT MAX(COUNT(VID))
                    FROM ASSIGNMENT
                    GROUP BY SHID);
                    
                    
                    
-- Find the staff that handle more than 1 (one) shelters.   

SELECT SID, S_NAME, S_ADDRESS,S_EMAIL, S_PHONE, COUNT(SHID) AS NO_OF_SHELTER  
FROM STAFF JOIN SHELTER USING (SID)
GROUP BY SID, S_NAME, S_ADDRESS,S_EMAIL, S_PHONE
HAVING COUNT(SHID)>1;




-- List the name of volunteers who had been assigned more than 3 months to the same shelter.

SELECT V_NAME, SHID, TRUNC(((FINISH_DATE-START_DATE)/30),0) AS DURATION
FROM ASSIGNMENT JOIN VOLUNTEER USING(VID)
WHERE TRUNC(((FINISH_DATE-START_DATE)/30),0) > 3;



-- List the volunteers who has not been assigned to any shelter.

SELECT VID, V_NAME, V_ADDRESS, V_EMAIL, V_PHONE
FROM  VOLUNTEER
WHERE VID NOT IN (SELECT VID
                  FROM ASSIGNMENT); 
                  
                  

                  