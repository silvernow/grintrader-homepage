package grinnow.com.page.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.property.EgovPropertyService;
import grinnow.com.common.util.CommonUtil;
import grinnow.com.common.util.ConstantsUtil;
import grinnow.com.page.service.PageService;
import grinnow.com.page.service.PageVO;

@Service("pageService")
public class PageServiceImpl extends EgovAbstractServiceImpl implements PageService{

	@Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
	@Resource(name="pageDao")
    private PageDao pageDao;
	
	@Override
	public List<?> selectNewsletterList(PageVO pageVO) throws Exception {
   		return pageDao.selectNewsletterList(pageVO);
	}

	@Override
	public int selectNewsletterListCount(PageVO pageVO) throws Exception {
        return pageDao.selectNewsletterListCount(pageVO);
	}

	@Override
	public Map<String, Object> insertContact(Map<String, Object> insertMap) throws Exception {
		int saveResult = 0;
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			insertMap.put("message", CommonUtil.unscript(CommonUtil.isNull(insertMap.get("message"))));
			saveResult = pageDao.insertContact(insertMap);
			result.put("response", (saveResult > 0) ? ConstantsUtil.SUCCESS : ConstantsUtil.FAIL);
		} catch (Exception e) {
			throw e;
		}
		return result;
	}
}

	
