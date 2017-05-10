.class public Lcom/cornflower/characters/network/RetrofitManager;
.super Ljava/lang/Object;
.source "RetrofitManager.java"


# static fields
.field public static final BASE_ZHIHU_URL:Ljava/lang/String; = "http://www.jiangpw.com"

.field public static final CACHE_CONTROL_AGE:Ljava/lang/String; = "Cache-Control: public, max-age="

.field public static final CACHE_CONTROL_CACHE:Ljava/lang/String; = "only-if-cached, max-stale=604800"

.field public static final CACHE_CONTROL_NETWORK:Ljava/lang/String; = "max-age=0"

.field public static final CACHE_STALE_LONG:I = 0x93a80

.field public static final CACHE_STALE_SHORT:I = 0x3c

.field private static mOkHttpClient:Lokhttp3/OkHttpClient;


# instance fields
.field private final mZhihuService:Lcom/cornflower/characters/network/UpdateSerivce;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/cornflower/characters/network/RetrofitManager;->initOkHttpClient()V

    .line 43
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "http://www.jiangpw.com"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    sget-object v2, Lcom/cornflower/characters/network/RetrofitManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 49
    .local v0, "retrofit":Lretrofit2/Retrofit;
    const-class v1, Lcom/cornflower/characters/network/UpdateSerivce;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/network/UpdateSerivce;

    iput-object v1, p0, Lcom/cornflower/characters/network/RetrofitManager;->mZhihuService:Lcom/cornflower/characters/network/UpdateSerivce;

    .line 50
    return-void
.end method

.method public static builder()Lcom/cornflower/characters/network/RetrofitManager;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/cornflower/characters/network/RetrofitManager;

    invoke-direct {v0}, Lcom/cornflower/characters/network/RetrofitManager;-><init>()V

    return-object v0
.end method

.method private initOkHttpClient()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 54
    .local v0, "interceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 55
    sget-object v1, Lcom/cornflower/characters/network/RetrofitManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    .line 56
    const-class v2, Lcom/cornflower/characters/network/RetrofitManager;

    monitor-enter v2

    .line 57
    :try_start_0
    sget-object v1, Lcom/cornflower/characters/network/RetrofitManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v4, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/cornflower/characters/network/RetrofitManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 68
    :cond_0
    monitor-exit v2

    .line 70
    :cond_1
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public update()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cornflower/characters/network/RetrofitManager;->mZhihuService:Lcom/cornflower/characters/network/UpdateSerivce;

    invoke-interface {v0}, Lcom/cornflower/characters/network/UpdateSerivce;->update()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
