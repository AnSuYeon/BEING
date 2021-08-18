package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.domain.StoreReviewVO;
import org.zerock.domain.StoreVO;
import org.zerock.service.StoreReviewService;

@RestController
@RequestMapping("/storeReview/*")
public class StoreReviewController {

  @Inject
  private StoreReviewService service;

//  @RequestMapping(value = "/newStoreReviewForm", method = RequestMethod.POST)
//  public ResponseEntity<String> register(@RequestBody StoreReviewVO vo) {
//
//    ResponseEntity<String> entity = null;
//    try {
//      service.addReview(vo);
//      service.updateGrade(vo.getProdnum());
//      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
//    } catch (Exception e) {
//      e.printStackTrace();
//      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
//    }
//    return entity;
//  }
  
  @RequestMapping(value = "/newStoreReviewForm", method = RequestMethod.GET)
  public void registGET() throws Exception {

//    logger.info("regist get ...........");
  }

  @RequestMapping(value = "/newStoreReviewForm", method = RequestMethod.POST)
  public String registPOST(StoreReviewVO vo, RedirectAttributes rttr) throws Exception {

//    logger.info("regist post ...........");
//    logger.info(store.toString());

    service.addReview(vo);

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/store/readStore?prodnum="+vo.getProdnum();
  }
  

  @RequestMapping(value = "/all/{prodnum}", method = RequestMethod.GET)
  public ResponseEntity<List<StoreReviewVO>> list(@PathVariable("prodnum") Integer prodnum) {

    ResponseEntity<List<StoreReviewVO>> entity = null;
    try {
      entity = new ResponseEntity<>(service.listReview(prodnum), HttpStatus.OK);

    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    return entity;
  }

  @RequestMapping(value = "/{num}", method = { RequestMethod.PUT, RequestMethod.PATCH })
  public ResponseEntity<String> update(@PathVariable("num") Integer num, @RequestBody StoreReviewVO vo) {

    ResponseEntity<String> entity = null;
    try {
      vo.setNum(num);
      service.modifyReview(vo);
      service.updateGrade(vo.getProdnum());

      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }
    return entity;
  }

  @RequestMapping(value = "/{num}", method = RequestMethod.DELETE)
  public ResponseEntity<String> remove(@PathVariable("num") Integer num, @PathVariable("prodnum") Integer prodnum) {

    ResponseEntity<String> entity = null;
    try {
      service.removeReview(num);
      service.updateGrade(prodnum);
      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }
    return entity;
  }

  @RequestMapping(value = "/{prodnum}/{page}", method = RequestMethod.GET)
  public ResponseEntity<Map<String, Object>> listPage(
      @PathVariable("prodnum") Integer prodnum,
      @PathVariable("page") Integer page) {

    ResponseEntity<Map<String, Object>> entity = null;
    
    try {
      Criteria cri = new Criteria();
      cri.setPage(page);

      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);

      Map<String, Object> map = new HashMap<String, Object>();
      List<StoreReviewVO> list = service.listReviewPage(prodnum, cri);

      map.put("list", list);

      int ReviewCount = service.count(prodnum);
      pageMaker.setTotalCount(ReviewCount);

      map.put("pageMaker", pageMaker);

      entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);

    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
    }
    return entity;
  }

}
