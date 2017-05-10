package com.cornflower.characters.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.Toast;

import com.cornflower.characters.BuildConfig;
import com.cornflower.characters.R;
import com.cornflower.characters.adapter.MainFontAdapter;
import com.cornflower.characters.common.Constants;
import com.cornflower.characters.moudle.entity.FColor;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.moudle.entity.UpdateInfo;
import com.cornflower.characters.presenter.MyFontPresenter;
import com.cornflower.characters.presenter.MyFontPresenterImp;
import com.cornflower.characters.presenter.UpdateAppPresenter;
import com.cornflower.characters.utils.ScreenUtils;
import com.cornflower.characters.view.MainView;
import com.cornflower.characters.widget.InputDialogFragment;
import com.cornflower.characters.widget.TipDialogFragment;
import com.cornflower.characters.widget.sweeplist.SwipeMenu;
import com.cornflower.characters.widget.sweeplist.SwipeMenuCreator;
import com.cornflower.characters.widget.sweeplist.SwipeMenuItem;
import com.cornflower.characters.widget.sweeplist.SwipeMenuListView;
import com.text.push.PMan;
import com.umeng.analytics.MobclickAgent;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class MainActivity extends BaseAutoLayoutActivity implements
        MainView, InputDialogFragment.InputListener, TipDialogFragment.PositiveButtonListener<UpdateInfo> {


    @Bind(R.id.ib_add)
    ImageButton ibAdd;
    @Bind(R.id.lv)
    SwipeMenuListView lv;
    @Bind(R.id.toolbar)
    Toolbar toolbar;

    private long mkeyTime;
    private MyFontPresenter myFontPresenter;
    private MainFontAdapter mainFontAdapter;
    private List<Font> fontList;
    private UpdateAppPresenter updateAppPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
        myFontPresenter = new MyFontPresenterImp(mContext, this);
        updateAppPresenter = new UpdateAppPresenter(mContext, this);
        updateAppPresenter.update();

        MobclickAgent.setScenarioType(mContext, MobclickAgent.EScenarioType.E_UM_NORMAL);
        PMan.get(this, "cf114d76ac5828d2770db9925e2c99a9", "").getMessage(this, true);
//        MobclickAgent.setDebugMode( true );
        if (BuildConfig.DEBUG) {
            Log.d("", "");
        }
        initData();
    }

    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd("SplashScreen"); // （仅有Activity的应用中SDK自动调用，不需要单独写）保证 onPageEnd 在onPause 之前调用,因为 onPause 中会保存信息。"SplashScreen"为页面名称，可自定义
        MobclickAgent.onPause(this);
    }

    private void initData() {
        setToolbar(toolbar, getResources().getString(R.string.main));
        fontList = new ArrayList<>();
        mainFontAdapter = new MainFontAdapter(mContext, R.layout.main_font_item, fontList);
        lv.setAdapter(mainFontAdapter);
        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Intent intent = new Intent(mContext, ToTextActivity.class);
                intent.putExtra(Constants.NAME, fontList.get(position));
                startActivity(intent);
            }
        });
        SwipeMenuCreator creator = new SwipeMenuCreator() {

            @Override
            public void create(SwipeMenu menu) {
                // Create different menus depending on the view type
                switch (menu.getViewType()) {
                    case 0:
                        createMenu1(menu);
                        break;

                }
            }

            private void createMenu1(SwipeMenu menu) {
                SwipeMenuItem item1 = new SwipeMenuItem(mContext);
                item1.setBackground(new ColorDrawable(getResources().getColor(R.color.colorAccent)));
                item1.setWidth(ScreenUtils.sizeTdp(90, mContext));
                item1.setIcon(R.mipmap.delete_icon);
                menu.addMenuItem(item1);
            }
        };
        // set creator
        lv.setMenuCreator(creator);

        lv.setOnMenuItemClickListener(new SwipeMenuListView.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(int position, SwipeMenu menu,
                                           int index) {
                if (index == 0) {
                    myFontPresenter.deleteFont(position);
                }
                return true;
            }
        });

    }

    @Override
    protected void onResume() {
        super.onResume();
        myFontPresenter.showFonts();
        MobclickAgent.onPageStart("SplashScreen"); //统计页面(仅有Activity的应用中SDK自动调用，不需要单独写。"SplashScreen"为页面名称，可自定义)
        MobclickAgent.onResume(this);          //统计时长
    }



    @Override
    public void addFont() {
        InputDialogFragment inputDialogFragment = new InputDialogFragment();
        inputDialogFragment.show(getSupportFragmentManager(), "inputDialog");

    }

    @Override
    public void showMyFont(List<Font> fontList) {
        this.fontList.clear();
        this.fontList.addAll(fontList);
    }

    @Override
    public List<Font> getListFont() {
        return this.fontList;
    }

    @Override
    public void notifyDataChange() {
        if (null != mainFontAdapter) {
            mainFontAdapter.notifyDataSetChanged();
        }

    }

    @Override
    public void showEmpty() {
        lv.setVisibility(View.GONE);
        ibAdd.setVisibility(View.VISIBLE);
    }

    @Override
    public void showDataView() {
        lv.setVisibility(View.VISIBLE);
        ibAdd.setVisibility(View.GONE);
    }

    @Override
    @SuppressLint("ValidFragment")
    public void showUpdateDioag(UpdateInfo updateInfo) {
        TipDialogFragment tipDialogFragment = TipDialogFragment.newInstance(updateInfo);
        tipDialogFragment.show(getSupportFragmentManager(), "update");
    }

    @Override
    public void activityFinish() {
        finish();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            if ((System.currentTimeMillis() - mkeyTime) > 2000) {
                mkeyTime = System.currentTimeMillis();
                Toast.makeText(this, "再按一次退出程序", Toast.LENGTH_LONG).show();
            } else {
                finish();
                System.exit(0);
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);

    }

    @Override
    protected void onDestroy() {
        updateAppPresenter.cancelUpdate();
        super.onDestroy();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_add) {
            myFontPresenter.clickAddFont();
        } else if (id == R.id.action_about) {
            myFontPresenter.about();
        }
        return super.onOptionsItemSelected(item);
    }

    @OnClick(R.id.ib_add)
    public void onClick() {
        myFontPresenter.clickAddFont();
    }

    @Override
    public void onInputComplete(String text) {
        Intent intent = new Intent(mContext, ToTextActivity.class);
        Font font = new Font();
        font.setId("");
        font.setText(text);
        FColor fColor = new FColor();
        fColor.setColor(mContext.getResources().getColor(R.color.colorAccent));
        font.setfColor(fColor);
        intent.putExtra(Constants.NAME, font);
        startActivity(intent);
    }

    @Override
    public void onClickListener(UpdateInfo updateInfo) {
        updateAppPresenter.updateStart(updateInfo);
    }

    @Override
    public void onCancle(UpdateInfo updateInfo) {
        updateAppPresenter.flagUpdate(updateInfo);
    }
}
