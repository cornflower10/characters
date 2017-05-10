.class Lcom/cornflower/characters/appupdate/DownloadIntentService$2;
.super Lrx/Subscriber;
.source "DownloadIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/appupdate/DownloadIntentService;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/appupdate/DownloadIntentService;

.field final synthetic val$outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/appupdate/DownloadIntentService;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;->this$0:Lcom/cornflower/characters/appupdate/DownloadIntentService;

    iput-object p2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;->val$outputFile:Ljava/io/File;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 75
    const-string v0, ""

    const-string v1, "app\u66f4\u65b0\u5b8c\u6210......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;->this$0:Lcom/cornflower/characters/appupdate/DownloadIntentService;

    iget-object v1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;->val$outputFile:Ljava/io/File;

    # invokes: Lcom/cornflower/characters/appupdate/DownloadIntentService;->downloadCompleted(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->access$100(Lcom/cornflower/characters/appupdate/DownloadIntentService;Ljava/io/File;)V

    .line 77
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$2;->this$0:Lcom/cornflower/characters/appupdate/DownloadIntentService;

    # invokes: Lcom/cornflower/characters/appupdate/DownloadIntentService;->downloadError()V
    invoke-static {v0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->access$200(Lcom/cornflower/characters/appupdate/DownloadIntentService;)V

    .line 83
    const-string v0, "DownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    return-void
.end method
