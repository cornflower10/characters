package com.cornflower.characters.appupdate;

import okhttp3.ResponseBody;
import retrofit2.http.GET;
import retrofit2.http.Streaming;
import retrofit2.http.Url;
import rx.Observable;

/**
 * Created by bao on 2016/8/20.
 */
public interface DownloadService {
    @Streaming
    @GET
    Observable<ResponseBody> download(@Url String url);
}
