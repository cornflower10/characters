.class public Lcom/cornflower/characters/MainActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "MainActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cornflower/characters/MainActivity;",
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
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder;, "Lcom/cornflower/characters/MainActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/MainActivity;Ljava/lang/Object;)V
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
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder;, "Lcom/cornflower/characters/MainActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/cornflower/characters/MainActivity;, "TT;"
    const v4, 0x7f0d006e

    const v3, 0x7f0d006d

    const v2, 0x7f0d006c

    .line 11
    const-string v1, "field \'ibAdd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'ibAdd\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p2, Lcom/cornflower/characters/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    .line 13
    new-instance v1, Lcom/cornflower/characters/MainActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/cornflower/characters/MainActivity$$ViewBinder$1;-><init>(Lcom/cornflower/characters/MainActivity$$ViewBinder;Lcom/cornflower/characters/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'lv\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'lv\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    iput-object v1, p2, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    .line 23
    const-string v1, "field \'toolbar\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'toolbar\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p2, Lcom/cornflower/characters/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 25
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lbutterknife/ButterKnife$Finder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder;, "Lcom/cornflower/characters/MainActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/cornflower/characters/MainActivity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/MainActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/MainActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/cornflower/characters/MainActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder;, "Lcom/cornflower/characters/MainActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/cornflower/characters/MainActivity;, "TT;"
    const/4 v0, 0x0

    .line 28
    iput-object v0, p1, Lcom/cornflower/characters/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    .line 29
    iput-object v0, p1, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    .line 30
    iput-object v0, p1, Lcom/cornflower/characters/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 31
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder;, "Lcom/cornflower/characters/MainActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/cornflower/characters/MainActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/MainActivity$$ViewBinder;->unbind(Lcom/cornflower/characters/MainActivity;)V

    return-void
.end method
