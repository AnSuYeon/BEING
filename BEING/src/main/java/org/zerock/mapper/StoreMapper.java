package org.zerock.mapper;

import java.util.HashMap;
import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.InteriorAskVO;
import org.zerock.domain.StoreVO;

public interface StoreMapper {
	
public void create(StoreVO store) throws Exception;
	
	public List<StoreVO> selectStoreList() throws Exception;
	
	 public StoreVO read(Integer prodnum) throws Exception;
	 
	 public List<StoreVO> listStorePage(int page) throws Exception;

	  public List<StoreVO> listStoreCriteria(Criteria cri) throws Exception;

	  public int countStorePaging(Criteria cri) throws Exception;
	  
	   public void update(StoreVO vo) throws Exception;

	   public void delete(Integer prodnum) throws Exception;
	   
	   public List<StoreVO> listQuery(HashMap<String, Object> param) throws Exception;

	
}
