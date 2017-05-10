package com.cornflower.characters.adapter;

import android.content.Context;
import android.view.Gravity;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.cornflower.characters.R;
import com.cornflower.characters.utils.ScreenUtils;
import com.zhy.adapter.recyclerview.CommonAdapter;
import com.zhy.adapter.recyclerview.base.ViewHolder;

import java.util.List;

/**
 * Created by Administrator on 2016/7/27.
 */
public class WelComeAdapter extends CommonAdapter<String> {

    int temp =ScreenUtils.screenHeight(mContext)-ScreenUtils.dpToPx(mContext,32);
    int itemHeight = 0;
    public WelComeAdapter(Context context, int layoutId, List<String> datas) {
        super(context, layoutId, datas);
        itemHeight = temp/datas.size();
    }

    @Override
    protected void convert(ViewHolder holder, String font, int position) {
       TextView tv = holder.getView(R.id.tv_name);
        RelativeLayout.LayoutParams rl = (RelativeLayout.LayoutParams) tv.getLayoutParams();
            rl.height = itemHeight;
            tv.setLayoutParams(rl);
        if(position ==mDatas.size()-1){
            tv.setGravity(Gravity.RIGHT);
        }else
            tv.setGravity(Gravity.LEFT);
//        ScreenUtils.setfont("6.ttf", tv);
        tv.setText(mDatas.get(position));
    }
}
