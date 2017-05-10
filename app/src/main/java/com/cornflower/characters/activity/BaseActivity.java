package com.cornflower.characters.activity;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;

import com.cornflower.characters.widget.StatusBarCompat;

/**
 * Created by Administrator on 2016/7/24.
 */
public  class  BaseActivity extends AppCompatActivity {
    public Context mContext;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = this;
        StatusBarCompat.compat(this);

    }

    public void setToolbar(Toolbar toolbar,CharSequence title) {
        toolbar.setTitle(title);
        setSupportActionBar(toolbar);
    }

    public void setToolbarHasBack(Toolbar toolbar,CharSequence title) {
        setToolbar(toolbar, title);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }


}
