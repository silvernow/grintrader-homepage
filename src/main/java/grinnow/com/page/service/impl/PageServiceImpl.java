package grinnow.com.page.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.property.EgovPropertyService;
import grinnow.com.page.service.PageService;

@Service("pageService")
public class PageServiceImpl extends EgovAbstractServiceImpl implements PageService{

	@Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
	@Resource(name="pageDao")
    private PageDao pageDao;
	
	
}

	
