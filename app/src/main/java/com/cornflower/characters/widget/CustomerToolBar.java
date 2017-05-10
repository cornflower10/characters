package com.cornflower.characters.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.Toolbar;

/**
 * Created by xiejingbao on 2017/4/4.
 */

@TargetApi(Build.VERSION_CODES.LOLLIPOP)
public class CustomerToolBar extends Toolbar {
    private int width;
    private boolean clickSeekBar;
    public CustomerToolBar(Context context) {
        this(context,null);
    }

    public CustomerToolBar(Context context, AttributeSet attrs) {
        this(context, attrs,0);
    }

    public CustomerToolBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        width = getMeasuredWidth();
        init();
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        int childCount = getChildCount();
        if(clickSeekBar){
            for (int i = 0 ;i<childCount;i++){
                if(getChildAt(i) instanceof SeekBar){
                    getChildAt(i).setVisibility(View.VISIBLE);
                }else{
                    getChildAt(i).setVisibility(View.GONE);
                }

            }
        }else{
            for (int i = 0 ;i<childCount;i++){
                if(getChildAt(i) instanceof SeekBar){
                    getChildAt(i).setVisibility(View.GONE);
                }else{
                    getChildAt(i).setVisibility(View.VISIBLE);
                }

            }
        }


    }

    private void init() {

        SeekBar seekBar = new SeekBar(getContext());
        LayoutParams la = new LayoutParams(width/2, ViewGroup.LayoutParams.WRAP_CONTENT);
        la.gravity = Gravity.CENTER;
        seekBar.setLayoutParams(la);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int i, boolean b) {
                Log.i("seekBar",i+"");
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });
        addView(seekBar);

    }



    public void invalidate(boolean click){
        this.clickSeekBar = click;
        this.invalidate();
    }

}
