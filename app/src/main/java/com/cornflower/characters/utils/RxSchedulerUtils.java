package com.cornflower.characters.utils;


import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/**
 * Created by xiejingbao on 2017/3/13.
 */

public class RxSchedulerUtils {
    public static <T>Observable.Transformer<T,T> normalSchedulersTransformer(){
          return   new Observable.Transformer<T,T>(){
              @Override
              public Observable<T> call(Observable<T> tObservable) {
                  return tObservable.subscribeOn(Schedulers.io())
                          .observeOn(AndroidSchedulers.mainThread());
              }
          };
    }
}
