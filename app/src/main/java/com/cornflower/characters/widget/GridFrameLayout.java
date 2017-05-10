package com.cornflower.characters.widget;

import android.content.Context;
import android.util.AttributeSet;

/**
 * Created by Administrator on 2016/8/10.
 */
public class GridFrameLayout extends android.widget.FrameLayout {
    public GridFrameLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public GridFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public GridFrameLayout(Context context) {
        super(context);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        //核心就是下面这块代码块啦
//        int width = getMeasuredWidth();
//        setMeasuredDimension(width, width);
//        ViewGroup.LayoutParams lp = getLayoutParams();
//        lp.height = width;
//        setLayoutParams(lp);
//        int measureWidth = measureWidth(widthMeasureSpec);
//        int measureHeight = measureHeight(heightMeasureSpec);
//        // 计算自定义的ViewGroup中所有子控件的大小
//        measureChildren(widthMeasureSpec, widthMeasureSpec);
//        // 设置自定义的控件MyViewGroup的大小
//        setMeasuredDimension(measureWidth, measureWidth);

        setMeasuredDimension(getDefaultSize(0, widthMeasureSpec),
                getDefaultSize(0, heightMeasureSpec));

        int childWidthSize = getMeasuredWidth();
        // 高度和宽度一样
        heightMeasureSpec = widthMeasureSpec = MeasureSpec.makeMeasureSpec(
                childWidthSize, MeasureSpec.EXACTLY);
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

}