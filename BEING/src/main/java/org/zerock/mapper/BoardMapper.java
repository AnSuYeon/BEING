package org.zerock.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FileVO;
import org.zerock.domain.SearchCriteria;

public interface BoardMapper {
	
public void create(BoardVO board) throws Exception;
	
	public List<BoardVO> selectBoardList() throws Exception;
	
	 public BoardVO read(Integer num) throws Exception;
	 
	 public List<BoardVO> listPage(int page) throws Exception;

	  public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	  public int countPaging(Criteria cri) throws Exception;
	  
	   public void update(BoardVO vo) throws Exception;

	   public void delete(Integer num) throws Exception;
	 
	  public List<FileVO> selectBoardFileList(Integer num) throws Exception;
	  
	  public FileVO selectBoardFileList1(Integer num) throws Exception;
	  
	  public void deleteBoardFile(Integer num) throws Exception;
	  
	  public void insertBoardFile(FileVO fileVO) throws Exception;
	  
	  public void updateBoardFile(FileVO fileVO) throws Exception;
	  
	  public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
	  
	  public int listSearchCount(SearchCriteria cri)throws Exception;

	  public ArrayList<BoardVO> listQuery(String query, String content) throws Exception;
	  
	  public void readCount(int num) throws Exception;
	  
	  public List<BoardVO> listReadCount(Criteria cri) throws Exception;
	  
	  public List<BoardVO> selectByEmail(String email) throws Exception;

}

