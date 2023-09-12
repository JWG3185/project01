package com.project.matheasy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.matheasy.service.ContVo;
import com.project.matheasy.service.Pager;
import com.project.matheasy.service.contService;

@Service
public class contServiceImpl implements contService {

	@Autowired
	ContDao dao;
	
	
	@Override
	public List<ContVo> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);

	}

}
