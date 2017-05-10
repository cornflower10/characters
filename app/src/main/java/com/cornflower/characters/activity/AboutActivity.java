package com.cornflower.characters.activity;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;

import com.cornflower.characters.R;
import com.cornflower.characters.utils.FastBlur;
import com.cornflower.characters.utils.PublicUtils;

import butterknife.Bind;
import butterknife.ButterKnife;

public class AboutActivity extends BaseAutoLayoutActivity {

    @Bind(R.id.toolbar)
    Toolbar toolbar;
    @Bind(R.id.iv_bg)
    ImageView ivBg;
    @Bind(R.id.tv_version)
    TextView tvVersion;
    @Bind(R.id.iv_icon)
    ImageView ivIcon;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about);
        ButterKnife.bind(this);
        setToolbarHasBack(toolbar, "关于");

        ivBg.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                ivBg.getViewTreeObserver().removeOnPreDrawListener(this);
                ivBg.buildDrawingCache();
                Bitmap bmp = ivBg.getDrawingCache();
                Bitmap b = FastBlur.doBlur(bmp, 80, true);
                ivBg.setImageBitmap(b);
                return true;
            }
        });
        tvVersion.setText("版本号："+PublicUtils.getVersionName(this));
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.about, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
