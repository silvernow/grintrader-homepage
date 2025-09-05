package grinnow.com.cmm.service;

public class Globals {
	
	public static final String LOCALDATETIME_FORMAT = "MM/dd/yyyy hh:mi:ss.Z";
	
	//프로파일 유형
	public static final String SYSTEM_PROFILE = GnnProperties.getProperty("system.config.profile");
	//OS 유형
    public static final String OS_TYPE = GnnProperties.getProperty("Globals.OsType");
    //DB 유형
    public static final String DB_TYPE = GnnProperties.getProperty("Globals.DbType");
    //로그인페이지
    public static final String LOGIN_PAGE = GnnProperties.getProperty("Globals.LoginPage");
    
    //파일 업로드 원 파일명
	public static final String ORIGIN_FILE_NM = "originalFileName";
	//파일 확장자
	public static final String FILE_EXT = "fileExtension";
	//파일크기
	public static final String FILE_SIZE = "fileSize";
	//업로드된 파일명
	public static final String UPLOAD_FILE_NM = "uploadFileName";
	//파일경로
	public static final String FILE_PATH = "filePath";
	
    //비밀번호 초기패턴
    public static final String INIT_PASSWORD_STR = "123!";
    
    //이메일발송타입
    public static final String MAIL_TY_ID = "ID";
    public static final String MAIL_TY_PW = "PW";
    
    //시스템코드
    public static final String SYSTEM_CD_ADMIN = "ADMIN";
    public static final String SYSTEM_CD_USER = "USER";
    public static final String SYSTEM_CD_APP = "APP";
    
  	//메일발송응답코드 : 발송요청
  	public static final String MAIL_RESULT_CD_R = "R";
  	//메일발송응답코드 : 발송성공
  	public static final String MAIL_RESULT_CD_C = "C";
  	//메일발송응답코드 : 발송실패
  	public static final String MAIL_RESULT_CD_F = "F";
  	
    //발신전용메일
  	public static final String MAIL_SENDER_ADDRESS = "support@grinnow.co.kr";
  	
  	//사용자등급
    public static final String USER_GRD_ADM = "ADM";
    public static final String USER_GRD_USR = "USR";
    
    //ON, OFF 코드값
    public static final String CODE_ON = "ON";
    public static final String CODE_OFF = "OFF";
    
    //Y, N 코드값
    public static final String CODE_Y = "Y";
    public static final String CODE_N = "N";
    
    //첨부 최대 파일 크기 지정
  	public static final long EDITOR_MAX_FILE_SIZE = 1024 * 1024 * 100; //업로드 최대 사이즈 설정 (100M)
  	
	//수목분류 : 교목
  	public static final String TREE_TY_AR = "AR";
  	//수목분류 : 관목
  	public static final String TREE_TY_SH = "SH";
  	//수목분류 : 묘목
  	public static final String TREE_TY_SA = "SA";
    //수목분류 : 기타
  	public static final String TREE_TY_ET = "ET";
  	
    //통계 - 나무명검색
  	public static final String SEARCH_TREE = "SEARCH_TREE";

    //뿌리오 알림톡 사용여부
  	public static final String PPURIO_SEND = GnnProperties.getProperty("Globals.Ppurio.Send");
  	
    //이폼사인-회사ID
  	public static final String SIGN_CUST_ID = "5bf7b049a0aa4e0c840d42043bd9e583";
    //이폼사인-문서ID
  	public static final String SIGN_DOCUMENT_ID = "5bf7b049a0aa4e0c840d42043bd9e583";
    //이폼사인-APIKEY
  	public static final String SIGN_API_KEY = "6918188e-2b6f-4316-922b-3112ce1f9a1f";
  	//이폼사인-PRIVATEKEY
  	public static final String SIGN_PRIVATE_KEY = "3041020100301306072a8648ce3d020106082a8648ce3d030107042730250201010420697f1b07faac07bf22f1f0407b7fa76616bf1d162bab2de31f94dfdca0a8af1c";
    //이폼사인-계정아이디
  	public static final String SIGN_MEBER_ID = "admin@grintrader.co.kr";
    //이폼사인-토큰생성
  	public static final String SIGN_ACCESS_TOKEN_URL = "https://api.eformsign.com/v2.0/api_auth/access_token";
  	//이폼사인-문서생성
  	public static final String SIGN_DOCUMENT_CREATE_URL = "https://kr-api.eformsign.com/v2.0/api/documents?template_id=";
    //이폼사인-파일다운로드
  	public static final String SIGN_DOCUMENT_DOWN_URL = "https://kr-api.eformsign.com/v2.0/api/documents/";
    //이폼사인 로그 업무코드
  	public static final String WORKTY_COMPLETE = "COMPLETE";
  	public static final String WORKTY_CREATED = "CREATED";
}
