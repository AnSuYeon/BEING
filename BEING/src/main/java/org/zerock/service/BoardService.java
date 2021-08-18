package org.zerock.service;

import java.util.ArrayList;
import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FileVO;
import org.zerock.domain.SearchCriteria;

public interface BoardService {
	
	public void create(BoardVO param, List<FileVO> filelist) throws Exception;
	
	public List<BoardVO> selectBoardList() throws Exception;
	
	 public BoardVO read(Integer num) throws Exception;
	 
	 public List<BoardVO> listPage(int page) throws Exception;

	 public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	 public int listCountCriteria(Criteria cri) throws Exception;
	 
	 public void modify(BoardVO board, List<FileVO> filelist) throws Exception;

	 public void remove(Integer num) throws Exception;
	 
	 public List<FileVO> selectBoardFileList(Integer num) throws Exception;
	 
	 public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	 
	 public int listSearchCount(SearchCriteria cri) throws Exception;
	 
	 // 검색 기능
	 public ArrayList<BoardVO> listQuery(String query, String content) throws Exception;
	 
	 // 조회수
	 public void readCount(int num) throws Exception;
	 
	 public List<BoardVO> listReadCount(Criteria cri) throws Exception;
	 
	 public List<BoardVO> selectByEmail(String email) throws Exception;
}
