.class public Lcom/cornflower/characters/ToTextActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "ToTextActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cornflower/characters/ToTextActivity;",
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
    .local p0, "this":Lcom/cornflower/characters/ToTextActivity$$ViewBinder;, "Lcom/cornflower/characters/ToTextActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/ToTextActivity;Ljava/lang/Object;)V
    .locals 4
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
    .local p0, "this":Lcom/cornflower/characters/ToTextActivity$$ViewBinder;, "Lcom/cornflower/characters/ToTextActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/cornflower/characters/ToTextActivity;, "TT;"
    const v2, 0x7f0d006f

    const v3, 0x7f0d006c

    .line 11
    const-string v1, "field \'tv\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'tv\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/cornflower/characters/ToTextActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/cornflower/characters/ToTextActivity$$ViewBinder$1;-><init>(Lcom/cornflower/characters/ToTextActivity$$ViewBinder;Lcom/cornflower/characters/ToTextActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v1, 0x7f0d0070

    const-string v2, "field \'v\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/cornflower/characters/ToTextActivity;->v:Landroid/view/View;

    .line 23
    const v1, 0x7f0d0071

    const-string v2, "field \'v1\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p2, Lcom/cornflower/characters/ToTextActivity;->v1:Landroid/view/View;

    .line 25
    const-string v1, "field \'toolbar\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'toolbar\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p2, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 27
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lbutterknife/ButterKnife$Finder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/ToTextActivity$$ViewBinder;, "Lcom/cornflower/characters/ToTextActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/cornflower/characters/ToTextActivity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/ToTextActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/ToTextActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/cornflower/characters/ToTextActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/cornflower/characters/ToTextActivity$$ViewBinder;, "Lcom/cornflower/characters/ToTextActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/cornflower/characters/ToTextActivity;, "TT;"
    const/4 v0, 0x0

    .line 30
    iput-object v0, p1, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    .line 31
    iput-object v0, p1, Lcom/cornflower/characters/ToTextActivity;->v:Landroid/view/View;

    .line 32
    iput-object v0, p1, Lcom/cornflower/characters/ToTextActivity;->v1:Landroid/view/View;

    .line 33
    iput-object v0, p1, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 34
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/ToTextActivity$$ViewBinder;, "Lcom/cornflower/characters/ToTextActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/cornflower/characters/ToTextActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/ToTextActivity$$ViewBinder;->unbind(Lcom/cornflower/characters/ToTextActivity;)V

    return-void
.end method
