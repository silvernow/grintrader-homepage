package grinnow.com.page.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import grinnow.com.cmm.exception.ErrorCode;
import grinnow.com.cmm.exception.ProcessingException;
import grinnow.com.cmm.service.GnnMessageSource;
import grinnow.com.page.service.PageService;
import grinnow.com.page.service.PageVO;

@Controller
@RequestMapping(value="/page")
public class PageController {

	@Resource(name = "gnnMessageSource")
	private GnnMessageSource gnnMessageSource;
	
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    @Resource(name = "pageService")
	private PageService pageService;
	
	@RequestMapping(value="/index", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageIndex(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/index";
	}
	
	@RequestMapping(value="/intro", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageIntro(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/intro";
	}
	
	@RequestMapping(value="/business", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageBusiness(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/business";
	}
	
	@RequestMapping(value="/location", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageLocation(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/location";
	}
	
	@RequestMapping(value="/newsletter", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageNewsletter(@ModelAttribute("pageVO") PageVO pageVO
			, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
			pageVO.setPageUnit(propertiesService.getInt("pageUnit"));
			pageVO.setPageSize(propertiesService.getInt("pageSize"));

	    	PaginationInfo paginationInfo = new PaginationInfo();
			paginationInfo.setCurrentPageNo(pageVO.getPageIndex());
			paginationInfo.setRecordCountPerPage(pageVO.getPageUnit());
			paginationInfo.setPageSize(pageVO.getPageSize());

			pageVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
			pageVO.setLastIndex(paginationInfo.getLastRecordIndex());
			pageVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	        List<?> newsList = pageService.selectNewsletterList(pageVO);
	        model.addAttribute("newsList", newsList);
	        model.addAttribute("pageVO", pageVO);

	        int totCnt = pageService.selectNewsletterListCount(pageVO);
			paginationInfo.setTotalRecordCount(totCnt);
	        model.addAttribute("paginationInfo", paginationInfo);
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/newsletter";
	}
	
	@RequestMapping(value="/contact_insert", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertContact(@RequestBody Map<String, Object> insertMap
			, HttpServletRequest request, HttpServletResponse response
		) throws Exception{

		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		try {
		    resultMap = pageService.insertContact(insertMap);
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return resultMap;
	}
}


