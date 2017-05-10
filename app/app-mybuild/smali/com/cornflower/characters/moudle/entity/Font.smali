.class public Lcom/cornflower/characters/moudle/entity/Font;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checked:Z

.field private fColor:Lcom/cornflower/characters/moudle/entity/FColor;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/cornflower/characters/moudle/entity/Font$1;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/entity/Font$1;-><init>()V

    sput-object v0, Lcom/cornflower/characters/moudle/entity/Font;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/entity/FColor;-><init>()V

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->fColor:Lcom/cornflower/characters/moudle/entity/FColor;

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/entity/FColor;-><init>()V

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->fColor:Lcom/cornflower/characters/moudle/entity/FColor;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->id:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->realName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->text:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->checked:Z

    .line 89
    const-class v0, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/moudle/entity/FColor;

    iput-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->fColor:Lcom/cornflower/characters/moudle/entity/FColor;

    .line 90
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getfColor()Lcom/cornflower/characters/moudle/entity/FColor;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->fColor:Lcom/cornflower/characters/moudle/entity/FColor;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/cornflower/characters/moudle/entity/Font;->checked:Z

    .line 31
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cornflower/characters/moudle/entity/Font;->id:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cornflower/characters/moudle/entity/Font;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0
    .param p1, "realName"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cornflower/characters/moudle/entity/Font;->realName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cornflower/characters/moudle/entity/Font;->text:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setfColor(Lcom/cornflower/characters/moudle/entity/FColor;)V
    .locals 0
    .param p1, "fColor"    # Lcom/cornflower/characters/moudle/entity/FColor;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cornflower/characters/moudle/entity/Font;->fColor:Lcom/cornflower/characters/moudle/entity/FColor;

    .line 23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->realName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-object v0, p0, Lcom/cornflower/characters/moudle/entity/Font;->fColor:Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
