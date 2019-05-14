CREATE SCHEMA IF NOT EXISTS `EMC_NATIONAL_DATABASE` DEFAULT CHARACTER SET utf8 ;
USE `EMC_NATIONAL_DATABASE` ;

create table Registra(
	Registra_ID int (3) primary key AUTO_INCREMENT,
	ID_passport_no varchar(20) not null,
	First_Name  varchar(20) not null,
	Middle_Name varchar(20) ,
	Surname  varchar(20) not null,
	Gender enum('male','female') not null,
	photo BLOB not null
	
);

CREATE INDEX Registra_index ON Registra (First_Name) USING BTREE;



create table voters_Registration(
	ID_passport_no varchar(20) primary key,
	First_Name  varchar(20) not null,
	Middle_Name varchar(20) ,
	Surname  varchar(20) not null,
	Gender enum('male','female') not null,
	DOB date not null,
	photo BLOB,
	Fingerprints BLOB,
	Ward_of_Registration varchar(30) not null,
		voters_status varchar(10) not null,
		Registra_ID int(3),
		 
  INDEX `fk_voters_Registration_Registra_idx` (Registra_ID ASC),
         
		foreign key (Registra_ID) references Registra(Registra_ID)
		on delete cascade
);

CREATE INDEX voters_registration_index ON voters_Registration (First_Name) USING BTREE;


create table reg_status(
	status_ID int(3) primary key AUTO_INCREMENT,
	voters_status enum('invalid','validated','not validated') not null, --  valid or valid
	Registra_ID int (3),
	ID_passport_no varchar(20),
	Reason varchar(100) not null,
	Date_invalidated date not null,
    
    INDEX `fk_reg_status_voters_Registration_idx` (Registra_ID ASC),
	foreign key (Registra_ID) references Registra(Registra_ID)
		on delete cascade,
		foreign key (ID_passport_no) references voters_Registration(ID_passport_no)
		on delete cascade
       


      );
      
CREATE INDEX reg_status_index ON reg_status(voters_status) USING BTREE;

create table voters_card(
voters_EMC_number int(3)  auto_increment,
ID_passport_no varchar(20),
First_Name  varchar(20) not null,
	Middle_Name varchar(20) ,
	Surname  varchar(20) not null,
	Gender enum('male','female') not null,
    photo BLOB,
	Fingerprints BLOB,
    Date_Of_Issue date not null,
    UNIQUE INDEX `ID_passport_no_UNIQUE` (`ID_passport_no` ASC),
    primary key(voters_EMC_number,`ID_passport_no`),
      
    foreign key (ID_passport_no) references voters_Registration(ID_passport_no)
		on delete cascade


);

CREATE INDEX voters_card_index ON voters_card(First_Name)USING BTREE;


create table Place_Of_Registration(
Entry int(3) primary key auto_increment,
ID_passport_no varchar(20) ,
Ward_Name varchar(20) not null,
county  varchar(20) not null,
division varchar(20) not null,
Ward_of_Registration varchar(100) AS (CONCAT(Ward_Name,'- ',county,'-',division)),
UNIQUE INDEX `Ward_of_Registration_UNIQUE` (`Ward_of_Registration` ASC),
foreign key (ID_passport_no) references voters_Registration(ID_passport_no)
		on delete cascade


);
CREATE INDEX Place_Of_Registration_index ON Place_Of_Registration(county) USING BTREE;

USE `EMC_NATIONAL_DATABASE` ;