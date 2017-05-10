.class public Lcom/cornflower/characters/widget/ColorPopWindow;
.super Lcom/cornflower/characters/widget/BasePopupWindowForListView;
.source "ColorPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cornflower/characters/widget/BasePopupWindowForListView",
        "<",
        "Lcom/cornflower/characters/moudle/entity/FColor;",
        ">;"
    }
.end annotation


# instance fields
.field private onPopItemclickListener:Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;IIZLjava/util/List;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p5, "mDatas":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/FColor;>;"
    invoke-direct/range {p0 .. p5}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;-><init>(Landroid/view/View;IIZLjava/util/List;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/widget/ColorPopWindow;)Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/ColorPopWindow;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->onPopItemclickListener:Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;

    return-object v0
.end method


# virtual methods
.method protected varargs beforeInitWeNeedSomeParams([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 26
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public initEvents()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 30
    const v2, 0x7f0d0072

    invoke-virtual {p0, v2}, Lcom/cornflower/characters/widget/ColorPopWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 31
    new-instance v0, Lcom/cornflower/characters/adapter/ColorAdapter;

    iget-object v2, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->context:Landroid/content/Context;

    const v3, 0x7f04001d

    iget-object v4, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->mDatas:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/cornflower/characters/adapter/ColorAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    .local v0, "fontAdapter":Lcom/cornflower/characters/adapter/ColorAdapter;
    new-instance v2, Lcom/cornflower/characters/widget/ColorPopWindow$1;

    invoke-direct {v2, p0, v0}, Lcom/cornflower/characters/widget/ColorPopWindow$1;-><init>(Lcom/cornflower/characters/widget/ColorPopWindow;Lcom/cornflower/characters/adapter/ColorAdapter;)V

    invoke-virtual {v0, v2}, Lcom/cornflower/characters/adapter/ColorAdapter;->setOnItemClickListener(Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;)V

    .line 46
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 47
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v2, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    iget-object v2, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 49
    iget-object v2, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/cornflower/characters/widget/GridSpacingItemDecoration;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Lcom/cornflower/characters/widget/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 50
    invoke-virtual {v0}, Lcom/cornflower/characters/adapter/ColorAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public setOnPopItemclickListener(Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;)V
    .locals 0
    .param p1, "onPopItemclickListener"    # Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cornflower/characters/widget/ColorPopWindow;->onPopItemclickListener:Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;

    .line 61
    return-void
.end method
