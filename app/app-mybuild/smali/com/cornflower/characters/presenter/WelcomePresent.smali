.class public Lcom/cornflower/characters/presenter/WelcomePresent;
.super Lcom/cornflower/characters/presenter/BasePresenter;
.source "WelcomePresent.java"


# instance fields
.field private context:Landroid/content/Context;

.field private welcomeMoudle:Lcom/cornflower/characters/moudle/WelcomeMoudle;

.field private welcomeView:Lcom/cornflower/characters/view/WelcomeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cornflower/characters/view/WelcomeView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "welcomeView"    # Lcom/cornflower/characters/view/WelcomeView;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cornflower/characters/presenter/BasePresenter;-><init>()V

    .line 17
    new-instance v0, Lcom/cornflower/characters/moudle/moudleImpl/WelcomeMoudleImp;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/moudleImpl/WelcomeMoudleImp;-><init>()V

    iput-object v0, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->welcomeMoudle:Lcom/cornflower/characters/moudle/WelcomeMoudle;

    .line 18
    iput-object p2, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->welcomeView:Lcom/cornflower/characters/view/WelcomeView;

    .line 19
    iput-object p1, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public showListAndStart()V
    .locals 3

    .prologue
    .line 22
    iget-object v1, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->welcomeView:Lcom/cornflower/characters/view/WelcomeView;

    iget-object v0, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->welcomeMoudle:Lcom/cornflower/characters/moudle/WelcomeMoudle;

    iget-object v2, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->context:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/cornflower/characters/moudle/WelcomeMoudle;->getData(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/cornflower/characters/view/WelcomeView;->showList(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/cornflower/characters/presenter/WelcomePresent;->welcomeView:Lcom/cornflower/characters/view/WelcomeView;

    invoke-interface {v0}, Lcom/cornflower/characters/view/WelcomeView;->startAnimation()V

    .line 24
    return-void
.end method
