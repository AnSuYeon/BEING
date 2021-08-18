package org.zerock.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.StoreVO;
import org.zerock.mapper.StoreMapper;
import org.zerock.domain.Criteria;
import org.zerock.domain.InteriorAskVO;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreMapper storeMapper;

  
  @Transactional
  @Override
  public void create(StoreVO store) throws Exception {
  
	storeMapper.create(store);
  }
  
  //
//  @Override
//  public void regist(BoardVO board) throws Exception {
//    dao.create(board);
//  }

//  @Override
//  public BoardVO read(Integer bno) throws Exception {
//    return dao.read(bno);
//  }


  @Transactional(isolation=Isolation.READ_COMMITTED)
  @Override
  public StoreVO read(Integer prodnum) throws Exception {
	 return storeMapper.read(prodnum);
  }

  
//  @Override
//  public void modify(BoardVO board) throws Exception {
//    dao.update(board);
//  }
  
  @Transactional
  @Override
  public void modify(StoreVO store) throws Exception {
	  storeMapper.update(store);
  }
  

//  @Override
//  public void remove(Integer bno) throws Exception {
//    dao.delete(bno);
//  }
  
  
  @Transactional
  @Override
  public void remove(Integer prodnum) throws Exception {
	  storeMapper.delete(prodnum);
  } 

  @Override
  public List<StoreVO> listStorePage(int page) throws Exception {
	  if (page <= 0) {
	      page = 1;
	    }
	    page = (page - 1) * 10;
    return storeMapper.listStorePage(page);
  }

  @Override
  public List<StoreVO> listStoreCriteria(Criteria cri) throws Exception {

    return storeMapper.listStoreCriteria(cri);
  }

  @Override
  public int listStoreCountCriteria(Criteria cri) throws Exception {

    return storeMapper.countStorePaging(cri);
  }

//  @Override
//  public List<StoreVO> listSearchCriteria(SearchStoreCriteria cri) throws Exception {
//
//    return storeMapper.listSearch(cri);
//  }
//
//  @Override
//  public int listSearchCount(SearchStoreCriteria cri) throws Exception {
//
//    return storeMapper.listSearchCount(cri);
//  }
//  
//
//  @Override
//  public List<String> getAttach(Integer bno) throws Exception {
//    
//    return dao.getAttach(bno);
//  }  
  
  @Override
	public List<StoreVO> listQuery(HashMap<String, Object> param) throws Exception {
		
		return storeMapper.listQuery(param);
	}

}
