package org.zerock.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.InteriorVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FileUtil;
import org.zerock.domain.FileVO;
import org.zerock.domain.InteriorFileVO;
import org.zerock.mapper.InteriorMapper;

@Service
public class InteriorServiceImpl implements InteriorService {

	@Autowired
	private InteriorMapper interiorMapper;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Override
	@Transactional
	public void create(InteriorVO interior, List<InteriorFileVO> filelist) throws Exception {

		if (interior.getNum() == null || "".equals(interior.getNum())) {
			interiorMapper.create(interior);
		}

		if (filelist != null) {
			for (InteriorFileVO f : filelist) {
				f.setParentPK(interior.getNum());
				interiorMapper.insertInteriorFile(f);
			}
		}
	}

	@Override
	@Transactional
	public List<InteriorVO> selectInteriorList() throws Exception {
		return interiorMapper.selectInteriorList();
	}

	@Override
	public List<InteriorVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return interiorMapper.listPage(page);
	}

	@Override
	public List<InteriorVO> listCriteria(Criteria cri) throws Exception {
		List<InteriorVO> interior_list = interiorMapper.listCriteria(cri);

		for (InteriorVO interiorVO : interior_list) {
			InteriorFileVO interiorFileVO = interiorMapper.selectInteriorFileList1(interiorVO.getNum());
			if (interiorFileVO != null) {
				interiorVO.setFilename(interiorFileVO.getFilename());
				interiorVO.setRealname(interiorFileVO.getRealname());
			}
		}

		return interior_list;
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return interiorMapper.countPaging(cri);
	}

	@Override
	@Transactional
	public InteriorVO read(Integer num) throws Exception {
		return interiorMapper.read(num);
	}

	@Override
	public void modify(InteriorVO interior) throws Exception {
		interiorMapper.update(interior);
	}

	@Override
	public void remove(Integer num) throws Exception {

		FileUtil fs = new FileUtil(uploadPath);
		System.out.println(fs);
		List<InteriorFileVO> files = interiorMapper.selectInteriorFileList(num);

		interiorMapper.deleteInteriorFile(num);

		interiorMapper.delete(num);

		fs.deleteInteriorFiles(files);
	}

	@Override
	public List<InteriorFileVO> selectInteriorFileList(Integer num) throws Exception {
		return interiorMapper.selectInteriorFileList(num);
	}

	@Override
	@Transactional
	public ArrayList<InteriorVO> listQuery(String query, String content) throws Exception {
		return interiorMapper.listQuery(query, content);
	}
}
