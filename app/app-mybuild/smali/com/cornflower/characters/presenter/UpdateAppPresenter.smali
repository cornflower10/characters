.class public Lcom/cornflower/characters/presenter/UpdateAppPresenter;
.super Ljava/lang/Object;
.source "UpdateAppPresenter.java"

# interfaces
.implements Lcom/cornflower/characters/moudle/Common;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cornflower/characters/moudle/Common",
        "<",
        "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mainView:Lcom/cornflower/characters/view/MainView;

.field private updateMoudle:Lcom/cornflower/characters/moudle/UpdateMoudle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cornflower/characters/view/MainView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainView"    # Lcom/cornflower/characters/view/MainView;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->mainView:Lcom/cornflower/characters/view/MainView;

    .line 26
    new-instance v0, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;

    invoke-direct {v0, p0}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;-><init>(Lcom/cornflower/characters/moudle/Common;)V

    iput-object v0, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->updateMoudle:Lcom/cornflower/characters/moudle/UpdateMoudle;

    .line 28
    return-void
.end method


# virtual methods
.method public Success(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 3
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 58
    const-string v1, "app\u7248\u672c\u4fe1\u606f"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/UpdateInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cornflower/characters/utils/PublicUtils;->getVersion(Landroid/content/Context;)I

    move-result v0

    .line 60
    .local v0, "version":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/UpdateInfo;->getVersion()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v1, p1}, Lcom/cornflower/characters/view/MainView;->showUpdateDioag(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    .line 63
    :cond_0
    return-void
.end method

.method public bridge synthetic Success(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->Success(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    return-void
.end method

.method public cancelUpdate()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->updateMoudle:Lcom/cornflower/characters/moudle/UpdateMoudle;

    invoke-interface {v0}, Lcom/cornflower/characters/moudle/UpdateMoudle;->cancelUpdate()V

    .line 36
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public flagUpdate(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 1
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/UpdateInfo;->isFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v0}, Lcom/cornflower/characters/view/MainView;->ActvvityFinish()V

    .line 54
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->updateMoudle:Lcom/cornflower/characters/moudle/UpdateMoudle;

    invoke-interface {v0}, Lcom/cornflower/characters/moudle/UpdateMoudle;->requestUpdate()V

    .line 32
    return-void
.end method

.method public updateStart(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 3
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 40
    const-string v1, ""

    const-string v2, "app\u66f4\u65b0\u5f00\u59cb......"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->context:Landroid/content/Context;

    const-class v2, Lcom/cornflower/characters/appupdate/DownloadIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/UpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    return-void
.end method
