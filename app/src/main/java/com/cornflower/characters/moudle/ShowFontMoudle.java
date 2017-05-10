package com.cornflower.characters.moudle;

import android.content.Context;

import com.cornflower.characters.moudle.entity.FColor;
import com.cornflower.characters.moudle.entity.Font;

import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public interface ShowFontMoudle {
   List<Font> getFontType(Context context);
    List<FColor> getFontColors(Context context);
    boolean saveFont(Font font);
    boolean upDate(Font font);
    void delete(String id);
    List<Font> getALLFonts();
}
