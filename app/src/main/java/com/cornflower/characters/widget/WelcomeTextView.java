package com.cornflower.characters.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;

import com.cornflower.characters.R;
import com.cornflower.characters.utils.ScreenUtils;

import java.util.concurrent.TimeUnit;

import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/**
 * Created by Administrator on 2016/7/24.
 */
public class WelcomeTextView extends TextView{
    private String sText;
    private String [] arrs;
    private int index;

    private Subscription subscription;
    public WelcomeTextView(Context context) {
        super(context);
    }

    public WelcomeTextView(Context context, AttributeSet attrs) {
        this(context, attrs,0);
    }

    public WelcomeTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

        init();
    }

    private int getSingleTextWidth() {
        Rect bounds = new Rect();
        TextPaint paint = getPaint();
        paint.getTextBounds(arrs[0], 0, arrs[0].length(), bounds);
        return bounds.width();
    }
    private int getTextWidth(String text) {
        Rect bounds = new Rect();
        TextPaint paint = getPaint();
        paint.getTextBounds(text, 0, text.length(), bounds);
        return bounds.width();
    }

    private  String addSpace(String text){
        int screenWidth = ScreenUtils.screenWidth(getContext());
       int count = screenWidth/getSingleTextWidth();
        for (int i =0;i<count ;i++){
            Log.e("text...",text+"----");
              if( screenWidth-getTextWidth(text)<100){
                  break;
              }else
                  text=getResources().getString(R.string.space)+text;
        }
        return text;
    }
    private void init() {

        ScreenUtils.setfont("9.ttf",this);
       arrs = getResources().getStringArray(R.array.welcome_text);
        final int size = arrs.length;
        subscription =  Observable.interval(1000,2000, TimeUnit.MILLISECONDS)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Action1<Long>() {
                    @Override
                    public void call(Long aLong) {
                       if (index==size){
                           subscription.unsubscribe();
                           Log.e("","解除订阅");
                        }else {
                           sText = getText()+arrs[index];
                           if(index==size-1){
                               sText = getText()+addSpace(arrs[index]);
                           }
                           invalidate();
                           index++;
                       }
                    }
                });
    }


    @Override
    protected void onDraw(Canvas canvas) {
        setText(sText);
        super.onDraw(canvas);
    }
}
