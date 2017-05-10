.class Lcom/cornflower/characters/appupdate/DownloadAPI$2;
.super Ljava/lang/Object;
.source "DownloadAPI.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/appupdate/DownloadAPI;->downloadAPK(Ljava/lang/String;Ljava/io/File;Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lokhttp3/ResponseBody;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/appupdate/DownloadAPI;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/appupdate/DownloadAPI;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadAPI$2;->this$0:Lcom/cornflower/characters/appupdate/DownloadAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lokhttp3/ResponseBody;)Ljava/io/InputStream;
    .locals 1
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;

    .prologue
    .line 58
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lokhttp3/ResponseBody;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/appupdate/DownloadAPI$2;->call(Lokhttp3/ResponseBody;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
