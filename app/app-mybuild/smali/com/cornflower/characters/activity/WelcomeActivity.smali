.class public Lcom/cornflower/characters/activity/WelcomeActivity;
.super Lcom/cornflower/characters/BaseActivity;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/cornflower/characters/view/WelcomeView;


# instance fields
.field ctv:Lcom/cornflower/characters/widget/CustomerTextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d0074
        }
    .end annotation
.end field

.field rv:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d0072
        }
    .end annotation
.end field

.field scv:Lcom/cornflower/characters/widget/SuperCircleView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d0073
        }
    .end annotation
.end field

.field private welcomePresent:Lcom/cornflower/characters/presenter/WelcomePresent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cornflower/characters/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/activity/WelcomeActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cornflower/characters/activity/WelcomeActivity;->skip()V

    return-void
.end method

.method private skip()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cornflower/characters/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cornflower/characters/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    const v1, 0x7f050013

    const v2, 0x7f050014

    invoke-virtual {p0, v1, v2}, Lcom/cornflower/characters/activity/WelcomeActivity;->overridePendingTransition(II)V

    .line 50
    invoke-virtual {p0}, Lcom/cornflower/characters/activity/WelcomeActivity;->finish()V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/cornflower/characters/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/activity/WelcomeActivity;->setContentView(I)V

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 40
    new-instance v0, Lcom/cornflower/characters/presenter/WelcomePresent;

    invoke-direct {v0, p0, p0}, Lcom/cornflower/characters/presenter/WelcomePresent;-><init>(Landroid/content/Context;Lcom/cornflower/characters/view/WelcomeView;)V

    iput-object v0, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->welcomePresent:Lcom/cornflower/characters/presenter/WelcomePresent;

    .line 41
    iget-object v0, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->welcomePresent:Lcom/cornflower/characters/presenter/WelcomePresent;

    invoke-virtual {v0}, Lcom/cornflower/characters/presenter/WelcomePresent;->showListAndStart()V

    .line 42
    iget-object v0, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->scv:Lcom/cornflower/characters/widget/SuperCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/SuperCircleView;->setShowSelect(Z)V

    .line 44
    return-void
.end method

.method public showList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/cornflower/characters/adapter/WelComeAdapter;

    iget-object v2, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f04003c

    invoke-direct {v1, v2, v3, p1}, Lcom/cornflower/characters/adapter/WelComeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 57
    .local v1, "welComeAdapter":Lcom/cornflower/characters/adapter/WelComeAdapter;
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 59
    iget-object v2, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v2, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 61
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 66
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    new-instance v1, Lcom/cornflower/characters/activity/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/cornflower/characters/activity/WelcomeActivity$1;-><init>(Lcom/cornflower/characters/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    iget-object v1, p0, Lcom/cornflower/characters/activity/WelcomeActivity;->scv:Lcom/cornflower/characters/widget/SuperCircleView;

    new-instance v2, Lcom/cornflower/characters/activity/WelcomeActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/cornflower/characters/activity/WelcomeActivity$2;-><init>(Lcom/cornflower/characters/activity/WelcomeActivity;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/SuperCircleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 65
    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method
