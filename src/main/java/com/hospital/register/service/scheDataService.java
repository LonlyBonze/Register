package com.hospital.register.service;

import java.util.List;

import com.hospital.register.entity.departSche;
import com.hospital.register.entity.departScheEx;
import com.hospital.register.entity.department;
import com.hospital.register.entity.employee;
import com.hospital.register.entity.expertSche;
import com.hospital.register.entity.expertScheEx;

public interface scheDataService {
	List<department> queryAllRegisterDepartment();
	
	List<employee> queryAllExpert();
	
	List<departScheEx> queryAllDepartScheEx();
	
	List<departSche> queryAllDepartSche();
	
	List<expertSche> queryAllExpertSche();
	
	List<expertScheEx> queryAllExpertScheEx();
	
	boolean checkRepeatTableName(final Object name);
	
	boolean checkRepeatTableNameEx(final Object name);
	
	boolean checkRepeatExpertName(final Object name);
	
	boolean checkRepeatExpertExName(final Object name);
	
	boolean insertDepartSche(final Object name,final Object depart,final Object sche,final Object note );
	
	boolean insertDepartScheEx(final Object name,final Object depart,final Object sche,final Object note );
	
	boolean insertExpertSche(final Object name,final Object expert,final Object sche,final Object note );
	
	boolean insertExpertScheEx(final Object name,final Object expert,final Object sche,final Object note );
	
	boolean updateDepartSche(final Object id,final Object note,final Object sche);
	
	boolean updateDepartScheEx(final Object id,final Object note,final Object sche);
	
	boolean updateExpertSche(final Object id,final Object note,final Object sche);
	
	boolean updateExpertScheEx(final Object id,final Object note,final Object sche);
	
	boolean deleteDepartSche(final Object id);
	
	boolean deleteDepartScheEx(final Object id);
	
	boolean deleteExpertSche(final Object id);
	
	boolean deleteExpertScheEx(final Object id);
}
