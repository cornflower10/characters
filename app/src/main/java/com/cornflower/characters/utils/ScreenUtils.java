package com.cornflower.characters.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.WindowManager;
import android.widget.TextView;

import java.io.File;

/**
 * Created by Administrator on 2016/7/24.
 */
public class ScreenUtils {
    public static float px2sp(Context context,int size){
       return TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP,size,
               context.getResources().getDisplayMetrics());
    }

    /**
     * 屏幕宽
     * @param context
     * @return
     */
    public static int screenWidth(Context context){
      return getDisplayMetrics(context).widthPixels;
    }
    private static DisplayMetrics getDisplayMetrics(Context context){
       return context.getResources().getDisplayMetrics();
    }

    /**
     * 屏幕高
     * @param context
     * @return
     */
    public static int screenHeight(Context context){
          return getDisplayMetrics(context).heightPixels;
    }

    /**
     * 全屏显示
     *
     */
    public static void full(boolean enable,Activity mContext) {
        // TODO Auto-generated method stub
        WindowManager.LayoutParams p = mContext.getWindow().getAttributes();
        if (enable) {

            p.flags |= WindowManager.LayoutParams.FLAG_FULLSCREEN;//|=：或等于，取其一

        } else {
            p.flags &= (~WindowManager.LayoutParams.FLAG_FULLSCREEN);//&=：与等于，取其二同时满足，     ~ ： 取反

        }
        mContext.getWindow().setAttributes(p);
        mContext.getWindow().addFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
    }


    public static void toggleSystemStatusBar(boolean mFlag,Activity activity) {
        Log.v("", "toggleSystemStatusBar");
        /*int flag = 0; 这种方法只能隐藏部分状态栏的icon
        flag = View.STATUS_BAR_HIDDEN;
        this.getWindow().getDecorView().setSystemUiVisibility(flag);
        this.getWindow().getDecorView().requestLayout();*/
        if(mFlag){
            Log.v("", "show StatusBar");
            activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
            //如果使用下面这个选项则无法再切会全屏模式
            /*getWindow().setFlags(WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN,
            WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN); */
        }else {
            Log.v("", "hide StatusBar");
            activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                    WindowManager.LayoutParams.FLAG_FULLSCREEN);
        }

    }
    /**
     * 显示字体
     * @param path
     */
    public  static  void setfont(String path, TextView tv){
        File dir = tv.getContext().getExternalFilesDir(null);
        Typeface typeface = Typeface.createFromFile(dir.getAbsolutePath()+"/"+path);
        tv.setTypeface(typeface);
    }
    /**
     * 转换成Dp
     * @param size
     * @return
     */
    public static int sizeTdp(int size,Context context){
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, size,context. getResources().getDisplayMetrics());
    }

    public static int dpToPx(Context context, int dp)
    {
        return (int) (context.getResources().getDisplayMetrics().density * dp + 0.5f);
    }

    /**
     * 根据手机的分辨率从 px(像素) 的单位 转成为 dp
     */
    public static int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }
}
