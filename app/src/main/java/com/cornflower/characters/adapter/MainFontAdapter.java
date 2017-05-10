package com.cornflower.characters.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;

import com.cornflower.characters.R;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.utils.ScreenUtils;

import java.util.List;

/**
 * Created by Administrator on 2016/7/27.
 */
public class MainFontAdapter extends com.zhy.adapter.abslistview.CommonAdapter<Font>{
    public MainFontAdapter(Context context, int layoutId, List<Font> datas) {
        super(context, layoutId, datas);
    }

    @Override
    protected void convert(com.zhy.adapter.abslistview.ViewHolder viewHolder, Font font, int position) {
        TextView tv = viewHolder.getView(R.id.tv_name);
        tv.setText(font.getText());
        if(!TextUtils.isEmpty(font.getName()))
        ScreenUtils.setfont(font.getName(),tv);

    }

}
