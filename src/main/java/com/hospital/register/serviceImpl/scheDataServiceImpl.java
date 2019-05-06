package com.hospital.register.serviceImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.hospital.register.entity.departSche;
import com.hospital.register.entity.departScheEx;
import com.hospital.register.entity.department;
import com.hospital.register.entity.employee;
import com.hospital.register.entity.expertSche;
import com.hospital.register.entity.expertScheEx;
import com.hospital.register.service.scheDataService;

@Service("scheDataService")
public class scheDataServiceImpl implements scheDataService {
	@Resource
	private JdbcTemplate jdbctemplate;
	@Override
	public List<department> queryAllRegisterDepartment() {
		// TODO Auto-generated method stub
		String sql = "SELECT departmentid,departmentname FROM department WHERE isregister=1;";
		List<department> list = jdbctemplate.query(sql, new RowMapper<department>() {
			@Override
			public department mapRow(ResultSet rs, int rowNum) throws SQLException {
				department dp = new department();
				dp.setId(rs.getInt("departmentid"));
				dp.setDepartmentname(rs.getString("departmentname"));
				return dp;
			}
		});
		return list;
	}

	@Override
	public List<employee> queryAllExpert() {
		// TODO Auto-generated method stub
		String sql = "SELECT id,employeename FROM employee WHERE jobtitleid=2 and doctortitleid >3;";
		List<employee> list = jdbctemplate.query(sql, new RowMapper<employee>() {
			@Override
			public employee mapRow(ResultSet rs, int rowNum) throws SQLException{
				employee em = new employee();
				em.setId(rs.getInt("id"));
				em.setEmployeename(rs.getString("employeename"));
				return em;
			}
		});
		return list;
	}

	@Override
	public List<departSche> queryAllDepartSche() {
		// TODO Auto-generated method stub
		String sql = "SELECT departscheid,departsche.departmentid,departschename,departmentname,date_format(time,'%Y/%m/%d') time,departsche.note,departsche FROM departsche,department where department.departmentid=departsche.departmentid;";
		List<departSche> list = jdbctemplate.query(sql, new RowMapper<departSche>() {
			@Override
			public departSche mapRow(ResultSet rs,int rowNum) throws SQLException {
				departSche ds = new departSche();
				ds.setId(rs.getInt("departscheid"));
				ds.setName(rs.getString("departschename"));
				ds.setDepartID(rs.getInt("departmentid"));
				ds.setDepartment(rs.getString("departmentname"));
				ds.setSche(rs.getString("departsche"));
				ds.setTime(rs.getString("time"));
				ds.setNote(rs.getString("note"));
				return ds;
			}
		});
		return list;
	}
	
	@Override
	public boolean checkRepeatTableName(final Object name) {
		// TODO Auto-generated method stub
		String sql = "select departscheid from departsche where departschename=?;";
		if(jdbctemplate.query(sql, new Object[]{name},new RowMapper<departSche>() {
			@Override
			public departSche mapRow(ResultSet rs,int rowNum) throws SQLException{
				departSche ds = new departSche();
				ds.setDepartID(rs.getInt("departscheid"));
				return ds;
			}
		}).size()>0) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean insertDepartSche(Object name, Object depart, Object sche, Object note) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO departsche (departschename,departmentid,departsche,note) VALUES (?,?,?,?);";
		try {
			if(jdbctemplate.update(sql,name,depart,sche,note)>0) {
				return true;
			}
			else
				return false;
		}catch(Exception e){
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean updateDepartSche(Object id, Object note, Object sche) {
		// TODO Auto-generated method stub
		String sql = "UPDATE departsche SET note=?, departsche=? WHERE departscheid = ?;";
		try {
			if(jdbctemplate.update(sql,note,sche,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean deleteDepartSche(Object id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM departsche WHERE departscheid = ?;";
		try {
			if(jdbctemplate.update(sql,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public List<departScheEx> queryAllDepartScheEx() {
		// TODO Auto-generated method stub
		String sql = "SELECT departscheexid,departscheex.departmentid,departscheexname,departmentname,departsche,date_format(time,'%Y/%m/%d') time,departscheex.note FROM departscheex,department where department.departmentid=departscheex.departmentid;";
		List<departScheEx> list = jdbctemplate.query(sql, new RowMapper<departScheEx>() {
			@Override
			public departScheEx mapRow(ResultSet rs,int rowNum) throws SQLException {
				departScheEx dsx = new departScheEx();
				dsx.setDepartscheexid(rs.getInt("departscheexid"));
				dsx.setDepartmentid(rs.getInt("departmentid"));
				dsx.setDepartscheexname(rs.getString("departscheexname"));
				dsx.setDepartmentname(rs.getString("departmentname"));
				dsx.setDepartsche(rs.getString("departsche"));
				dsx.setTime(rs.getString("time"));
				dsx.setNote(rs.getString("note"));
				return dsx;
			}
		});
		return list;
	}

	@Override
	public List<expertSche> queryAllExpertSche() {
		// TODO Auto-generated method stub
		String sql = "SELECT expertscheid,expertschename,expertsche.doctorid,employeename,expertsche,date_format(time,'%Y/%m/%d') time,expertsche.note FROM expertsche,employee where expertsche.doctorid=employee.id;";
		List<expertSche> list = jdbctemplate.query(sql, new RowMapper<expertSche>() {
			@Override
			public expertSche mapRow(ResultSet rs,int rowNum) throws SQLException {
				expertSche es = new expertSche();
				es.setExpertscheid(rs.getInt("expertscheid"));
				es.setExpertschename(rs.getString("expertschename"));
				es.setDoctorid(rs.getInt("doctorid"));
				es.setDoctorname(rs.getString("employeename"));
				es.setExpertsche(rs.getString("expertsche"));
				es.setTime(rs.getString("time"));
				es.setNote(rs.getString("note"));
				return es;
			}
		});
		return list;
	}

	@Override
	public List<expertScheEx> queryAllExpertScheEx() {
		// TODO Auto-generated method stub
		String sql = "SELECT expertscheexid,expertscheexname,expertscheex.expertid,employeename,expertsche,date_format(time,'%Y/%m/%d') time,expertscheex.note FROM expertscheex,employee where expertscheex.expertid=employee.id;";
		List<expertScheEx> list = jdbctemplate.query(sql, new RowMapper<expertScheEx>() {
			@Override
			public expertScheEx mapRow(ResultSet rs,int rowNum) throws SQLException {
				expertScheEx ese = new expertScheEx();
				ese.setExpertscheexid(rs.getInt("expertscheexid"));
				ese.setExpertscheexname(rs.getString("expertscheexname"));
				ese.setExpertid(rs.getInt("expertid"));
				ese.setExpertname(rs.getString("employeename"));
				ese.setExpertsche(rs.getString("expertsche"));
				ese.setTime(rs.getString("time"));
				ese.setNote(rs.getString("note"));
				return ese;
			}
		});
		return list;
	}

	@Override
	public boolean checkRepeatExpertName(Object name) {
		// TODO Auto-generated method stub
		String sql = "select expertscheid from expertsche where expertschename=?;";
		if(jdbctemplate.query(sql, new Object[]{name},new RowMapper<expertSche>() {
			@Override
			public expertSche mapRow(ResultSet rs,int rowNum) throws SQLException{
				expertSche ds = new expertSche();
				ds.setExpertscheid(rs.getInt("expertscheid"));
				return ds;
			}
		}).size()>0) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean insertExpertSche(Object name, Object expert, Object sche, Object note) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO expertsche (expertschename,doctorid,expertsche,note) VALUES (?,?,?,?);";
		try {
			if(jdbctemplate.update(sql,name,expert,sche,note)>0) {
				return true;
			}
			else
				return false;
		}catch(Exception e){
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean updateExpertSche(Object id, Object note, Object sche) {
		// TODO Auto-generated method stub
		String sql = "UPDATE expertsche SET note=?, expertsche=? WHERE expertscheid = ?;";
		try {
			if(jdbctemplate.update(sql,note,sche,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean deleteExpertSche(Object id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM expertsche WHERE expertscheid = ?;";
		try {
			if(jdbctemplate.update(sql,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean checkRepeatTableNameEx(Object name) {
		// TODO Auto-generated method stub
		String sql = "select departscheexid from departscheex where departscheexname=?;";
		if(jdbctemplate.query(sql, new Object[]{name},new RowMapper<departScheEx>() {
			@Override
			public departScheEx mapRow(ResultSet rs,int rowNum) throws SQLException{
				departScheEx ds = new departScheEx();
				ds.setDepartscheexid(rs.getInt("departscheexid"));
				return ds;
			}
		}).size()>0) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean checkRepeatExpertExName(Object name) {
		// TODO Auto-generated method stub
		String sql = "select expertscheexid from expertscheex where expertscheexname=?;";
		if(jdbctemplate.query(sql, new Object[]{name},new RowMapper<expertScheEx>() {
			@Override
			public expertScheEx mapRow(ResultSet rs,int rowNum) throws SQLException{
				expertScheEx ds = new expertScheEx();
				ds.setExpertscheexid(rs.getInt("expertscheexid"));
				return ds;
			}
		}).size()>0) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public boolean insertDepartScheEx(Object name, Object depart, Object sche, Object note) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO departscheex (departscheexname,departmentid,departsche,note) VALUES (?,?,?,?);";
		try {
			if(jdbctemplate.update(sql,name,depart,sche,note)>0) {
				return true;
			}
			else
				return false;
		}catch(Exception e){
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean insertExpertScheEx(Object name, Object expert, Object sche, Object note) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO expertscheex (expertscheexname,expertid,expertsche,note) VALUES (?,?,?,?);";
		try {
			if(jdbctemplate.update(sql,name,expert,sche,note)>0) {
				return true;
			}
			else
				return false;
		}catch(Exception e){
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean updateDepartScheEx(Object id, Object note, Object sche) {
		// TODO Auto-generated method stub
		String sql = "UPDATE departscheex SET note=?, departsche=? WHERE departscheexid = ?;";
		try {
			if(jdbctemplate.update(sql,note,sche,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean updateExpertScheEx(Object id, Object note, Object sche) {
		// TODO Auto-generated method stub
		String sql = "UPDATE expertscheex SET note=?, expertsche=? WHERE expertscheexid = ?;";
		try {
			if(jdbctemplate.update(sql,note,sche,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean deleteDepartScheEx(Object id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM departscheex WHERE departscheexid = ?;";
		try {
			if(jdbctemplate.update(sql,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public boolean deleteExpertScheEx(Object id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM expertscheex WHERE expertscheexid = ?;";
		try {
			if(jdbctemplate.update(sql,id)>0) {
				return true;
			}
			else {
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}

}
