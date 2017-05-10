package com.cornflower.characters.presenter;

import android.content.Context;

import com.cornflower.characters.moudle.ShowFontMoudle;
import com.cornflower.characters.moudle.moudleImpl.ShowFontMoudleImp;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.view.EditFontView;
import com.cornflower.characters.view.ShowFontView;

import java.util.List;

import rx.Observable;
import rx.Subscriber;

/**
 * Created by Administrator on 2016/7/29.
 */
public class ShowFontPresenter extends BasePresenter{
    private MyFontPresenter myFontPresenter;
    private Context mContext;
    private ShowFontView showFontView;
    private ShowFontMoudle showFontMoudle;
   public  ShowFontPresenter(EditFontView editFontView,ShowFontView showFontView ,Context mContext){
       this.mContext = mContext;
       this.showFontView = showFontView;
       showFontMoudle = new ShowFontMoudleImp(mContext);
       myFontPresenter = new MyFontPresenterImp(mContext,editFontView);
   }
  public void   showFont(){
      showFontView.showLoading();
      showFontView.showText();
      addSubscription( Observable.create(new Observable.OnSubscribe<List<Font>>() {
          @Override
          public void call(Subscriber<? super List<Font>> subscriber) {
              List<Font>  fontList = showFontMoudle.getFontType(mContext);
              fontList.get(0).setText(showFontView.getText());
              subscriber.onNext(fontList);
              subscriber.onCompleted();
          }
      }),new Subscriber<List<Font>>(){

          @Override
          public void onCompleted() {
              showFontView.hideLoding();
          }

          @Override
          public void onError(Throwable e) {
              e.printStackTrace();
              showFontView.hideLoding();
          }
          @Override
          public void onNext(List<Font> fonts) {
              showFontView.showFontType(fonts);
          }
      });


  }

    public void   saveFont(){
        myFontPresenter.saveFont();
    }
    public  void   showColors(){
        showFontView.showFontColor(showFontMoudle.getFontColors(mContext));
    }


}
