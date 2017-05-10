package com.cornflower.characters.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Typeface;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint("SimpleDateFormat")
public class PublicUtils {
	/**
	 * 得到资源中icon
	 * 
	 * @param context
	 * @return
	 */
	public static Typeface getResourceIcon(Context context) {
		Typeface userTtf = Typeface.createFromAsset(context.getAssets(),
				"icons/iconfont.ttf");
		return userTtf;
	}

	public static Typeface getNewResourceIcon(Context context){
		Typeface userTtf = Typeface.createFromAsset(context.getAssets(),
				"home_main/iconfont.ttf");
		return userTtf;
	}

	public static Typeface getResourceIcon(Context context, String path) {
		Typeface userTtf = Typeface.createFromAsset(context.getAssets(), path);
		return userTtf;
	}

	/**
	 * yyyy-MM
	 * 
	 * @return
	 */
	@SuppressLint("SimpleDateFormat")
	public static String getDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		return sdf.format(new Date());
	}

	/*
	 *得到当前月份的上一个月份
	 * yyyy-MM
	 *
	 * @return
	 */
	@SuppressLint("SimpleDateFormat")
	public static String getLastDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
//		return sdf.format(new Date());
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.MONTH,-1);
		return sdf.format(ca.getTime());
	}

	/*
	 *如果当前月是1月上一年
	 * yyyy-MM
	 *
	 * @return
	 */
	@SuppressLint("SimpleDateFormat")
	public static String getLastDate1() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		Date dte = new Date();
		dte.setYear(dte.getYear()-1);
		dte.setMonth(11);
		return sdf.format(dte);
	}

	/**
	 * yyyyMMddHHmm
	 * 
	 * @return
	 */
	public static String getNowDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
		return sdf.format(new Date());
	}

	/**
	 * yyyy-MM-dd
	 * 
	 * @return
	 */
	public static String getNowDate2() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(new Date());
	}

	/**
	 * HHmm
	 * 
	 * @return
	 */
	public static String getNowDate3() {
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
		return sdf.format(new Date());
	}

	/**
	 * HH:mm
	 * 
	 * @return
	 */
	public static String getNowDate4() {
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
		return sdf.format(new Date());
	}

	/**
	 * yyyyMMdd
	 * 
	 * @return
	 */
	public static String getNowDate5() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(new Date());
	}

	/**
	 * yyyyMMddHHmmss
	 * 
	 * @return
	 */
	public static String getNowDate6() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return sdf.format(new Date());
	}

	/**
	 * yyyyMMddHHmmss
	 *
	 * @return
	 */
	public static String getNowDate7() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(new Date());
	}


	/**
	 * yyyy-MM-dd==>yyyyMMdd
	 * 
	 * @param str
	 * @return
	 */
	public static String dateToString(String str) {
		String[] strs = str.split("-");

		return strs[0] + strs[1] + strs[2];

	}

	/**
	 * HHmm====>hh:mm
	 * 
	 * @param str
	 * @return
	 */
	public static String formatString(String str) {
		String s = "";
		try {
			s = str.substring(0, 2) + ":" + str.substring(2, 4);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return s;
	}

	/**
	 * 功能：验证邮箱
	 */
	public static boolean checkEmail(String email) {
		Pattern pattern = Pattern
				.compile("^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");
		Matcher matcher = pattern.matcher(email);
		if (matcher.find(0))
			return true;
		else
			return false;
	}

	//0.5的倍数
	public static boolean checkDay(String day) {
//		Pattern pattern = Pattern
//				.compile("^\\d*(\\.(5|0))?$");
		Pattern pattern = Pattern
				.compile("^\\d+(\\.[05])?$");
		Matcher matcher = pattern.matcher(day);
		if (matcher.find(0))
			return true;
		else
			return false;
	}


	//数字
	public static boolean checkNum(String day) {
		Pattern pattern = Pattern
				.compile("^[0-9]*$");
		Matcher matcher = pattern.matcher(day);
		if (matcher.find(0))
			return true;
		else
			return false;
	}

	public static String getfileinfo(String data){
		String filename[]= data.split("/");
		if (filename!=null) {
			return filename[filename.length-1];
		}
		return null;
	}





	/**
	 * 生成六位随机数
	 * 
	 * @return
	 */
	public static String SixRandom() {
		return String.format("%06d", (int) ((Math.random() * 1000000)));

	}

	/**
	 * 保留两位小数
	 * 
	 * @param s
	 * @return
	 */
	@SuppressLint("DefaultLocale")
	public static String doublePoint(double s) {
		try {
			return String.format("%.2f", s);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}


	/**
	 * 日期格式修改
	 */
	public static String alterdata(String str){
//     StringBuilder strb = new StringBuilder();StringBuilder strb = new StringBuilder();
		if(str==null) {
			return null;
		}else{
		str = str.substring(5,7)+"月"+str.substring(8,10)+"日"+" "+"上午"+str.substring(11,13)+str.substring(14,16);
		return str;
		}
	}

	public static String  getId(){
		return getNowDate6()+SixRandom();
	}


	/**
	 2  * 获取版本号
	 3  * @return 当前应用的版本号
	 4  */
	 public static  int getVersion(Context context) {
		     try {
			         PackageManager manager = context.getPackageManager();
			        PackageInfo info = manager.getPackageInfo(context.getPackageName(), 0);
				 return  info.versionCode;
			     } catch (Exception e) {
			        e.printStackTrace();
			        return 0;
			    }
		}


	/**
	 2  * 获取版本号
	 3  * @return 当前应用的版本号
	 4  */
	public static  String getVersionName(Context context) {
		try {
			PackageManager manager = context.getPackageManager();
			PackageInfo info = manager.getPackageInfo(context.getPackageName(), 0);
			return  info.versionName;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
}
