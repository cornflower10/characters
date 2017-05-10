//package com.cornflower.characters.utils;
//
//
//import com.google.gson.Gson;
//
//import java.lang.reflect.Type;
//
///**
// * Created by xiejingbao on 2015/9/15.
// */
//public class GsonUtils {
//    /**
//     * 获取对象
//     * @param jsonString
//     * @param cls
//     * @param <T>
//     * @return
//     */
//    public static <T> T getMClass(String jsonString, Class<T> cls) {
//        T t = null;
//        try {
//            Gson gson = new Gson();
//            t = gson.fromJson(jsonString, cls);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return t;
//    }
//
//
//
//    /**
//     * 对象转换成json字符串
//     * @param obj
//     * @return
//     */
//    public static String toJson(Object obj) {
//        Gson gson = new Gson();
//        return gson.toJson(obj);
//    }
//
//    /**
//     * json字符串转成对象
//     * @param str
//     * @param type
//     * @return
//     */
//    public static <T> T fromJson(String str, Type type) {
//        Gson gson = new Gson();
//        return gson.fromJson(str, type);
//    }
//}
