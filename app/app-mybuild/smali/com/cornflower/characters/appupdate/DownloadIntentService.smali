.class public Lcom/cornflower/characters/appupdate/DownloadIntentService;
.super Landroid/app/IntentService;
.source "DownloadIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadService"


# instance fields
.field private apkUrl:Ljava/lang/String;

.field private notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "DownloadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->apkUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/appupdate/DownloadIntentService;Lcom/cornflower/characters/appupdate/Download;)V
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/appupdate/DownloadIntentService;
    .param p1, "x1"    # Lcom/cornflower/characters/appupdate/Download;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->sendNotification(Lcom/cornflower/characters/appupdate/Download;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cornflower/characters/appupdate/DownloadIntentService;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/appupdate/DownloadIntentService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->downloadCompleted(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cornflower/characters/appupdate/DownloadIntentService;)V
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/appupdate/DownloadIntentService;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->downloadError()V

    return-void
.end method

.method private download()V
    .locals 6

    .prologue
    .line 52
    invoke-static {p0}, Lcom/cornflower/characters/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/cornflower/characters/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v1, Lcom/cornflower/characters/appupdate/DownloadIntentService$1;

    invoke-direct {v1, p0}, Lcom/cornflower/characters/appupdate/DownloadIntentService$1;-><init>(Lcom/cornflower/characters/appupdate/DownloadIntentService;)V

    .line 68
    .local v1, "listener":Lcom/cornflower/characters/appupdate/DownloadProgressListener;
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "\u6587\u5b57\u79c0.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v2, "outputFile":Ljava/io/File;
    iget-object v3, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->apkUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/cornflower/characters/appupdate/StringUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v3, Lcom/cornflower/characters/appupdate/DownloadAPI;

    invoke-direct {v3, v0, v1}, Lcom/cornflower/characters/appupdate/DownloadAPI;-><init>(Ljava/lang/String;Lcom/cornflower/characters/appupdate/DownloadProgressListener;)V

    iget-object v4, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->apkUrl:Ljava/lang/String;

    new-instance v5, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;

    invoke-direct {v5, p0, v2}, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;-><init>(Lcom/cornflower/characters/appupdate/DownloadIntentService;Ljava/io/File;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/cornflower/characters/appupdate/DownloadAPI;->downloadAPK(Ljava/lang/String;Ljava/io/File;Lrx/Subscriber;)V

    goto :goto_0
.end method

.method private downloadCompleted(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "install":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 106
    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "\u6587\u5b57\u79c0\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 107
    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v4, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    invoke-virtual {p0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->stopSelf()V

    .line 110
    return-void
.end method

.method private downloadError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 113
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2, v2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u6587\u5b57\u79c0\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 116
    invoke-virtual {p0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->stopSelf()V

    .line 117
    return-void
.end method

.method private sendNotification(Lcom/cornflower/characters/appupdate/Download;)V
    .locals 5
    .param p1, "download"    # Lcom/cornflower/characters/appupdate/Download;

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    invoke-virtual {p1}, Lcom/cornflower/characters/appupdate/Download;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cornflower/characters/appupdate/Download;->getCurrentFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cornflower/characters/appupdate/StringUtils;->getDataSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cornflower/characters/appupdate/Download;->getTotalFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cornflower/characters/appupdate/StringUtils;->getDataSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 125
    const-string v1, "\u66f4\u65b0\u8fdb\u5ea6"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->apkUrl:Ljava/lang/String;

    .line 38
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    .line 40
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u79c0"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u79c0\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 46
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 48
    invoke-direct {p0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->download()V

    .line 49
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    return-void
.end method
