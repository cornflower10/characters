package com.cornflower.characters.activity;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;

import com.cornflower.characters.R;
import com.cornflower.characters.widget.CustomerToolBar;

import butterknife.Bind;
import butterknife.ButterKnife;

public class ConsumerActivity extends AppCompatActivity {


    @Bind(R.id.toolbar)
    CustomerToolBar toolbar;

    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_consumer);
        ButterKnife.bind(this);
        toolbar.setTitle("SeekBar");
//        setSupportActionBar(toolbar);
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
            toolbar.invalidate(true);
        } else if (id == R.id.action_about) {

        }
        return super.onOptionsItemSelected(item);
    }

}
