package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.FaqVO;
import org.zerock.mapper.FaqMapper;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqMapper faqMapper;

	@Override
	@Transactional
	public void create(FaqVO faq) throws Exception {
		faqMapper.create(faq);
	}
	
	@Override
	@Transactional
	public List<FaqVO> selectFaqList() throws Exception {
		return faqMapper.selectFaqList();
	}
	
	@Override
	public List<FaqVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return faqMapper.listPage(page);
	}

	@Override
	public List<FaqVO> listCriteria(Criteria cri) throws Exception {
		return faqMapper.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return faqMapper.countPaging(cri);
	}

	@Override
	@Transactional
	public FaqVO read(Integer num) throws Exception {
		return faqMapper.read(num);
	}
	
	@Override
	public void remove(Integer num) throws Exception {
		faqMapper.delete(num);
	}
	
	@Override
	public void modify(FaqVO faq) throws Exception {
		faqMapper.update(faq);
	}
}
