.class public Lcom/cornflower/characters/moudle/entity/FColor;
.super Ljava/lang/Object;
.source "FColor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/cornflower/characters/moudle/entity/FColor$1;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/entity/FColor$1;-><init>()V

    sput-object v0, Lcom/cornflower/characters/moudle/entity/FColor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/moudle/entity/FColor;->color:I

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/cornflower/characters/moudle/entity/FColor;->color:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/cornflower/characters/moudle/entity/FColor;->color:I

    .line 18
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/cornflower/characters/moudle/entity/FColor;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    return-void
.end method
