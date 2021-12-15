package ch11_el;

import java.text.DecimalFormat;
//EL에서 static() 사용하기(270)
public class FormatUtil {

	public static String number(long number, String pattern) {
		DecimalFormat format = new DecimalFormat(pattern);
		return format.format(number);//123456=>123,456
	}
}
