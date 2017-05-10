.class public Lcom/cornflower/characters/appupdate/DownloadProgressInterceptor;
.super Ljava/lang/Object;
.source "DownloadProgressInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private listener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;


# direct methods
.method public constructor <init>(Lcom/cornflower/characters/appupdate/DownloadProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadProgressInterceptor;->listener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    .line 17
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 23
    .local v0, "originalResponse":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    iget-object v4, p0, Lcom/cornflower/characters/appupdate/DownloadProgressInterceptor;->listener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    invoke-direct {v2, v3, v4}, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/cornflower/characters/appupdate/DownloadProgressListener;)V

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    return-object v1
.end method
