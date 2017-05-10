.class public Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "DownloadProgressResponseBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private progressListener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;

.field private responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/cornflower/characters/appupdate/DownloadProgressListener;)V
    .locals 0
    .param p1, "responseBody"    # Lokhttp3/ResponseBody;
    .param p2, "progressListener"    # Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    .prologue
    .line 22
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 24
    iput-object p2, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->progressListener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;)Lcom/cornflower/characters/appupdate/DownloadProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->progressListener:Lcom/cornflower/characters/appupdate/DownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1, "source"    # Lokio/Source;

    .prologue
    .line 46
    new-instance v0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody$1;-><init>(Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/cornflower/characters/appupdate/DownloadProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
