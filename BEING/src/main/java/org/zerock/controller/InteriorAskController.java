package org.zerock.controller;

import java.util.HashMap;
import java.util.List;

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
import org.zerock.domain.InteriorAskVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.InteriorAskService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/interiorAsk/*")
public class InteriorAskController {

	private static final Logger logger = LoggerFactory.getLogger(InteriorAskController.class);

	@Inject
	private  InteriorAskService interiorAskService;
	
	 @RequestMapping(value = "/newInteriorAskForm", method = RequestMethod.GET)
	  public void registerGET(InteriorAskVO interiorAsk, Model model, HttpServletRequest request) throws Exception {

	    logger.info("newInteriorAskForm get ...........");
	    String datestart = request.getParameter("dateStart");
	  }

	  // @RequestMapping(value = "/register", method = RequestMethod.POST)
	  // public String registPOST(BoardVO board, Model model) throws Exception {
	  //
	  // logger.info("regist post ...........");
	  // logger.info(board.toString());
	  //
	  // service.regist(board);
	  //
	  // model.addAttribute("result", "success");
	  //
	  // //return "/board/success";
	  // return "redirect:/board/listAll";
	  // }

	  @RequestMapping(value = "/newInteriorAskForm", method = RequestMethod.POST)
	  public String registPOST(InteriorAskVO interiorAsk, RedirectAttributes rttr, HttpServletRequest request) throws Exception {

	    logger.info("newInteriorAskForm post ...........");
	    logger.info(interiorAsk.toString());

	    interiorAskService.create(interiorAsk);

	    rttr.addFlashAttribute("msg", "SUCCESS");
	    
	    logger.info(interiorAsk.toString());
	    
	    return "redirect:/interiorAsk/readInteriorAsk";
	  }


	  @RequestMapping(value = "/listInteriorAsk", method = RequestMethod.GET)
	  public void listPage(HttpServletRequest request, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	    logger.info(cri.toString());
	    //int page = Integer.parseInt(request.getParameter("page"));
	    int page = request.getParameter("page") != null 
	    		? Integer.parseInt(request.getParameter("page")) : 1;
	    int perPageNum = request.getParameter("perPageNum") != null
	    		? Integer.parseInt(request.getParameter("perPageNum")) : 10;
	    		
	    HashMap<String, Integer> param = new HashMap();
	    param.put("page", page);
	    param.put("perPageNum", perPageNum);
	    
	    		
	     model.addAttribute("listInteriorAsk", interiorAskService.listPage(param));
//	    model.addAttribute("listArticle", boardService.listPage(page));

	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);

	     pageMaker.setTotalCount(interiorAskService.listCountCriteria(cri));
//	    pageMaker.setTotalCount(boardService.listSearchCount(cri));
	     model.addAttribute("params", param);

	    model.addAttribute("pageMaker", pageMaker);
	  }
	

	 
	  @RequestMapping(value = "/readInteriorAsk", method = RequestMethod.GET)
	    public void selectInteriorAskList(@RequestParam("num") int num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
	      model.addAttribute(interiorAskService.read(num));
	      
	      InteriorAskVO result = interiorAskService.read(num);
	      System.out.println("111"+result.toString());
	   }
	  
	  @RequestMapping(value = "/readInteriorAsk2", method = RequestMethod.GET)
	     public void selectInteriorAskList2(@RequestParam("num") int num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {

	       model.addAttribute(interiorAskService.read(num));
	       InteriorAskVO result = interiorAskService.read(num);
		      System.out.println("222"+result.toString());
	    
	     }
	  
	  @RequestMapping(value = "/readInteriorAsk3", method = RequestMethod.GET)
	     public void selectInteriorAskList3(@RequestParam("num") int num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {

	       model.addAttribute(interiorAskService.read(num));
	       
	       
	       InteriorAskVO result = interiorAskService.read(num);
		      System.out.println("333"+result.toString());
	       
	     }
	   
	     @RequestMapping(value = "/remove", method = {RequestMethod.POST ,RequestMethod.GET})
	     public String remove(@RequestParam("num") int num, RedirectAttributes rttr) throws Exception {

	    	 interiorAskService.remove(num);

	       rttr.addFlashAttribute("msg", "SUCCESS");

	       return "redirect:/interiorAsk/listInteriorAsk";
	     }

	     @RequestMapping(value = "/modifyInteriorAsk1", method = RequestMethod.GET)
	     public void modifyGET(int num, Model model) throws Exception {

	       model.addAttribute(interiorAskService.read(num));
	     }

	     @RequestMapping(value = "/modifyInteriorAsk1", method = RequestMethod.POST)
	     public String modifyPOST(InteriorAskVO interiorAsk, RedirectAttributes rttr) throws Exception {

	       logger.info("mod post............");

	       interiorAskService.modify(interiorAsk);
	       rttr.addFlashAttribute("msg", "SUCCESS");

	       return "redirect:/interiorAsk/readInteriorAsk2?num="+interiorAsk.getNum();
	     }
	     
	     @RequestMapping(value = "/modifyInteriorAsk2", method = RequestMethod.GET)
	     public void modify2GET(int num, Model model) throws Exception {

	       model.addAttribute(interiorAskService.read(num));
	     }

	     @RequestMapping(value = "/modifyInteriorAsk2", method = RequestMethod.POST)
	     public String modify2POST(InteriorAskVO interiorAsk, RedirectAttributes rttr) throws Exception {

	       logger.info("mod post............");

	       interiorAskService.modify2(interiorAsk);
	       rttr.addFlashAttribute("msg", "SUCCESS");

	       return "redirect:/interiorAsk/readInteriorAsk3?num="+interiorAsk.getNum();
	     }
	     
	     
	
}
