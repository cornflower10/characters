package com.cornflower.characters.adapter;

import android.content.Context;
import android.graphics.Color;
import android.widget.TextView;

import com.cornflower.characters.R;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.utils.ScreenUtils;
import com.zhy.adapter.recyclerview.CommonAdapter;
import com.zhy.adapter.recyclerview.base.ViewHolder;

import java.util.List;

/**
 * Created by Administrator on 2016/7/27.
 */
public class FontAdapter extends CommonAdapter<Font> {
    private int selected = -1;

    public void setSelected(int selected) {
        this.selected = selected;
    }

    public FontAdapter(Context context, int layoutId, List<Font> datas) {
        super(context, layoutId, datas);

    }

    @Override
    protected void convert(ViewHolder holder, Font font, int position) {
       TextView tv = holder.getView(R.id.tv_name);
        tv.setText(mDatas.get(0).getText().substring(0,1));
        ScreenUtils.setfont(font.getName(),tv);
        if(selected==position){
            tv.setBackgroundColor(mContext.getResources().getColor(R.color.colorAccent_half));
        }
        else {
            tv.setBackgroundColor(Color.TRANSPARENT);
        }
    }
}
