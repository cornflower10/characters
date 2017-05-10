.class public Lcom/cornflower/characters/moudle/moudleImpl/WelcomeMoudleImp;
.super Ljava/lang/Object;
.source "WelcomeMoudleImp.java"

# interfaces
.implements Lcom/cornflower/characters/moudle/WelcomeMoudle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/moudle/moudleImpl/WelcomeMoudleImp;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getData(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
