package com.cornflower.characters.widget;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.cornflower.characters.R;
import com.cornflower.characters.adapter.FontAdapter;
import com.cornflower.characters.moudle.entity.Font;
import com.zhy.adapter.recyclerview.MultiItemTypeAdapter;

import java.util.List;

/**
 * Created by Administrator on 2016/8/9.
 */
public class FontTypePopWindow extends BasePopupWindowForListView<Font> {
    private RecyclerView recyclerView ;
    public FontTypePopWindow(View contentView, int width, int height, boolean focusable, List<Font> mDatas) {
        super(contentView, width, height, focusable, mDatas);
    }

    @Override
    protected void beforeInitWeNeedSomeParams(Object... params) {

    }

    @Override
    public void initViews() {
        recyclerView = (RecyclerView) findViewById(R.id.rv);
        final FontAdapter fontAdapter = new FontAdapter(context, R.layout.font_item, mDatas);
        fontAdapter.setOnItemClickListener(new MultiItemTypeAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(View view, RecyclerView.ViewHolder holder, int position) {
                fontAdapter.setSelected(position);
                onPopItemclickListener.setOnPopItemclickListener(position);
                fontAdapter.notifyDataSetChanged();
            }

            @Override
            public boolean onItemLongClick(View view, RecyclerView.ViewHolder holder, int position) {
                return false;
            }
        });
        //设置布局管理器
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context,3);
        recyclerView.setLayoutManager( gridLayoutManager);
        recyclerView.setAdapter(fontAdapter);
        recyclerView.addItemDecoration(new GridSpacingItemDecoration(3,2,false));
        fontAdapter.notifyDataSetChanged();
    }

    public interface  OnPopItemclickListener{
        void setOnPopItemclickListener(int position);
    }

    private OnPopItemclickListener onPopItemclickListener;

    public void setOnPopItemclickListener(OnPopItemclickListener onPopItemclickListener) {
        this.onPopItemclickListener = onPopItemclickListener;
    }

    @Override
    public void initEvents() {

    }

    @Override
    public void init() {

    }
}
