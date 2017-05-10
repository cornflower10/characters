package com.cornflower.characters.moudle.moudleImpl;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.util.Log;

import com.cornflower.characters.R;
import com.cornflower.characters.common.Constants;
import com.cornflower.characters.moudle.ShowFontMoudle;
import com.cornflower.characters.moudle.entity.FColor;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.utils.PublicUtils;
import com.cornflower.characters.utils.SharedPreferencesUtils;
import com.cornflower.characters.utils.ZipUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public class ShowFontMoudleImp implements ShowFontMoudle {
    private SharedPreferencesUtils sharedPreferencesUtils;
    private Context mContext;
   public ShowFontMoudleImp(Context mContext){
       this.mContext= mContext;
        sharedPreferencesUtils = new SharedPreferencesUtils(mContext, Constants.FONT);
   }
    @Override
    public List<Font> getFontType(Context context) {
        List<Font> fontList =new ArrayList<>();
        SharedPreferences sp = mContext.getSharedPreferences(Constants.FONT, Context.MODE_PRIVATE);
       boolean isFirst =  sp.getBoolean("isFirst",true);
        if(isFirst){
            Log.i("开始解压字体....","开始解压字体");
            ZipUtils.unZipMaterials(mContext,"font");
            SharedPreferences.Editor editor = sp.edit();
            editor.putBoolean("isFirst",false);
            editor.commit();
        }
        Log.i("开始解析字体....","开始解析字体");
        ArrayList<HashMap<String,String>> data  =  ZipUtils.parseXML(mContext);
        Log.i("结束解析字体....","结束解析字体");
        String [] fontRealName = context.getResources().getStringArray(R.array.font_name);
        for (int i=0;i<data.size();i++){
            Font font =new Font();
            font.setId(PublicUtils.getId());
            font.setName(data.get(i).get("name"));
            font.setRealName(fontRealName[i]);
            fontList.add(font);
        }

        return fontList;
    }

    @Override
    public List<FColor> getFontColors(Context context) {
        List<FColor> list = new ArrayList<>();
        String [] colors = context.getResources().getStringArray(R.array.colors);
        for (int i = 0;i<colors.length;i++){
            FColor fColor =new FColor();
            fColor.setColor(Color.parseColor(colors[i]));
            list.add(fColor);
        }
        return list;
    }

    @Override
    public boolean saveFont(Font font) {
        return sharedPreferencesUtils.setObject(font.getId(),font);
    }

    @Override
    public boolean upDate( Font font) {
        return sharedPreferencesUtils.setObject(font.getId(),font);
    }

    @Override
    public void delete(String id) {
        sharedPreferencesUtils.remove(id);
    }

    @Override
    public List<Font> getALLFonts() {
        return sharedPreferencesUtils.getObjectAll(Font.class);
    }

}
