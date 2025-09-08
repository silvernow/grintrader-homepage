package grinnow.com.page.service;

import java.io.Serializable;

import grinnow.com.cmm.service.ComDefaultVO;

public class PageVO extends ComDefaultVO implements Serializable {

	private static final long serialVersionUID = -7211806599814418297L;

	/** press아이디 */
	private String pressId;
	
	/** 시스템코드 */
	private String systemCd;
	
	/** 시스템코드명 */
	private String systemCdNm;
	
	/** 출처 */
	private String originName;
	
	/** 제목 */
	private String pressTitle;
	
	/** 링크 */
	private String pressLink;
	
	/** 뉴스레터타입 */
	private String pressTy;
	
	/** 뉴스레터타입명 */
	private String pressTyNm;
	
	/** 사용여부 */
	private String useYn;
	
	/** 중요여부 */
	private String impYn;
	
	/** 등록일시 */
	private String creDt;
	
	
	public String getPressId() {
		return pressId;
	}

	public void setPressId(String pressId) {
		this.pressId = pressId;
	}

	public String getSystemCd() {
		return systemCd;
	}

	public void setSystemCd(String systemCd) {
		this.systemCd = systemCd;
	}

	public String getSystemCdNm() {
		return systemCdNm;
	}

	public void setSystemCdNm(String systemCdNm) {
		this.systemCdNm = systemCdNm;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getPressTitle() {
		return pressTitle;
	}

	public void setPressTitle(String pressTitle) {
		this.pressTitle = pressTitle;
	}

	public String getPressLink() {
		return pressLink;
	}

	public void setPressLink(String pressLink) {
		this.pressLink = pressLink;
	}

	public String getPressTy() {
		return pressTy;
	}

	public void setPressTy(String pressTy) {
		this.pressTy = pressTy;
	}
	
	public String getPressTyNm() {
		return pressTyNm;
	}

	public void setPressTyNm(String pressTyNm) {
		this.pressTyNm = pressTyNm;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public String getCreDt() {
		return creDt;
	}

	public void setCreDt(String creDt) {
		this.creDt = creDt;
	}

	public String getImpYn() {
		return impYn;
	}

	public void setImpYn(String impYn) {
		this.impYn = impYn;
	}
}
