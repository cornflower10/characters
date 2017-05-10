.class public Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "WelcomeActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cornflower/characters/activity/WelcomeActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;, "Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/activity/WelcomeActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;, "Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/cornflower/characters/activity/WelcomeActivity;, "TT;"
    const v4, 0x7f0d0074

    const v3, 0x7f0d0073

    const v2, 0x7f0d0072

    .line 11
    const-string v1, "field \'scv\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'scv\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/widget/SuperCircleView;

    iput-object v1, p2, Lcom/cornflower/characters/activity/WelcomeActivity;->scv:Lcom/cornflower/characters/widget/SuperCircleView;

    .line 13
    const-string v1, "field \'rv\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'rv\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p2, Lcom/cornflower/characters/activity/WelcomeActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    .line 15
    const-string v1, "field \'ctv\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'ctv\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/widget/CustomerTextView;

    iput-object v1, p2, Lcom/cornflower/characters/activity/WelcomeActivity;->ctv:Lcom/cornflower/characters/widget/CustomerTextView;

    .line 17
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lbutterknife/ButterKnife$Finder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;, "Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/cornflower/characters/activity/WelcomeActivity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/activity/WelcomeActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/cornflower/characters/activity/WelcomeActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;, "Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/cornflower/characters/activity/WelcomeActivity;, "TT;"
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/cornflower/characters/activity/WelcomeActivity;->scv:Lcom/cornflower/characters/widget/SuperCircleView;

    .line 21
    iput-object v0, p1, Lcom/cornflower/characters/activity/WelcomeActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    .line 22
    iput-object v0, p1, Lcom/cornflower/characters/activity/WelcomeActivity;->ctv:Lcom/cornflower/characters/widget/CustomerTextView;

    .line 23
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;, "Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/cornflower/characters/activity/WelcomeActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/activity/WelcomeActivity$$ViewBinder;->unbind(Lcom/cornflower/characters/activity/WelcomeActivity;)V

    return-void
.end method
