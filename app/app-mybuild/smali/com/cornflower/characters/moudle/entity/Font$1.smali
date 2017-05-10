.class final Lcom/cornflower/characters/moudle/entity/Font$1;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cornflower/characters/moudle/entity/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cornflower/characters/moudle/entity/Font;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cornflower/characters/moudle/entity/Font;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v0, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-direct {v0, p1}, Lcom/cornflower/characters/moudle/entity/Font;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/moudle/entity/Font$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cornflower/characters/moudle/entity/Font;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cornflower/characters/moudle/entity/Font;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 100
    new-array v0, p1, [Lcom/cornflower/characters/moudle/entity/Font;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/moudle/entity/Font$1;->newArray(I)[Lcom/cornflower/characters/moudle/entity/Font;

    move-result-object v0

    return-object v0
.end method
