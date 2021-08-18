package org.zerock.service;

import java.util.List;

//import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.StoreReviewVO;
//import org.zerock.mapper.StoreMapper;
import org.zerock.mapper.StoreReviewMapper;

@Service
public class StoreReviewServiceImpl implements StoreReviewService {

//  @Inject
//  private StoreReviewDAO replyDAO;
//  
//  @Inject
//  private StoreDAO boardDAO;
	
//	@Autowired
//	private StoreMapper storeMapper;
	
	@Autowired
	private StoreReviewMapper storeReviewMapper;

  @Transactional
  @Override
  public void addReview(StoreReviewVO vo) throws Exception {
	  storeReviewMapper.create(vo);
  }
  
  @Transactional
  @Override
  public void removeReview(Integer num) throws Exception {
    storeReviewMapper.delete(num);
  }   



  @Override
public void updateGrade(Integer prodnum) throws Exception {
	  storeReviewMapper.updateGrade(prodnum);
}

@Override
  public List<StoreReviewVO> listReview(Integer bno) throws Exception {

    return storeReviewMapper.list(bno);
  }

  @Override
  public void modifyReview(StoreReviewVO vo) throws Exception {

	  storeReviewMapper.update(vo);
  }



  @Override
  public List<StoreReviewVO> listReviewPage(Integer bno, Criteria cri) 
      throws Exception {

    return storeReviewMapper.listPage(bno, cri);
  }

  @Override
  public int count(Integer bno) throws Exception {

    return storeReviewMapper.count(bno);
  }

}
