package com.cornflower.characters.presenter;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.cornflower.characters.appupdate.DownloadIntentService;
import com.cornflower.characters.moudle.Common;
import com.cornflower.characters.moudle.UpdateMoudle;
import com.cornflower.characters.moudle.entity.UpdateInfo;
import com.cornflower.characters.moudle.moudleImpl.UpDateMoudleImp;
import com.cornflower.characters.utils.PublicUtils;
import com.cornflower.characters.view.MainView;

/**
 * Created by bao on 2016/8/20.
 */
public class UpdateAppPresenter implements Common<UpdateInfo> {
    private MainView mainView;
    private UpdateMoudle updateMoudle;
    private Context context;

    public UpdateAppPresenter(Context context, MainView mainView) {
        this.context = context;
        this.mainView = mainView;
        updateMoudle = new UpDateMoudleImp(this);

    }

    public void update() {
        updateMoudle.requestUpdate();
    }

    public void cancelUpdate() {
        updateMoudle.cancelUpdate();
    }

    public void updateStart(UpdateInfo updateInfo) {
//       int version = PublicUtils.getVersion(context);version>0&&
        Log.i("", "app更新开始......");
        Intent intent = new Intent(context, DownloadIntentService.class);
        intent.putExtra("url", updateInfo.getUrl());
        context.startService(intent);

    }

    /**
     * 强制更新
     */
    public void flagUpdate(UpdateInfo updateInfo) {
        if (updateInfo.isFlag()) {
            mainView.activityFinish();
        }
    }

    @Override
    public void Success(UpdateInfo updateInfo) {
        Log.i("app版本信息", updateInfo.toString());
        int version = PublicUtils.getVersion(context);
        if (version > 0 && version < updateInfo.getVersion()) {
            mainView.showUpdateDioag(updateInfo);
        }
    }

    @Override
    public void error(String s) {

    }
}
