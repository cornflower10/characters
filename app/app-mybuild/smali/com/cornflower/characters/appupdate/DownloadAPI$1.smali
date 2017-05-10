.class Lcom/cornflower/characters/appupdate/DownloadAPI$1;
.super Ljava/lang/Object;
.source "DownloadAPI.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/appupdate/DownloadAPI;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/appupdate/DownloadAPI;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadAPI$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadAPI;

    iput-object p2, p0, Lcom/cornflower/characters/appupdate/DownloadAPI$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 66
    :try_start_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app\u66f4...inputStream..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/cornflower/characters/appupdate/DownloadAPI$1;->val$file:Ljava/io/File;

    invoke-static {p1, v1}, Lcom/cornflower/characters/appupdate/FileUtils;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/appupdate/DownloadAPI$1;->call(Ljava/io/InputStream;)V

    return-void
.end method
