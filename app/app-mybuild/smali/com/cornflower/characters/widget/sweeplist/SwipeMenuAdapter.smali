.class public Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;
.super Ljava/lang/Object;
.source "SwipeMenuAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView$OnSwipeItemClickListener;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private onMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public createMenu(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;

    .prologue
    const/16 v3, 0x12c

    .line 69
    new-instance v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;

    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "item":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;
    const-string v1, "Item 1"

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v0, v3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setWidth(I)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->addMenuItem(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;)V

    .line 75
    new-instance v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;

    .end local v0    # "item":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 76
    .restart local v0    # "item":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;
    const-string v1, "Item 2"

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 77
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v0, v3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setWidth(I)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->addMenuItem(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;)V

    .line 80
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "layout":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    if-nez p2, :cond_0

    .line 45
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "contentView":Landroid/view/View;
    new-instance v3, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;

    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;-><init>(Landroid/content/Context;)V

    .line 47
    .local v3, "menu":Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->setViewType(I)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->createMenu(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V

    .line 49
    new-instance v4, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    move-object v5, p3

    check-cast v5, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    invoke-direct {v4, v3, v5}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;-><init>(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)V

    .line 51
    .local v4, "menuView":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;
    invoke-virtual {v4, p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->setOnSwipeItemClickListener(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView$OnSwipeItemClickListener;)V

    move-object v2, p3

    .line 52
    check-cast v2, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    .line 53
    .local v2, "listView":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;
    new-instance v1, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .end local v1    # "layout":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    invoke-virtual {v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getCloseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getOpenInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 56
    .restart local v1    # "layout":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    invoke-virtual {v1, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->setPosition(I)V

    .line 64
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "listView":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;
    .end local v3    # "menu":Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;
    .end local v4    # "menuView":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    .line 58
    check-cast v1, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .line 59
    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->closeMenu()V

    .line 60
    invoke-virtual {v1, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->setPosition(I)V

    .line 61
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, p1, v6, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;I)V
    .locals 2
    .param p1, "view"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;
    .param p2, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;
    .param p3, "index"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->onMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->onMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    invoke-virtual {p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;->onMenuItemClick(ILcom/cornflower/characters/widget/sweeplist/SwipeMenu;I)Z

    .line 88
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 98
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "onMenuItemClickListener"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->onMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    .line 93
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 103
    return-void
.end method
