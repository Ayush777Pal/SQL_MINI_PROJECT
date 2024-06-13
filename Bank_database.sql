create DATABASE BMS_DB1;

use BMS_DB1;

-- CUSTOMER_PERSONAL_INFRO

create TABLE  CUS_PERS_INFRO(
CUSTOMER_ID varchar(7),
CUSTOMER_NAME varchar(50),
DATE_OF_BIRTH date,
GARDIAN_NAME varchar(50),
ADDRESS varchar(50),
CONTACT_NO bigint(10),
MAIL_ID varchar(30),
GENDER varchar(10),
MARTIAL_STATUS varchar(30),
IDENTIFICATION_DOC_TYPE varchar(30),
ID_DOC_NO varchar(30),
CITIZENSHIP varchar(30),
constraint CUS_PERS_INFRO_PK primary key(CUSTOMER_ID)
);

-- CUSTOMER_REFERNECE_INFO

CREATE TABLE CUS_REF_INFO(
CUSTOMER_ID varchar(7),
REFERENCE_ACC_NAME varchar(20),
REFERENCE_ACC_NO bigint(16),
REFERENCE_ACC_ADDRESS varchar(50),
RELATION varchar(25),
constraint CUS_REF_INFO_pk primary key(CUSTOMER_ID),
constraint CUS_REF_INFO_fk foreign key(CUSTOMER_ID) references CUS_PERS_INFRO(CUSTOMER_ID)
);
-- Bank info

create table BRANCH(
IFSC_CODE varchar(20),
BANK_NAME varchar(10),
BRANCH_NAME varchar(10),
constraint BRANCH_PK primary key(IFSC_CODE)
);

-- ACCOUNT INFRO

create table ACCOUNT_INFO(
ACCOUNT_NO varchar(20),
CUSTOMER_ID varchar(20),
ACCOUNT_TYPE varchar(10),
REGISTRATION_DATE date,
ACTIVATION_DATE date,
IFSC_CODE varchar(20),
INTEREST varchar(10),
INITIAL_DEPOSIT int(10),
constraint ACCOUNT_INFO_PK primary key(ACCOUNT_NO),
constraint ACCOUNT_PERS_FK  foreign key(CUSTOMER_ID) references CUS_PERS_INFRO(CUSTOMER_ID),
constraint ACCOUNT_BANK_FK foreign key(IFSC_CODE) references BRANCH(IFSC_CODE)
);

SHOW TABLES;
insert into BRANCH values("HDL0012","HDFC","VALASAAM");
insert into BRANCH values("SBIT123","SBI","GOA");
insert into BRANCH values("BOB2310","BOB","KANPUR");
