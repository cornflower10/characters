.class public Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/zhy/adapter/recyclerview/base/ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

.field protected mOnItemClickListener:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    invoke-direct {v0}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    .line 29
    return-void
.end method


# virtual methods
.method public addItemViewDelegate(ILcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;
    .locals 1
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    .local p2, "itemViewDelegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->addDelegate(ILcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    .line 108
    return-object p0
.end method

.method public addItemViewDelegate(Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    .local p1, "itemViewDelegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->addDelegate(Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    .line 103
    return-object p0
.end method

.method public convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/recyclerview/base/ViewHolder;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V

    .line 54
    return-void
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    .local v0, "itemCount":I
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected isEnabled(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 17
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    check-cast p1, Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->onBindViewHolder(Lcom/zhy/adapter/recyclerview/base/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zhy/adapter/recyclerview/base/ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 87
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 17
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v3, p2}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;

    move-result-object v1

    .line 41
    .local v1, "itemViewDelegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;
    invoke-interface {v1}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v2

    .line 42
    .local v2, "layoutId":I
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .line 43
    .local v0, "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    invoke-virtual {v0}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->onViewHolderCreated(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Landroid/view/View;)V

    .line 44
    invoke-virtual {p0, p1, v0, p2}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/zhy/adapter/recyclerview/base/ViewHolder;I)V

    .line 45
    return-object v0
.end method

.method public onViewHolderCreated(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 50
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    return-void
.end method

.method protected setListener(Landroid/view/ViewGroup;Lcom/zhy/adapter/recyclerview/base/ViewHolder;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewHolder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p3, "viewType"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    invoke-virtual {p0, p3}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$1;-><init>(Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;Lcom/zhy/adapter/recyclerview/base/ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;-><init>(Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;Lcom/zhy/adapter/recyclerview/base/ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;

    .prologue
    .line 122
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;

    .line 123
    return-void
.end method

.method protected useItemViewDelegateManager()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;

    invoke-virtual {v0}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
