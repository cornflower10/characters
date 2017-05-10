package com.cornflower.characters.activity;

import android.app.ProgressDialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.v7.widget.Toolbar;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.cornflower.characters.R;
import com.cornflower.characters.common.Constants;
import com.cornflower.characters.moudle.entity.FColor;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.presenter.ShowFontPresenter;
import com.cornflower.characters.utils.ScreenUtils;
import com.cornflower.characters.view.EditFontView;
import com.cornflower.characters.view.ShowFontView;
import com.cornflower.characters.widget.ColorPopWindow;
import com.cornflower.characters.widget.FontTypePopWindow;

import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class ToTextActivity extends BaseActivity implements ShowFontView, EditFontView {

    @Bind(R.id.tv)
    TextView tv;
    @Bind(R.id.v)
    View v;
    @Bind(R.id.v1)
    View v1;
    @Bind(R.id.toolbar)
    Toolbar toolbar;
    private Font text;
    private static final int DEFULTSIZE = 26;
    private PowerManager.WakeLock mWakeLock;
    private ProgressDialog mProgressDialog;
    private int sWidth;
    private int sHeight;
    private int limitHeight;
    private ShowFontPresenter showFontPresenter;
    private String fontName;
    private ColorPopWindow colorPopWindow;
    private FontTypePopWindow fontTypePopWindow;
    private int fontColor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_to_text);
        ButterKnife.bind(this);
        showFontPresenter = new ShowFontPresenter(this, this, mContext);
        PowerManager pm = (PowerManager) getSystemService(POWER_SERVICE);
        mWakeLock = pm.newWakeLock(PowerManager.SCREEN_DIM_WAKE_LOCK, "My Tag");
        showFontPresenter.showFont();
        showFontPresenter.showColors();

    }


    @Override
    protected void onResume() {
        super.onResume();
        mWakeLock.acquire();
    }

    @Override
    protected void onPause() {
        super.onPause();
        mWakeLock.release();
    }

    protected void initData() {
        setToolbarHasBack(toolbar, getResources().getString(R.string.set_font));
        sWidth = ScreenUtils.screenWidth(mContext);
        sHeight = ScreenUtils.screenHeight(mContext);
        limitHeight = sHeight / 24 * 15;

        tv.setTextSize(ScreenUtils.px2sp(this, DEFULTSIZE));
        if (null != getIntent()) {
            text = getIntent().getParcelableExtra(Constants.NAME);
            tv.setText(text.getText());
            if (!TextUtils.isEmpty(text.getName())) {
                ScreenUtils.setfont(text.getName(), tv);
            }
            int color = text.getfColor().getColor();
            if (color != 0) {
                tv.setTextColor(color);
            }
            tv.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
        }
        scaleText();
        scrollToCenter(tv);

    }

    private void recyleViewStatus(boolean isHide) {

        if (isHide) {
            toolbar.setBackgroundColor(getResources().getColor(R.color.transent));
//            toolbar.animate().translationY(-toolbar.getHeight()).setInterpolator(new AccelerateDecelerateInterpolator());
            toolbar.setVisibility(View.GONE);
            ScreenUtils.toggleSystemStatusBar(false, ToTextActivity.this);
            /**
             * 底部虚拟按键
             */
            tv.setSystemUiVisibility(View.SYSTEM_UI_FLAG_HIDE_NAVIGATION);
        } else {
            toolbar.setBackgroundColor(getResources().getColor(R.color.colorAccent));
            toolbar.setVisibility(View.VISIBLE);
            ScreenUtils.toggleSystemStatusBar(true, ToTextActivity.this);
//            toolbar.animate().translationY(0).setInterpolator(new AccelerateDecelerateInterpolator());

        }

    }

    private int getTextWidth() {
        Rect bounds = new Rect();
        TextPaint paint = tv.getPaint();
        paint.getTextBounds(text.getText(), 0, text.getText().length(), bounds);
        return bounds.width();
    }

    private int getTextHeight() {
        Rect bounds = new Rect();
        TextPaint paint = tv.getPaint();
        paint.getTextBounds(text.getText(), 0, text.getText().length(), bounds);
        return bounds.height();
    }


    private void scrollToCenter(View v) {
        int vWitdth = getTextWidth();
        int vHeight = getTextHeight();
        v.scrollTo(-(sWidth - vWitdth) / 2, -(sHeight - vHeight) / 2);
        Log.e("屏幕宽高....", sWidth + "...." + sHeight);
        Log.e("移动了....", (sWidth - vWitdth) / 2 + "...." + (sHeight - vHeight) / 2);
    }

    private void scaleText() {

        int textWidth = getTextWidth();
        int tempSize = (int) tv.getTextSize();
        if (textWidth >= sWidth) {
            for (int i = 1; i < 1000; i++) {
                tv.setTextSize(ScreenUtils.px2sp(mContext, tempSize - i));
                if (getTextWidth() < sWidth) {
                    break;
                }
            }

        } else {
            for (int i = 1; i < sWidth - textWidth; i++) {
                tv.setTextSize(ScreenUtils.px2sp(mContext, DEFULTSIZE + i));
                if (sWidth - getTextWidth() < 50) {
                    break;
                } else if (sWidth - getTextWidth() < 70) {
                    break;
                } else if (getTextHeight() > limitHeight) {
                    break;
                }

            }
        }
    }

    boolean isShow = false;

    @OnClick(R.id.tv)
    public void onClick() {
        if (isShow) {
            recyleViewStatus(true);
            isShow = false;
        } else {
            recyleViewStatus(false);
            isShow = true;
        }

    }

    @Override
    protected void onDestroy() {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
        showFontPresenter.onUnsubscribe();
        super.onDestroy();
    }

    @Override
    public void showText() {
        initData();
    }

    @Override
    public void showFontType(final List<Font> fontList) {
        initFontTypePopupWindw(fontList);
    }

    @Override
    public void showFontColor(List<FColor> colors) {
        initListColorPopupWindw(colors);
    }

    @Override
    public String getText() {
        return text.getText();
    }

    @Override
    public void showLoading() {
        mProgressDialog = ProgressDialog.show(this, null, "正在加载...");
    }

    @Override
    public void hideLoding() {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
    }

    @Override
    public void showError(String msg) {

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.to_text, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == android.R.id.home) {
            finish();
            return true;
        }
        if (id == R.id.action_save) {
            showFontPresenter.saveFont();
        } else if (id == R.id.action_color) {
            colorPopWindow
                    .setAnimationStyle(R.style.anim_popup_dir);
            colorPopWindow.showAsDropDown(v, 0, toolbar.getMeasuredHeight());

        }
        if (id == R.id.action_font) {
            fontTypePopWindow
                    .setAnimationStyle(R.style.anim_popup_dir);
            fontTypePopWindow.showAsDropDown(v1, 0, toolbar.getMeasuredHeight());
        }
        if (id == R.id.action_bold) {
           Log.i("action_bold","action_bold");
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public Font getFont() {
        if (!TextUtils.isEmpty(fontName))
            text.setName(fontName);
        if (fontColor != 0) {
            text.getfColor().setColor(fontColor);
        }
        return text;
    }

    @Override
    public void success(String tag) {
        Toast.makeText(this, tag, Toast.LENGTH_SHORT).show();

    }

    private void initListColorPopupWindw(final List<FColor> colors) {
        colorPopWindow = new ColorPopWindow(LayoutInflater.from(getApplicationContext())
                .inflate(R.layout.color_popwindow, null),
                ScreenUtils.screenWidth(mContext) / 4, ViewGroup.LayoutParams.WRAP_CONTENT,
                true, colors);

        colorPopWindow.setOnPopItemclickListener(new ColorPopWindow.OnPopItemclickListener() {
            @Override
            public void setOnPopItemclickListener(int position) {
                fontColor = colors.get(position).getColor();
                tv.setTextColor(fontColor);
            }
        });
    }

    private void initFontTypePopupWindw(final List<Font> fonts) {
        fontTypePopWindow = new FontTypePopWindow(LayoutInflater.from(getApplicationContext())
                .inflate(R.layout.color_popwindow, null),
                ScreenUtils.screenWidth(mContext) / 4, ViewGroup.LayoutParams.WRAP_CONTENT,
                true, fonts);

        fontTypePopWindow.setOnPopItemclickListener(new FontTypePopWindow.OnPopItemclickListener() {
            @Override
            public void setOnPopItemclickListener(int position) {
                Font font = fonts.get(position);
                fontName = font.getName();
                ScreenUtils.setfont(fontName, tv);
                scrollToCenter(tv);
//                scaleText();
            }
        });
    }

    @Override
    public void onBackPressed() {
        finish();
    }
}
