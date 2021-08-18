package org.zerock.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.InteriorAskVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.InteriorAskMapper;

@Service
public class InteriorAskServiceImpl implements InteriorAskService {
	@Autowired
	private InteriorAskMapper interiorAskMapper;

	@Override
	@Transactional
	public void create(InteriorAskVO interiorAsk) throws Exception {
		interiorAskMapper.create(interiorAsk);
	}

	@Override
	@Transactional
	public List<InteriorAskVO> selectInteriorAskList() throws Exception {
		return interiorAskMapper.selectInteriorAskList();
	}

	@Override
	public List<InteriorAskVO> listPage(HashMap<String, Integer> param) throws Exception {
		/*
		 * int page = param.get("page");
		 * 
		 * if (page <= 0) { page = 1; } page = (page - 1) * 10;
		 */
		return interiorAskMapper.listPage(param);
	}

	@Override
	public List<InteriorAskVO> listCriteria(Criteria cri) throws Exception {
		return interiorAskMapper.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return interiorAskMapper.countPaging(cri);
	}

	@Override
	@Transactional
	public InteriorAskVO read(Integer num) throws Exception {
		return interiorAskMapper.read(num);
	}

	@Override
	public void modify(InteriorAskVO interiorAsk) throws Exception {
		interiorAskMapper.update(interiorAsk);
	}

	@Override
	public void modify2(InteriorAskVO interiorAsk) throws Exception {
		interiorAskMapper.update(interiorAsk);
	}

	@Override
	public void remove(Integer num) throws Exception {
		interiorAskMapper.delete(num);
	}

	@Override
	public List<InteriorAskVO> selectByEmail(String email) throws Exception {
		return interiorAskMapper.selectByEmail(email);
	}

}
