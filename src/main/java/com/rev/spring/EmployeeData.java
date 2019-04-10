package com.rev.spring;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class EmployeeData {
	@Resource(name = "template")
	private JdbcTemplate template;

	public List<Employee> read(int id) {

		return template.query("select id,name,address,hike from employees where role_id=?", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee emp = new Employee();
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setAddress(rs.getString(3));
				emp.setHike(rs.getFloat(4));
				return emp;
			}

		}, id);

	}

	@RequestMapping(value = "/validation", method = RequestMethod.GET)

	public String transfer(Model m) {

		List<Employee> list = read(2);
		m.addAttribute("message", list);
		return "view1";
	}

	@RequestMapping(value = "/editemp")
	public String update(@RequestParam("empid") int id, @RequestParam("emphike") float hike) {
		if (id != 6) {
			String query = "update employees set hike=? where id=?";
			// mod.addAttribute("message2", query);
			template.update(query, hike, id);

			return "view3";
		} else {
			return "errorpage";
		}
	}

	public List<Employee> fetch(int id) {
		String query = "select employees.id,employees.name,employees.address,employees.hike,roles.salary from employees inner join roles on employees.role_id =roles.id group by employees.id having id=?";
		return template.query(query, new RowMapper<Employee>() {

			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee eObj = new Employee();
				eObj.setId(rs.getInt(1));
				eObj.setName(rs.getString(2));
				eObj.setAddress(rs.getString(3));
				eObj.setHike(rs.getFloat(4));
				eObj.setSalary(rs.getInt(5));
				return eObj;
			}

		}, id);

	}

	public String empRecords(Model mod, int id) {
		if (id != 6) {
			List<Employee> listObj = fetch(id);

			mod.addAttribute("empdetails", listObj);
			return "result";
		} else {
			return "errorpage";
		}
	}

	@RequestMapping("/checking")
	public String checking(@RequestParam("userid") int id, @RequestParam("username") String name,
			@RequestParam("userpass") String code, Model m) {

		if (id == 6 && name.equals("saran") && code.equals("123")) {
			return "controller";
		} else {
			if (id != 6) {
				Model re = m.addAttribute("empdetails");
				empRecords(re, id);
				return "result";
			} else {
				return "errorpage";
			}

		}

	}

}
