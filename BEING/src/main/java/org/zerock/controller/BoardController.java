package org.zerock.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FileUtil;
import org.zerock.domain.FileVO;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	private BoardService boardService;

	@RequestMapping(value = "/newArticleForm", method = RequestMethod.GET)
	public void registerGET(BoardVO board, Model model) throws Exception {

		logger.info("newArticleForm get ...........");
	}

	@RequestMapping(value = "/newArticleForm", method = RequestMethod.POST)
	public String registPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		logger.info("newArticleForm post ...........");
		logger.info(board.toString());

		FileUtil fs = new FileUtil(uploadPath);

		List<FileVO> filelist = null;
		logger.info(uploadPath);

		List<?> files = board.getUploadfile();

		// logger.info(((FileVO)files.toArray()[0]).getFilename());

		if (files != null && !files.isEmpty()) {
			filelist = fs.saveAllFiles(board.getUploadfile());
		}

		boardService.create(board, filelist);

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(board.toString());

		return "redirect:/board/listArticle";
	}

	@RequestMapping(value = "/listArticle", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		model.addAttribute("listArticle", boardService.listCriteria(cri));
//	    model.addAttribute("listArticle", boardService.listPage(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

//		pageMaker.setTotalCount(boardService.listCountCriteria(cri));
		pageMaker.setTotalCount(boardService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/readArticle", method = RequestMethod.GET)
	public void read(@RequestParam("num") int num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		
		boardService.readCount(num); // 조회수 증가 service 실행
		List<?> listview = boardService.selectBoardFileList(num);

		// logger.info(((FileVO)listview.toArray()[0]).getFilename());

		model.addAttribute(boardService.read(num));
		model.addAttribute("listview", listview);
	}

	@RequestMapping(value = "/remove", method = { RequestMethod.POST, RequestMethod.GET })
	public String remove(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {

		boardService.remove(num);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/board/listArticle";
	}

	@RequestMapping(value = "/modifyForm", method = RequestMethod.GET)
	public void modifyGET(int num, Model model) throws Exception {

		List<?> listview = boardService.selectBoardFileList(num);

		model.addAttribute(boardService.read(num));
		model.addAttribute("listview", listview);
	}

	@RequestMapping(value = "/modifyForm", method = RequestMethod.POST)
	public String modifyPOST(BoardVO board, RedirectAttributes rttr) throws Exception {

		FileUtil fs = new FileUtil(uploadPath);

		List<FileVO> filelist = null;

		logger.info(uploadPath);
		List<?> files = board.getUploadfile();

		if (files != null && !files.isEmpty()) {
			fs.deleteFiles(boardService.selectBoardFileList(board.getNum()));
			filelist = fs.saveAllFiles(board.getUploadfile(), board.getNum());
		}

		boardService.modify(board, filelist);
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/board/listArticle";
	}

	@RequestMapping(value = "/fileDownload")
	public void fileDownload(HttpServletRequest request, HttpServletResponse response) {
		// String path = "d:\\workspace\\fileupload\\";

		String filename = request.getParameter("filename");
		String downname = request.getParameter("downname");
		String realPath = "";

		if (filename == null || "".equals(filename)) {
			filename = downname;
		}

		try {
			filename = URLEncoder.encode(filename, "UTF-8");
		} catch (UnsupportedEncodingException ex) {
			System.out.println("UnsupportedEncodingException");
		}

		realPath = uploadPath + "/" + downname.substring(0, 4) + "/" + downname;
		System.out.println(realPath);
		File file1 = new File(realPath);
		System.out.println(file1);
		if (!file1.exists()) {
			return;
		}

		// �뙆�씪紐� 吏��젙
		response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
		try {
			OutputStream os = response.getOutputStream();
			FileInputStream fis = new FileInputStream(realPath);

			int ncount = 0;
			byte[] bytes = new byte[512];

			while ((ncount = fis.read(bytes)) != -1) {
				os.write(bytes, 0, ncount);
			}
			fis.close();
			os.close();
		} catch (FileNotFoundException ex) {
			System.out.println("FileNotFoundException");
		} catch (IOException ex) {
			System.out.println("IOException");
		}
	}

	// 검색 기능

	@RequestMapping("/listQuery")
	public String listQuery(HttpServletRequest request, Model model) throws Exception {
//		boardService = sqlSession.getMapper(boardService.class);
		model.addAttribute("listArticle", boardService.listQuery(request.getParameter("query"), request.getParameter("content")));

		return "board/listArticle";
	}
	
	@RequestMapping(value = "/listReadCount", method = RequestMethod.GET)
	public void listPage1(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		model.addAttribute("listArticle", boardService.listReadCount(cri));
//	    model.addAttribute("listArticle", boardService.listPage(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

//		pageMaker.setTotalCount(boardService.listCountCriteria(cri));
		pageMaker.setTotalCount(boardService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
}
