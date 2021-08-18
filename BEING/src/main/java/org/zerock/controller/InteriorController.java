package org.zerock.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.InteriorVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.FileUtil;

import org.zerock.domain.InteriorFileVO;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.InteriorService;

@Controller
@RequestMapping("/interior/*")
public class InteriorController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	private InteriorService interiorService;

	@RequestMapping(value = "/newInteriorForm", method = RequestMethod.GET)
	public void registerGET(InteriorVO interior, Model model) throws Exception {

		logger.info("newInteriorForm get ...........");
	}

	@RequestMapping(value = "/newInteriorForm", method = RequestMethod.POST)
	public String registPOST(InteriorVO interior, RedirectAttributes rttr) throws Exception {

		logger.info("newArticleForm post ...........");
		logger.info(interior.toString());

		FileUtil fs = new FileUtil(uploadPath);

		List<InteriorFileVO> filelist = null;
		logger.info(uploadPath);

		List<?> files = interior.getUploadfile();

		if (files != null && !files.isEmpty()) {
			filelist = fs.saveAllInteriorFiles(interior.getUploadfile());
		}

		interiorService.create(interior, filelist);

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(interior.toString());

		return "redirect:/interior/listInterior";
	}

	@RequestMapping(value = "/listInterior", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		model.addAttribute("listInterior", interiorService.listCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		pageMaker.setTotalCount(interiorService.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/readInterior", method = RequestMethod.GET)
	public void read(@RequestParam("num") int num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {

		List<?> listview = interiorService.selectInteriorFileList(num);

		model.addAttribute(interiorService.read(num));
		model.addAttribute("listview", listview);
	}

	@RequestMapping(value = "/remove", method = { RequestMethod.POST, RequestMethod.GET })
	public String remove(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {

		interiorService.remove(num);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/interior/listInterior";
	}

	@RequestMapping(value = "/modifyInteriorForm", method = RequestMethod.GET)
	public void modifyGET(int num, Model model) throws Exception {

		model.addAttribute(interiorService.read(num));
	}

	@RequestMapping(value = "/modifyInteriorForm", method = RequestMethod.POST)
	public String modifyPOST(InteriorVO interior, RedirectAttributes rttr) throws Exception {

		logger.info("mod post............");

		interiorService.modify(interior);
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/interior/listInterior";
	}

	@RequestMapping("/listQuery")
	public String listQuery(HttpServletRequest request, Model model) throws Exception {
//	 		boardService = sqlSession.getMapper(boardService.class);
		model.addAttribute("listInterior",
				interiorService.listQuery(request.getParameter("query"), request.getParameter("content")));

		return "interior/listInterior";
	}

}
