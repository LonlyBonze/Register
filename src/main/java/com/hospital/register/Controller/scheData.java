package com.hospital.register.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hospital.register.entity.departSche;
import com.hospital.register.entity.departScheEx;
import com.hospital.register.entity.department;
import com.hospital.register.entity.employee;
import com.hospital.register.entity.expertSche;
import com.hospital.register.entity.expertScheEx;
import com.hospital.register.service.scheDataService;

@RestController
public class scheData {
	@Autowired
	private scheDataService schedataservice;
	@ResponseBody
	//获取专科名字列表
	@RequestMapping("/scheDatadepartment")
	public List<department> queryScheDataDepartment() {
		return schedataservice.queryAllRegisterDepartment();
	}
	//获取专家名字列表
	@RequestMapping("/scheDataExpert")
	public List<employee> queryScheDataExpert(){
		return schedataservice.queryAllExpert();
	}
	//获取专科排班表列表
	@RequestMapping("/tableDatadepartment")
	public List<departSche> queryTableDataDepartment() {
		return schedataservice.queryAllDepartSche();
	}
	//获取专家排班表列表
	@RequestMapping("/tableDataExpert")
	public List<expertSche> queryTableDataExpert() {
		return schedataservice.queryAllExpertSche();
	}
	//检测专科排班表名称重复
	@RequestMapping("/isthererepeatname")
	public boolean checkRepeatTableName(@RequestBody Map<String, Object> map) {
		return schedataservice.checkRepeatTableName(map.get("name"));
	}
	//检测专科排班模板名称重复
	@RequestMapping("/isthererepeatexname")
	public boolean checkRepeatExTableName(@RequestBody Map<String, Object> map) {
		return schedataservice.checkRepeatTableNameEx(map.get("name"));
	}
	//检测专家排班表名称重复
	@RequestMapping("/isthererepeatexpert")
	public boolean checkRepeatExpertName(@RequestBody Map<String, Object> map) {
		return schedataservice.checkRepeatExpertName(map.get("name"));
	}
	//检测专家排班模板名称重复
	@RequestMapping("/isthererepeatexpertex")
	public boolean checkRepeatExpertExName(@RequestBody Map<String, Object> map) {
		return schedataservice.checkRepeatExpertExName(map.get("name"));
	}
	//插入新专科排班表
	@RequestMapping("/insertdeparttable")
	public boolean insertdepartschetable(@RequestBody Map<String, Object> map) {
		return schedataservice.insertDepartSche(map.get("departschename"), map.get("departmentid"), map.get("departsche"), map.get("note"));
	}
	//插入新专家排班表
	@RequestMapping("/insertexperttable")
	public boolean insertexpertschetable(@RequestBody Map<String, Object> map) {
		return schedataservice.insertExpertSche(map.get("expertschename"), map.get("doctorid"), map.get("expertsche"), map.get("note"));
	}
	//修改专科排班表
	@RequestMapping("/updatedepartsche")
	public boolean updatedepartsche(@RequestBody Map<String, Object> map) {
		return schedataservice.updateDepartSche(map.get("id"),map.get("note"),map.get("sche"));
	}
	//修改专家排班表
	@RequestMapping("/updateexpertsche")
	public boolean updateexpertsche(@RequestBody Map<String, Object> map) {
		return schedataservice.updateExpertSche(map.get("id"), map.get("note"), map.get("sche"));
	}
	//删除专科排班表
	@RequestMapping("/deletedepartsche")
	public boolean deleteDepartSche(@RequestBody Map<String, Object> map) {
		return schedataservice.deleteDepartSche(map.get("id"));
	}
	//删除专家排班表
	@RequestMapping("/deleteexpertsche")
	public boolean deleteExpertSche(@RequestBody Map<String, Object> map) {
		return schedataservice.deleteExpertSche(map.get("id"));
	}
	//获取所有专科排班模板
	@RequestMapping("/tableImportDepartment")
	public List<departScheEx> queryAllDepartScheEx(){
		return schedataservice.queryAllDepartScheEx();
	}
	//获取所有专家排班模板
	@RequestMapping("/tableImportExpert")
	public List<expertScheEx> queryAllExpertScheEx(){
		return schedataservice.queryAllExpertScheEx();
	}
	//修改专科排班模板
	@RequestMapping("/updatedepartscheex")
	public boolean updatedepartscheex(@RequestBody Map<String, Object> map) {
		return schedataservice.updateDepartScheEx(map.get("id"),map.get("note"),map.get("sche"));
	}
	//修改专家排班模板
	@RequestMapping("/updateexpertscheex")
	public boolean updateexpertscheex(@RequestBody Map<String, Object> map) {
		return schedataservice.updateExpertScheEx(map.get("id"), map.get("note"), map.get("sche"));
	}
	//删除专科排班模板
	@RequestMapping("/deletedepartscheex")
	public boolean deleteDepartScheEx(@RequestBody Map<String, Object> map) {
		return schedataservice.deleteDepartScheEx(map.get("id"));
	}
	//删除专家排班模板
	@RequestMapping("/deleteexpertscheex")
	public boolean deleteExpertScheEx(@RequestBody Map<String, Object> map) {
		return schedataservice.deleteExpertScheEx(map.get("id"));
	}
	//插入新专科排班模板
	@RequestMapping("/insertdepartex")
	public boolean insertdepartscheex(@RequestBody Map<String, Object> map) {
		return schedataservice.insertDepartScheEx(map.get("departschename"), map.get("departmentid"), map.get("departsche"), map.get("note"));
	}
	//插入新专家排班模板
	@RequestMapping("/insertexpertex")
	public boolean insertexpertscheex(@RequestBody Map<String, Object> map) {
		return schedataservice.insertExpertScheEx(map.get("expertschename"), map.get("doctorid"), map.get("expertsche"), map.get("note"));
	}
}
