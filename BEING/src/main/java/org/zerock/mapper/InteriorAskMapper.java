package org.zerock.mapper;

import java.util.HashMap;
import java.util.List;

import org.zerock.domain.InteriorAskVO;
import org.zerock.domain.Criteria;

public interface InteriorAskMapper {

	public void create(InteriorAskVO interiorAsk) throws Exception;

	public List<InteriorAskVO> selectInteriorAskList() throws Exception;

	public InteriorAskVO read(Integer num) throws Exception;

	public List<InteriorAskVO> listPage(HashMap<String, Integer> param) throws Exception;

	public List<InteriorAskVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	public void update(InteriorAskVO vo) throws Exception;

	public void delete(Integer num) throws Exception;

	public List<InteriorAskVO> selectByEmail(String email) throws Exception;
}
