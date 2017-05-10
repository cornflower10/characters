package com.cornflower.characters.moudle.dao;


import com.cornflower.characters.moudle.entity.Font;

import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public interface FontDao {
    boolean addFont(Font font);
    boolean upDate(Font font);
    boolean delete(String id);
    Font findFontById(String id);
    List<Font> getALLFonts();
    void closeDB();
}
