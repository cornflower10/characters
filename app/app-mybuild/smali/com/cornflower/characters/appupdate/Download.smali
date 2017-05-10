.class public Lcom/cornflower/characters/appupdate/Download;
.super Ljava/lang/Object;
.source "Download.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cornflower/characters/appupdate/Download;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentFileSize:J

.field private progress:I

.field private totalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/cornflower/characters/appupdate/Download$1;

    invoke-direct {v0}, Lcom/cornflower/characters/appupdate/Download$1;-><init>()V

    sput-object v0, Lcom/cornflower/characters/appupdate/Download;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/appupdate/Download;->progress:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cornflower/characters/appupdate/Download;->currentFileSize:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cornflower/characters/appupdate/Download;->totalFileSize:J

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFileSize()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/cornflower/characters/appupdate/Download;->currentFileSize:J

    return-wide v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/cornflower/characters/appupdate/Download;->progress:I

    return v0
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/cornflower/characters/appupdate/Download;->totalFileSize:J

    return-wide v0
.end method

.method public setCurrentFileSize(J)V
    .locals 1
    .param p1, "currentFileSize"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/cornflower/characters/appupdate/Download;->currentFileSize:J

    .line 29
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/cornflower/characters/appupdate/Download;->progress:I

    .line 21
    return-void
.end method

.method public setTotalFileSize(J)V
    .locals 1
    .param p1, "totalFileSize"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/cornflower/characters/appupdate/Download;->totalFileSize:J

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/cornflower/characters/appupdate/Download;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-wide v0, p0, Lcom/cornflower/characters/appupdate/Download;->currentFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v0, p0, Lcom/cornflower/characters/appupdate/Download;->totalFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    return-void
.end method
