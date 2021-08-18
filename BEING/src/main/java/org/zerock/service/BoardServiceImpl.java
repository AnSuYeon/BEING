package org.zerock.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.controller.BoardController;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FileUtil;
import org.zerock.domain.FileVO;
import org.zerock.domain.SearchCriteria;
import org.zerock.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Autowired
	private BoardMapper boardMapper;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Override
	@Transactional
	public void create(BoardVO param, List<FileVO> filelist) throws Exception {

		if (param.getNum() == null || "".equals(param.getNum())) {
			boardMapper.create(param);
		}

		if (filelist != null) {
			for (FileVO f : filelist) {
				f.setParentPK(param.getNum());
				boardMapper.insertBoardFile(f);
			}
		}

	}

	@Override
	@Transactional
	public List<BoardVO> selectBoardList() throws Exception {
		return boardMapper.selectBoardList();
	}

	@Override
	@Transactional
	public ArrayList<BoardVO> listQuery(String query, String content) throws Exception {
		ArrayList<BoardVO> board_list = boardMapper.listQuery(query, content);

		for (BoardVO boardVO : board_list) {
			FileVO fileVO = boardMapper.selectBoardFileList1(boardVO.getNum());
			if (fileVO != null) {
				boardVO.setFileName(fileVO.getFilename());
				boardVO.setFileRealName(fileVO.getRealname());
			}
		}

		return board_list;
	}

	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return boardMapper.listPage(page);
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		List<BoardVO> board_list = boardMapper.listCriteria(cri);

		for (BoardVO boardVO : board_list) {
			FileVO fileVO = boardMapper.selectBoardFileList1(boardVO.getNum());
			if (fileVO != null) {
				boardVO.setFileName(fileVO.getFilename());
				boardVO.setFileRealName(fileVO.getRealname());
			}
		}

		return board_list;
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return boardMapper.countPaging(cri);
	}

	@Override
	@Transactional
	public BoardVO read(Integer num) throws Exception {
		return boardMapper.read(num);
	}

	// @Override
	// public void modify(BoardVO board) throws Exception {
	// boardMapper.update(board);
	// }

	@Override
	public void modify(BoardVO board, List<FileVO> filelist) throws Exception {

		boardMapper.update(board);

		if (filelist != null) {
			boardMapper.deleteBoardFile(board.getNum());
			for (FileVO f : filelist) {
				f.setParentPK(board.getNum());
				boardMapper.updateBoardFile(f);
			}
		}

	}

	@Override
	public void remove(Integer num) throws Exception {

		FileUtil fs = new FileUtil(uploadPath);
		System.out.println(fs);
		List<FileVO> files = boardMapper.selectBoardFileList(num);

		boardMapper.deleteBoardFile(num);

		boardMapper.delete(num);

		fs.deleteFiles(files);
	}

	@Override
	public List<FileVO> selectBoardFileList(Integer num) throws Exception {
		return boardMapper.selectBoardFileList(num);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return boardMapper.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return boardMapper.listSearchCount(cri);
	}

	@Override
	public void readCount(int num) throws Exception {
		boardMapper.readCount(num);
	}

	@Override
	public List<BoardVO> listReadCount(Criteria cri) throws Exception {

		List<BoardVO> board_list = boardMapper.listReadCount(cri);

		for (BoardVO boardVO : board_list) {
			FileVO fileVO = boardMapper.selectBoardFileList1(boardVO.getNum());
			if (fileVO != null) {
				boardVO.setFileName(fileVO.getFilename());
				boardVO.setFileRealName(fileVO.getRealname());
			}
		}
		logger.info("board_list" + board_list.toArray()[5].toString());

		return board_list;
	}

	@Override
	public List<BoardVO> selectByEmail(String email) throws Exception {
		return boardMapper.selectByEmail(email);
	}
}
