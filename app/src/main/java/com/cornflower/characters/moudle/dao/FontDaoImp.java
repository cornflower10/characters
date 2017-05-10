package com.cornflower.characters.moudle.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.cornflower.characters.common.ConstantsDatabase;
import com.cornflower.characters.database.MySQLiteOpenHelper;
import com.cornflower.characters.moudle.entity.FColor;
import com.cornflower.characters.moudle.entity.Font;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public class FontDaoImp implements FontDao {
    private MySQLiteOpenHelper mySQLiteOpenHelper;
    private SQLiteDatabase sqLiteDatabase;
    public FontDaoImp (Context context){
        mySQLiteOpenHelper = new MySQLiteOpenHelper(context);
        sqLiteDatabase = mySQLiteOpenHelper.getReadableDatabase();
    }
    @Override
    public boolean addFont(Font font) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", font.getText());
        contentValues.put("font_name",font.getName());
        contentValues.put("color",font.getfColor().getColor());
        contentValues.put("font_real_name",font.getRealName());
        try {
            sqLiteDatabase.insert(ConstantsDatabase.DATABASE_TB, null, contentValues);
        } catch (Exception e) {
            return false;
        }
        return true;

    }

    @Override
    public boolean upDate(Font font) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", font.getText());
        contentValues.put("font_name", font.getName());
        contentValues.put("color",font.getfColor().getColor());
        contentValues.put("font_real_name", font.getRealName());
        try {
            sqLiteDatabase.update(ConstantsDatabase.DATABASE_TB, contentValues,
                    "id=?", new String[] { font.getId() });
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(String id) {
        sqLiteDatabase.execSQL("delete from tb_font where id=?",
                new String[] { id });
        return true;
    }

    @Override
    public Font findFontById(String id) {
        Cursor cursor = sqLiteDatabase.rawQuery("select * from tb_font where id=?",
                new String[] { id });
        return GetFontQuery(cursor).size()>0?GetFontQuery(cursor).get(0):null;
    }

    @Override
    public List<Font> getALLFonts() {
        Cursor cursor = sqLiteDatabase.rawQuery("select * from tb_font order by id desc",
                null);
        return GetFontQuery(cursor);
    }

    protected List<Font> GetFontQuery(Cursor cursor) {
        List<Font> lue = new ArrayList<Font>();
        while (cursor.moveToNext()) {
            String sID = cursor.getString(cursor
                    .getColumnIndex("id"));
            String name = cursor.getString(cursor
                    .getColumnIndex("name"));
            String font_name = cursor.getString(cursor
                    .getColumnIndex("font_name"));
            String font_real_name = cursor.getString(cursor
                    .getColumnIndex("font_real_name"));
            Font ue = new Font();
            ue.setId(sID);
            ue.setName(font_name);
            ue.setText(name);
            ue.setRealName(font_real_name);
            FColor fColor =new FColor();
            fColor.setColor(Integer.parseInt(cursor.getString(cursor
                    .getColumnIndex("color"))));
            ue.setfColor(fColor);
            lue.add(ue);
        }
        cursor.close();
        return lue;

    }
    @Override
    public  void closeDB(){
        sqLiteDatabase.close();
    }
}
