package com.cornflower.characters.view;


import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.moudle.entity.UpdateInfo;

import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public interface MainView {
    /**
     * 添加字体
     */
    void addFont();
    void  showMyFont(List<Font> fontList);

    /**
     * 获取已经添加的文字
     * @return
     */
     List<Font> getListFont();

    /**
     * 刷新数据
     */
    void notifyDataChange();

    /**
     *显示空的页面
     */
    void showEmpty();

    /**
     * 展现数据
     */
    void showDataView();

    /**
     * 显示更新提示框
     * @param updateInfo
     */
    void showUpdateDioag(UpdateInfo updateInfo);

    void activityFinish();

}
