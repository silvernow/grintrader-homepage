package grinnow.com.page.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import grinnow.com.cmm.dataaccess.GnnAbstractDAO;
import grinnow.com.page.service.PageVO;

@Repository("pageDao")
public class PageDao extends GnnAbstractDAO{

	public List<?> selectNewsletterList(PageVO pageVO) throws Exception{
		return selectList("pageMapper.selectNewsletterList", pageVO);
	}

	public int selectNewsletterListCount(PageVO pageVO) throws Exception{
		return (Integer)selectOne("pageMapper.selectNewsletterListCount", pageVO);
	}
	
	public int insertContact(Map<String, Object> insertMap) throws Exception{
		return insert("pageMapper.insertContact", insertMap);
	}

}

