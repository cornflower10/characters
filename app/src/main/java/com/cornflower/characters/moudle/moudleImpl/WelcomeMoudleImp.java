package com.cornflower.characters.moudle.moudleImpl;

import android.content.Context;

import com.cornflower.characters.R;
import com.cornflower.characters.moudle.WelcomeMoudle;

import java.util.Arrays;
import java.util.List;

/**
 * Created by Administrator on 2016/8/9.
 */
public  class WelcomeMoudleImp implements WelcomeMoudle {
    @Override
    public List<String> getData(Context context) {
        return Arrays.asList(context.getResources().getStringArray(R.array.welcome_text));
    }
}
