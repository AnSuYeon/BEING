package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.FaqVO;

public interface FaqService {

	public void create(FaqVO faq) throws Exception;
	
	public List<FaqVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<FaqVO> selectFaqList() throws Exception;

	public List<FaqVO> listPage(int page) throws Exception;
	
	public FaqVO read(Integer num) throws Exception;
	
	public void remove(Integer num) throws Exception;
	
	public void modify(FaqVO faq) throws Exception;
}
