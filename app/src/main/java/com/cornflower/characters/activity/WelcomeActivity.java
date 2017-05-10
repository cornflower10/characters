package com.cornflower.characters.activity;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.cornflower.characters.R;
import com.cornflower.characters.adapter.WelComeAdapter;
import com.cornflower.characters.presenter.WelcomePresent;
import com.cornflower.characters.view.WelcomeView;
import com.cornflower.characters.widget.SuperCircleView;

import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

public class WelcomeActivity extends BaseAutoLayoutActivity implements WelcomeView {


    @Bind(R.id.scv)
    SuperCircleView scv;
    @Bind(R.id.rv)
    RecyclerView rv;
    private WelcomePresent welcomePresent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome);
        ButterKnife.bind(this);
        welcomePresent = new WelcomePresent(this, this);
        welcomePresent.showListAndStart();
        scv.setShowSelect(false);

    }

    private void skip() {
        Intent intent = new Intent(mContext, MainActivity.class);
        startActivity(intent);
        overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_out);
        finish();
    }

    @Override
    public void showList(List<String> list) {
        WelComeAdapter welComeAdapter = new WelComeAdapter(mContext, R.layout.welcome_item, list);
        //设置布局管理器
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        rv.setLayoutManager(linearLayoutManager);
        rv.setAdapter(welComeAdapter);
    }

    @Override
    public void startAnimation() {
        final ValueAnimator valueAnimator = ValueAnimator.ofInt(0, 100);
        valueAnimator.setDuration(10 * 1000);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                int i = Integer.valueOf(String.valueOf(animation.getAnimatedValue()));
                scv.setSelect((int) (360 * (i / 100f)));
                if (i == 100) {
                    skip();
                }
            }
        });
        valueAnimator.start();

        scv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                skip();
                valueAnimator.cancel();
            }
        });
    }
}
