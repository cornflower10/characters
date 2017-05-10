package com.cornflower.characters.common;

/**
 * Created by Administrator on 2016/7/24.
 */
public class ConstantsDatabase {
    public static final String DATABASE = "font.db";
    public static final int DATABASE_VERSION =1;
    public static final String DATABASE_TB = "tb_font";
    public static final String TB_FONT_SQL = "CREATE TABLE if not exists tb_font(id integer primary key autoincrement," +
            "name text,font_name text,font_real_name text,color text)";

}
