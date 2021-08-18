package org.zerock.service;

import java.util.HashMap;
import java.util.List;

import org.zerock.domain.StoreVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.InteriorAskVO;
import org.zerock.domain.SearchCriteria;

public interface StoreService {

  public void create(StoreVO store) throws Exception;

  public StoreVO read(Integer prodnum) throws Exception;

  public void modify(StoreVO store) throws Exception;

  public void remove(Integer prodnum) throws Exception;

  public List<StoreVO> listStorePage(int page) throws Exception;

  public List<StoreVO> listStoreCriteria(Criteria cri) throws Exception;

  public int listStoreCountCriteria(Criteria cri) throws Exception;

//  public List<StoreVO> listSearchCriteria(SearchStoreCriteria cri) 
//      throws Exception;
//
//  public int listSearchCount(SearchStoreCriteria cri) throws Exception;
//  
//  
//  public List<String> getAttach(Integer prodnum)throws Exception;
 
  public List<StoreVO> listQuery(HashMap<String, Object> param) throws Exception;

	/*
	 * public static Object listReadCount(SearchCriteria cri) { // TODO
	 * Auto-generated method stub return null; }
	 * 
	 * public static int listSearchCount(SearchCriteria cri) { // TODO
	 * Auto-generated method stub return 0; }
	 */


  

}
