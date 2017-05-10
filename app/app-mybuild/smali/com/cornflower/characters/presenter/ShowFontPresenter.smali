.class public Lcom/cornflower/characters/presenter/ShowFontPresenter;
.super Lcom/cornflower/characters/presenter/BasePresenter;
.source "ShowFontPresenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

.field private showFontMoudle:Lcom/cornflower/characters/moudle/ShowFontMoudle;

.field private showFontView:Lcom/cornflower/characters/view/ShowFontView;


# direct methods
.method public constructor <init>(Lcom/cornflower/characters/view/EditFontView;Lcom/cornflower/characters/view/ShowFontView;Landroid/content/Context;)V
    .locals 1
    .param p1, "editFontView"    # Lcom/cornflower/characters/view/EditFontView;
    .param p2, "showFontView"    # Lcom/cornflower/characters/view/ShowFontView;
    .param p3, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cornflower/characters/presenter/BasePresenter;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;

    .line 27
    new-instance v0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;

    invoke-direct {v0, p3}, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontMoudle:Lcom/cornflower/characters/moudle/ShowFontMoudle;

    .line 28
    new-instance v0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;

    invoke-direct {v0, p3, p1}, Lcom/cornflower/characters/presenter/MyFontPresenterImp;-><init>(Landroid/content/Context;Lcom/cornflower/characters/view/EditFontView;)V

    iput-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/presenter/ShowFontPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/moudle/ShowFontMoudle;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/presenter/ShowFontPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontMoudle:Lcom/cornflower/characters/moudle/ShowFontMoudle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/view/ShowFontView;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/presenter/ShowFontPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;

    return-object v0
.end method


# virtual methods
.method public saveFont()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    invoke-interface {v0}, Lcom/cornflower/characters/presenter/MyFontPresenter;->saveFont()V

    .line 64
    return-void
.end method

.method public showColors()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;

    iget-object v1, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontMoudle:Lcom/cornflower/characters/moudle/ShowFontMoudle;

    iget-object v2, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/cornflower/characters/moudle/ShowFontMoudle;->getFontColors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cornflower/characters/view/ShowFontView;->showFontColor(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public showFont()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;

    invoke-interface {v0}, Lcom/cornflower/characters/view/ShowFontView;->showLoading()V

    .line 32
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;

    invoke-interface {v0}, Lcom/cornflower/characters/view/ShowFontView;->showText()V

    .line 33
    new-instance v0, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;

    invoke-direct {v0, p0}, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;-><init>(Lcom/cornflower/characters/presenter/ShowFontPresenter;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;

    invoke-direct {v1, p0}, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;-><init>(Lcom/cornflower/characters/presenter/ShowFontPresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->addSubscription(Lrx/Observable;Lrx/Subscriber;)V

    .line 60
    return-void
.end method
