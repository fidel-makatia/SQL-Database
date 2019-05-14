insert into registra
 values(010,'12q','fidel','omusilibwa','makatia','male',0x345);
insert into registra(ID_passport_no,First_Name,Middle_Name,Surname,Sex,photo) 
	values('12qr','jonah','ethane','mutamale','male',0x3456);
	insert into registra(ID_passport_no,First_Name,Middle_Name,Surname,Sex,photo) 
		values('12qwr','jonathan','kamau','mutamalei','female',0x34561);
		insert into registra(ID_passport_no,First_Name,Middle_Name,Surname,Sex,photo) 
			values('12qwrp3','Cynthia','Thuo','Ruguru','female',0x345361);
			insert into registra(ID_passport_no,First_Name,Middle_Name,Surname,Sex,photo) 
				values('12qwrp31','Cynthia','Ayuma','Omusilibwa','female',0x345361);
				insert into voters_registration 
					values('123er','gigo','kiptui','achieng','male','2017-03-28',0x34,0x35,'kapenguriasix','validated',10);
					insert into voters_registration 
						values('123ers','Alice','kiptui','mathenge','female','2017-03-28',0x34,0x35,'kahawawest','Nvalidated',10);
						insert into voters_registration 
							values('123ersp','Akim','mwadime','mathenge','female','2017-03-30',0x344,0x351,'esirabe,bunyore','invalid',11);
							insert into voters_registration
							 values('123erspr','Akim','musyoka','makau','female','2017-04-30',0x344,0x351,'machakos,peoplespark','validated',11);
							 insert into reg_status(voters_status,Registra_ID ,ID_passport_no,Reason ,Date_invalidated) 
							 	values('validated',10,'123er','all docs submited','2017-03-30');
	insert into reg_status(voters_status,Registra_ID ,ID_passport_no,Reason ,Date_invalidated) 
		values('not validated',10,'123ers','ID wasnt submitted','2017-03-30');
		insert into reg_status(voters_status,Registra_ID ,ID_passport_no,Reason ,Date_invalidated) 
			values('invalid',10,'123ersp','not kenyan citizen','2017-03-30');
			insert into reg_status(voters_status,Registra_ID ,ID_passport_no,Reason ,Date_invalidated)
			 values('validated',11,'123erspr','all docs submitted','2017-03-30');
	insert into voters_card(ID_passport_no ,First_Name,Middle_Name,Surname,Sex ,photo,Fingerprints,Date_Of_Issue) 
		values('123er','gigo','kiptui','achieng','male',0x34,0x35,'2017-04-12');
		insert into voters_card(ID_passport_no ,First_Name,Middle_Name,Surname,Sex ,photo,Fingerprints,Date_Of_Issue) 
			values('123ersp','Akim','mwadime','mathenge','female',0x344,0x351,'2017-04-12');
	insert into voters_card(ID_passport_no ,First_Name,Middle_Name,Surname,Sex ,photo,Fingerprints,Date_Of_Issue)
	 values('123erspr','Akim','musyoka','makau','female',0x344,0x351,'2017-04-12');
	 insert into place_of_registration(ID_passport_no,Ward_Name,county,division) 
	 	values('123er','kapenguria','baragoi','keses');
	 	insert into place_of_registration(ID_passport_no,Ward_Name,county,division) 
	 		values('123ersp','kahawawendani','Kiambu','Alvo');