package com.cornflower.characters.adapter;

import android.content.Context;
import android.util.Log;
import android.widget.TextView;

import com.cornflower.characters.R;
import com.cornflower.characters.moudle.entity.FColor;
import com.zhy.adapter.recyclerview.CommonAdapter;
import com.zhy.adapter.recyclerview.base.ViewHolder;

import java.util.List;

/**
 * Created by Administrator on 2016/7/27.
 */
public class ColorAdapter extends CommonAdapter<FColor> {
    private int selected = -1;

    public void setSelected(int selected) {
        this.selected = selected;
    }

    public ColorAdapter(Context context, int layoutId, List<FColor> datas) {
        super(context, layoutId, datas);

    }

    @Override
    protected void convert(ViewHolder holder, FColor colors, int position) {
        TextView bt = holder.getView(R.id.bt_color);
        Log.e("colors......",colors+"");
         bt.setBackgroundColor(colors.getColor());
        if(selected ==  position ){
            bt.setAlpha(0.5f);
//            holder.setBackgroundColor(R.id.rl, mContext.getResources().getColor(R.color.colorAccent));
        }else{
            bt.setAlpha(1f);
        }

        }

    }

