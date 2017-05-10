package com.cornflower.characters.presenter;

import android.content.Context;

import com.cornflower.characters.moudle.WelcomeMoudle;
import com.cornflower.characters.moudle.moudleImpl.WelcomeMoudleImp;
import com.cornflower.characters.view.WelcomeView;

/**
 * Created by Administrator on 2016/8/9.
 */
public class WelcomePresent extends BasePresenter {
    private WelcomeView welcomeView;
    private WelcomeMoudle welcomeMoudle ;
    private Context context;
   public WelcomePresent(Context context,WelcomeView welcomeView){
       welcomeMoudle  = new WelcomeMoudleImp();
       this.welcomeView = welcomeView;
       this.context = context;
   }
    public void showListAndStart(){
        welcomeView.showList(welcomeMoudle.getData(context));
        welcomeView.startAnimation();
    }


}
