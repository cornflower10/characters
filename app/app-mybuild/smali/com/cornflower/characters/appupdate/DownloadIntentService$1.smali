.class Lcom/cornflower/characters/appupdate/DownloadIntentService$1;
.super Ljava/lang/Object;
.source "DownloadIntentService.java"

# interfaces
.implements Lcom/cornflower/characters/appupdate/DownloadProgressListener;


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


# direct methods
.method constructor <init>(Lcom/cornflower/characters/appupdate/DownloadIntentService;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(JJZ)V
    .locals 5
    .param p1, "bytesRead"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .prologue
    .line 59
    new-instance v0, Lcom/cornflower/characters/appupdate/Download;

    invoke-direct {v0}, Lcom/cornflower/characters/appupdate/Download;-><init>()V

    .line 60
    .local v0, "download":Lcom/cornflower/characters/appupdate/Download;
    invoke-virtual {v0, p3, p4}, Lcom/cornflower/characters/appupdate/Download;->setTotalFileSize(J)V

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/cornflower/characters/appupdate/Download;->setCurrentFileSize(J)V

    .line 62
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    .line 63
    .local v1, "progress":I
    invoke-virtual {v0, v1}, Lcom/cornflower/characters/appupdate/Download;->setProgress(I)V

    .line 65
    iget-object v2, p0, Lcom/cornflower/characters/appupdate/DownloadIntentService$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadIntentService;

    # invokes: Lcom/cornflower/characters/appupdate/DownloadIntentService;->sendNotification(Lcom/cornflower/characters/appupdate/Download;)V
    invoke-static {v2, v0}, Lcom/cornflower/characters/appupdate/DownloadIntentService;->access$000(Lcom/cornflower/characters/appupdate/DownloadIntentService;Lcom/cornflower/characters/appupdate/Download;)V

    .line 66
    return-void
.end method
