package com.web.parent.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.parent.entity.EmpEntity;
import com.web.parent.entity.LoginEntity;
import com.web.parent.repository.EmpRepository;

@Service
public class EmpService {
	@Autowired
	private EmpRepository empRepository;

	public ArrayList<EmpEntity> getEmployee(LoginEntity login) {

		ArrayList<EmpEntity> entity = new ArrayList<EmpEntity>();
		/*
		 * if (login.getUserName().equals("Swapnil") &&
		 * login.getPassword().equals("Bagul")) { entity.add(login.getUserName()); }else
		 * {
		 * 
		 * }
		 */
		entity = empRepository.findAll();
		for (EmpEntity en : entity) {
			System.out.println(en);
		}
		return entity;
	}
}
