.class Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source "DownloadProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;Lokio/Source;)V
    .locals 2
    .param p2, "x0"    # Lokio/Source;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 51
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v8

    .line 53
    .local v8, "bytesRead":J
    iget-wide v2, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->totalBytesRead:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_1

    move-wide v0, v8

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->totalBytesRead:J

    .line 55
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    # getter for: Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->progressListener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;
    invoke-static {v0}, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->access$000(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;)Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    # getter for: Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->progressListener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;
    invoke-static {v0}, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->access$000(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;)Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    move-result-object v1

    iget-wide v2, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->totalBytesRead:J

    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;->this$0:Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    # getter for: Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;
    invoke-static {v0}, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->access$100(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/cornflower/characters/appupdate/DownloadProgressListener;->update(JJZ)V

    .line 58
    :cond_0
    return-wide v8

    .line 53
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
