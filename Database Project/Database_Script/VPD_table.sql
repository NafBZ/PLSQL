DROP TABLE ASSIGNMENT cascade constraints;
DROP TABLE SKILL cascade constraints;
DROP TABLE SHELTER cascade constraints;
DROP TABLE VOLUNTEER cascade constraints;
DROP TABLE STAFF cascade constraints;

CREATE TABLE STAFF
 (SID                                            NUMBER(3),
 S_NAME                                          VARCHAR2(25) NOT NULL,
 S_ADDRESS                                       VARCHAR2(40) NOT NULL,
 S_EMAIL                                         VARCHAR2(25) NOT NULL,
 S_PHONE                                         VARCHAR2(15) NOT NULL,
	CONSTRAINT STAFF_SID_PK PRIMARY KEY (SID));
    


CREATE TABLE VOLUNTEER
 (VID                                            NUMBER(3),
 V_NAME                                          VARCHAR2(25) NOT NULL,
 V_ADDRESS                                       VARCHAR2(40) NOT NULL,
 V_DOB                                           DATE,
 V_EMAIL                                         VARCHAR2(25) NOT NULL,
 V_PHONE                                         VARCHAR2(15) NOT NULL,
	CONSTRAINT VOLUNTEER_VID_PK PRIMARY KEY (VID));
    

CREATE TABLE SHELTER
 (SHID                                             NUMBER(3),
 SH_NAME                                           VARCHAR2(20) NOT NULL,
 SH_PHONE                                          VARCHAR2(15),
 SID                                               NUMBER(3) NOT NULL,
	CONSTRAINT SHELTER_SHID_PK PRIMARY KEY (SHID),
	CONSTRAINT SHELTER_SID_FK FOREIGN KEY(SID)
		REFERENCES STAFF);
        
CREATE TABLE SKILL
 (SKID                                             NUMBER(3),
 VID                                               NUMBER(3) NOT NULL,
 SK_NAME                                           VARCHAR2(40) NOT NULL,
 SK_CERTIFICATON                                   VARCHAR2(25),
 SK_CERTDATE                                       DATE  NOT NULL,
 	CONSTRAINT SKILL_SKID_PK PRIMARY KEY (SKID),
	CONSTRAINT SKILL_VID_FK FOREIGN KEY(VID)
		REFERENCES VOLUNTEER);
        
CREATE TABLE ASSIGNMENT
 (AID                                             NUMBER(3),
 VID                                              NUMBER(3) NOT NULL,
 SHID                                             NUMBER(3) NOT NULL,
 START_DATE                                       DATE NOT NULL,
 FINISH_DATE                                      DATE NOT NULL,
 JOB_ROLE                                         VARCHAR2(50),
 	CONSTRAINT ASSIGNMENT_AID_PK PRIMARY KEY (AID),
	CONSTRAINT ASSIGNMENT_VID_FK FOREIGN KEY(VID) REFERENCES VOLUNTEER,
    CONSTRAINT ASSIGNMENT_SHID_FK FOREIGN KEY(SHID) REFERENCES SHELTER
    );

