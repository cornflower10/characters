package com.cornflower.characters.appupdate;

/**
 * Created by bao on 2016/8/20.
 */
public interface DownloadProgressListener {
    void update(long bytesRead, long contentLength, boolean done);
}
