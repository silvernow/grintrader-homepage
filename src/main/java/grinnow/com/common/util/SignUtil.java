package grinnow.com.common.util;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import java.util.Base64.Encoder;
import java.util.Date;

import grinnow.com.cmm.service.Globals;

public class SignUtil {

	private static final String[] units = {"", "십", "백", "천"};
	private static final String[] numbers = {"", "일", "이", "삼", "사", "오", "육", "칠", "팔", "구"};
	private static final String[] bigUnits = {"", "만", "억", "조", "경"};
	    
	public static String signBase64() throws Exception{
		String text = Globals.SIGN_API_KEY;
		byte[] targetBytes = text.getBytes();

		Encoder encoder = Base64.getEncoder();
		byte[] encodedBytes = encoder.encode(targetBytes);

		/*Decoder decoder = Base64.getDecoder();
		byte[] decodedBytes = decoder.decode(encodedBytes);

		System.out.println("인코딩 전 : " + text);
		System.out.println("인코딩 text : " + new String(encodedBytes));
		System.out.println("디코딩 text : " + new String(decodedBytes));*/
		
		return new String(encodedBytes);
	}

	public static String signature() throws Exception{
		String privateKeyHexStr = Globals.SIGN_PRIVATE_KEY;
		KeyFactory keyFact = KeyFactory.getInstance("EC");
		PKCS8EncodedKeySpec psks8KeySpec = new PKCS8EncodedKeySpec(new BigInteger(privateKeyHexStr, 16).toByteArray());
		PrivateKey privateKey = keyFact.generatePrivate(psks8KeySpec);

		long execution_time = new Date().getTime();
		String execution_time_str = String.valueOf(execution_time);

		Signature ecdsa = Signature.getInstance("SHA256withECDSA");
		ecdsa.initSign(privateKey);
		ecdsa.update(execution_time_str.getBytes("UTF-8"));
		String eformsign_signature = new BigInteger(ecdsa.sign()).toString(16);

		System.out.print("execution_time : " + execution_time + "\n");
		System.out.print("eformsign_signature : " + eformsign_signature);
		
		return execution_time + "#@" + eformsign_signature;
	}
	
	public static String isMoneyKor(String money) throws Exception{
		if("".equals(CommonUtil.isNull(money))) {
			return "";
		}
		
		long amount = Long.parseLong(money);
		if (amount == 0) {
			return "영";
		}

		StringBuilder result = new StringBuilder();
		int bigUnitIndex = 0;

		// 금액을 4자리씩 끊어 처리
		while (amount > 0) {
			int part = (int) (amount % 10000);
			if (part > 0) {
				result.insert(0, convertFourDigitNumber(part) + bigUnits[bigUnitIndex]);
			}
			amount /= 10000;
			bigUnitIndex++;
		}

		return result.toString();
	}

	private static String convertFourDigitNumber(int number) throws Exception{
		StringBuilder part = new StringBuilder();
		int unitIndex = 0;
		boolean isZero = false;

		// 4자리씩 한 번에 처리
		while (number > 0) {
			int digit = number % 10;
			if (digit > 0) {
				if (isZero) {
					part.insert(0, numbers[0]); // "영"을 삽입
					isZero = false;
				}
				part.insert(0, numbers[digit] + units[unitIndex]);
			} else {
				isZero = true; // 0이 연속되면 "영"을 삽입
			}
			number /= 10;
			unitIndex++;
		}
		return part.toString();
	}
}
