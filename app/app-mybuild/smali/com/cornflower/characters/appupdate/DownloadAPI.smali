.class public Lcom/cornflower/characters/appupdate/DownloadAPI;
.super Ljava/lang/Object;
.source "DownloadAPI.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xf

.field private static final TAG:Ljava/lang/String; = "DownloadAPI"


# instance fields
.field public retrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cornflower/characters/appupdate/DownloadProgressListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lcom/cornflower/characters/appupdate/DownloadProgressInterceptor;

    invoke-direct {v1, p2}, Lcom/cornflower/characters/appupdate/DownloadProgressInterceptor;-><init>(Lcom/cornflower/characters/appupdate/DownloadProgressListener;)V

    .line 34
    .local v1, "interceptor":Lcom/cornflower/characters/appupdate/DownloadProgressInterceptor;
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const-wide/16 v4, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 41
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v2

    iput-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadAPI;->retrofit:Lretrofit2/Retrofit;

    .line 46
    return-void
.end method


# virtual methods
.method public downloadAPK(Ljava/lang/String;Ljava/io/File;Lrx/Subscriber;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;
    .param p3, "subscriber"    # Lrx/Subscriber;

    .prologue
    .line 49
    const-string v0, "DownloadAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadAPK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadAPI;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/cornflower/characters/appupdate/DownloadService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/appupdate/DownloadService;

    invoke-interface {v0, p1}, Lcom/cornflower/characters/appupdate/DownloadService;->download(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->unsubscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/cornflower/characters/appupdate/DownloadAPI$2;

    invoke-direct {v1, p0}, Lcom/cornflower/characters/appupdate/DownloadAPI$2;-><init>(Lcom/cornflower/characters/appupdate/DownloadAPI;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/cornflower/characters/appupdate/DownloadAPI$1;

    invoke-direct {v1, p0, p2}, Lcom/cornflower/characters/appupdate/DownloadAPI$1;-><init>(Lcom/cornflower/characters/appupdate/DownloadAPI;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 75
    return-void
.end method
