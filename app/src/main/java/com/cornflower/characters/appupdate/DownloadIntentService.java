package com.cornflower.characters.appupdate;

import android.app.IntentService;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.cornflower.characters.R;
import com.cornflower.characters.utils.NetworkUtils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by JokAr on 16/7/5.
 */
public class DownloadIntentService extends IntentService {
    private static final String TAG = "DownloadService";

    private NotificationCompat.Builder notificationBuilder;
    private NotificationManager notificationManager;

    private String apkUrl = "";

    public DownloadIntentService() {
        super("DownloadService");
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        apkUrl = intent.getStringExtra("url");
        notificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);

        notificationBuilder = new NotificationCompat.Builder(this)
                .setSmallIcon(R.mipmap.ic_launcher)
                .setContentTitle("文字秀")
                .setContentText("文字秀更新")
                .setAutoCancel(true);

        notificationManager.notify(0, notificationBuilder.build());
        File outputFile = new File(Environment.getExternalStorageDirectory(),
                "/characters/");
        outputFile = new File(outputFile.getPath(), "character.apk");
        if (!outputFile.getParentFile().exists())
            outputFile.getParentFile().mkdirs();

        if (outputFile != null && outputFile.exists())
            outputFile.delete();
//        download();
        try {
            downloadUpdateFile(apkUrl, outputFile);
        } catch (Exception e) {
            e.printStackTrace();
            downloadError();
        }
    }

//    private void download() {
//        if(!(NetworkUtils.isConnected(this)&&NetworkUtils.isConnected(this))){
//            return;
//        }
//
//        DownloadProgressListener listener = new DownloadProgressListener() {
//            @Override
//            public void update(long bytesRead, long contentLength, boolean done) {
//                Download download = new Download();
//                download.setTotalFileSize(contentLength);
//                download.setCurrentFileSize(bytesRead);
//                int progress = (int) ((bytesRead * 100) / contentLength);
//                download.setProgress(progress);
//
//                sendNotification(download);
//            }
//        };
//        outputFile = new File(outputFile.getPath(), "character.apk");
//        String baseUrl = StringUtils.getHostName(apkUrl);
//
//        new DownloadAPI(baseUrl, listener).downloadAPK(apkUrl, outputFile, new Subscriber() {
//            @Override
//            public void onCompleted() {
//                Log.i("","app更新完成....outputFile.."+outputFile);
//                downloadCompleted(outputFile);
//            }
//
//            @Override
//            public void onError(Throwable e) {
//                e.printStackTrace();
//                downloadError();
//                Log.e(TAG, "onError: " + e.getMessage());
//            }
//
//            @Override
//            public void onNext(Object o) {
//
//            }
//        });
//    }

    private void downloadCompleted(File file) {
        Uri uri = Uri.fromFile(file);
        //设置自动下载后跳出对话框
        Intent install = new Intent();
        install.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        install.setAction(Intent.ACTION_VIEW);
        install.setDataAndType(uri,
                "application/vnd.android.package-archive");
        notificationBuilder.setContentText("文字秀下载完成");
        notificationBuilder.setProgress(0, 0, false);
        notificationManager.notify(0, notificationBuilder.build());
        notificationManager.cancel(0);
        startActivity(install);
//        stopSelf();
    }

    private void downloadError() {
        notificationManager.cancel(0);
        notificationBuilder.setProgress(0, 0, false);
        notificationBuilder.setContentText("文字秀下载失败");
        notificationManager.notify(0, notificationBuilder.build());
        stopSelf();
    }

    private void sendNotification(Download download) {
        notificationBuilder.setProgress(100, download.getProgress(), false);
        String s =
                StringUtils.getDataSize(download.getCurrentFileSize()) + "/" +
                        StringUtils.getDataSize(download.getTotalFileSize());
        notificationBuilder.setContentText(s);
        Log.d("更新进度", s);
        notificationManager.notify(0, notificationBuilder.build());
    }


    @Override
    public void onTaskRemoved(Intent rootIntent) {
        notificationManager.cancel(0);
    }


    public void downloadUpdateFile(String downloadUrl, File saveFile)
            throws Exception {
        if (!(NetworkUtils.isConnected(this) && NetworkUtils.isConnected(this))) {
            downloadError();
            return;
        }
        int currentSize = 0;
        long totalSize = 0;
        int updateTotalSize = 0;
        int count = 0;

        HttpURLConnection httpConnection = null;
        InputStream is = null;
        FileOutputStream fos = null;
        try {
            URL url = new URL(downloadUrl);
            httpConnection = (HttpURLConnection) url.openConnection();
            httpConnection.setConnectTimeout(10000);
            httpConnection.setReadTimeout(20000);
            updateTotalSize = httpConnection.getContentLength();
            if (httpConnection.getResponseCode() == 404) {
                throw new Exception("fail!");
            }
            is = httpConnection.getInputStream();

            fos = new FileOutputStream(saveFile, false);
            byte buffer[] = new byte[4096];
            int readsize = 0;
            while ((readsize = is.read(buffer)) > 0) {
                fos.write(buffer, 0, readsize);
                fos.flush();
                totalSize += readsize;
                int progress = (int) ((totalSize * 100) / updateTotalSize);
                if (count == 0 || count <= progress) {
                    count += 10;
                    Download download = new Download();
                    download.setTotalFileSize(updateTotalSize);
                    download.setCurrentFileSize(totalSize);
                    download.setProgress(progress);
                    sendNotification(download);
                }
                if (progress == 100) {
                    downloadCompleted(saveFile);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            downloadError();
        } finally {
            if (httpConnection != null) {
                httpConnection.disconnect();
            }
            if (is != null) {
                is.close();
            }
            if (fos != null) {
                fos.close();
            }
        }
    }
}
