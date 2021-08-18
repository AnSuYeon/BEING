package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.FaqVO;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.FaqService;

@Controller
@RequestMapping("/faq/*")
public class FaqController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private FaqService faqService;
	
	 @RequestMapping(value = "/newFaqForm", method = RequestMethod.GET)
	  public void registerGET(FaqVO faq, Model model) throws Exception {

	    logger.info("newFaqForm get ...........");
	  }

	  @RequestMapping(value = "/newFaqForm", method = RequestMethod.POST)
	  public String registPOST(FaqVO faq, RedirectAttributes rttr) throws Exception {

	    logger.info("newFaqForm post ...........");
	    logger.info(faq.toString());

	    faqService.create(faq);

	    rttr.addFlashAttribute("msg", "SUCCESS");
	    
	    logger.info(faq.toString());
	    
	    return "redirect:/faq/listFaq";
	  }
	  
		
	 @RequestMapping(value = "/listFaq", method = RequestMethod.GET) 
	  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws
		  Exception {
		  
		  logger.info(cri.toString());
		  
		  model.addAttribute("listFaq", faqService.listCriteria(cri));
		  
		  PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
		  
		  pageMaker.setTotalCount(faqService.listCountCriteria(cri));
		  
		  model.addAttribute("pageMaker", pageMaker); }
		  
		  
		 
		  @RequestMapping(value = "/readFaq", method = RequestMethod.GET)
		  public void read(@RequestParam("num") int num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		
		  model.addAttribute(faqService.read(num)); }
		  
		   
		  @RequestMapping(value = "/remove", method = {RequestMethod.POST,RequestMethod.GET})
		  public String remove(@RequestParam("num") int num,RedirectAttributes rttr) throws Exception {
		  
			  faqService.remove(num);
		  
		  rttr.addFlashAttribute("msg", "SUCCESS");
		  
		  return "redirect:/faq/listFaq"; }
		 
		 
		  @RequestMapping(value = "/modifyFaqForm", method = RequestMethod.GET)
		  public void modifyGET(int num, Model model) throws Exception {
		  
		  model.addAttribute(faqService.read(num)); }
		  
		  @RequestMapping(value = "/modifyFaqForm", method = RequestMethod.POST)
		  public String modifyPOST(FaqVO faq, RedirectAttributes rttr) throws
		  Exception {
		  
		  logger.info("mod post............");
		  
		  faqService.modify(faq); rttr.addFlashAttribute("msg", "SUCCESS");
		  
		 return "redirect:/faq/listFaq"; }
		 
}
