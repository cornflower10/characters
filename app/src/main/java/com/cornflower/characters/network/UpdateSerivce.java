package com.cornflower.characters.network;

import com.cornflower.characters.moudle.entity.UpdateInfo;

import retrofit2.http.POST;
import rx.Observable;

/**
 * Created by bao on 2016/8/15.
 */
public interface UpdateSerivce {
 //   http://58.211.161.180:8080/location/sendLocation
    @POST("/update/update.json")
    Observable<UpdateInfo> update();
}
