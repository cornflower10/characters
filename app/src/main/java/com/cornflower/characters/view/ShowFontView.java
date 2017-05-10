package com.cornflower.characters.view;


import com.cornflower.characters.moudle.entity.FColor;
import com.cornflower.characters.moudle.entity.Font;

import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public interface ShowFontView extends BaseView{
         void showText();
         void  showFontType(List<Font> fontList);
         void showFontColor(List<FColor> colors);
         String getText();

}
