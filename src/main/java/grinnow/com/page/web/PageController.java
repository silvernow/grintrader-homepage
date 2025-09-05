package grinnow.com.page.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import grinnow.com.cmm.exception.ErrorCode;
import grinnow.com.cmm.exception.ProcessingException;
import grinnow.com.cmm.service.GnnMessageSource;

@Controller
@RequestMapping(value="/page")
public class PageController {

	@Resource(name = "gnnMessageSource")
	private GnnMessageSource gnnMessageSource;
	
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
	
	@RequestMapping(value="/newsletter", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageNewsletter(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/newsletter";
	}
	
	@RequestMapping(value="/location", method = {RequestMethod.POST, RequestMethod.GET})
	public String pageLocation(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		try {
		} catch (Exception e) {
			throw new ProcessingException(e.getMessage(), ErrorCode.UNKNOWN_ERROR);
		}
		return "page/location";
	}
}


