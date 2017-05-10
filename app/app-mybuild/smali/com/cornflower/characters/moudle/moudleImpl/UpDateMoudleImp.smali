.class public Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;
.super Lcom/cornflower/characters/presenter/BasePresenter;
.source "UpDateMoudleImp.java"

# interfaces
.implements Lcom/cornflower/characters/moudle/UpdateMoudle;


# instance fields
.field private common:Lcom/cornflower/characters/moudle/Common;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cornflower/characters/moudle/Common",
            "<",
            "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cornflower/characters/moudle/Common;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cornflower/characters/moudle/Common",
            "<",
            "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "common":Lcom/cornflower/characters/moudle/Common;, "Lcom/cornflower/characters/moudle/Common<Lcom/cornflower/characters/moudle/entity/UpdateInfo;>;"
    invoke-direct {p0}, Lcom/cornflower/characters/presenter/BasePresenter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->common:Lcom/cornflower/characters/moudle/Common;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;)Lcom/cornflower/characters/moudle/Common;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->common:Lcom/cornflower/characters/moudle/Common;

    return-object v0
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->onUnsubscribe()V

    .line 43
    return-void
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/cornflower/characters/network/RetrofitManager;->builder()Lcom/cornflower/characters/network/RetrofitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cornflower/characters/network/RetrofitManager;->update()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;

    invoke-direct {v1, p0}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;-><init>(Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;)V

    invoke-virtual {p0, v0, v1}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->addSubscription(Lrx/Observable;Lrx/Subscriber;)V

    .line 38
    return-void
.end method
