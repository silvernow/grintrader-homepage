package grinnow.com.page.service;

import java.util.List;
import java.util.Map;

public interface PageService {

	public List<?> selectNewsletterList(PageVO pageVO) throws Exception;

	public int selectNewsletterListCount(PageVO pageVO) throws Exception;

	public Map<String, Object> insertContact(Map<String, Object> insertMap) throws Exception;

}
