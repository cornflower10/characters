package com.cornflower.characters.moudle.moudleImpl;

import com.cornflower.characters.moudle.Common;
import com.cornflower.characters.moudle.UpdateMoudle;
import com.cornflower.characters.moudle.entity.UpdateInfo;
import com.cornflower.characters.network.RetrofitManager;
import com.cornflower.characters.presenter.BasePresenter;

import rx.Subscriber;

/**
 * Created by bao on 2016/8/20.
 */
public class UpDateMoudleImp extends BasePresenter implements UpdateMoudle {
   private Common<UpdateInfo> common;
   public   UpDateMoudleImp( Common<UpdateInfo> common){
       this.common =common;
   }
    @Override
    public void requestUpdate() {
      addSubscription(RetrofitManager.builder().update(), new Subscriber<UpdateInfo>() {
          @Override
          public void onCompleted() {

          }

          @Override
          public void onError(Throwable e) {
              e.printStackTrace();
              common.error(e.getMessage());
          }

          @Override
          public void onNext(UpdateInfo updateInfo) {
              common.Success(updateInfo);
          }
      });
    }

    @Override
    public void cancelUpdate() {
       onUnsubscribe();
    }
}
