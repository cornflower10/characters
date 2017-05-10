.class public Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LoadMoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_LOAD_MORE:I = 0x7ffffffd


# instance fields
.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mLoadMoreLayoutId:I

.field private mLoadMoreView:Landroid/view/View;

.field private mOnLoadMoreListener:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 25
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    return v0
.end method

.method private hasLoadMore()Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreLayoutId:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowLoadMore(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->hasLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 117
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 119
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 122
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 124
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 126
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 131
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->hasLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0, p1}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x7ffffffd

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 85
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;

    invoke-direct {v1, p0}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;-><init>(Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;)V

    invoke-static {v0, p1, v1}, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;)V

    .line 101
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 71
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0, p2}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mOnLoadMoreListener:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mOnLoadMoreListener:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    invoke-interface {v0}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;->onLoadMoreRequested()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    const v1, 0x7ffffffd

    if-ne p2, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreLayoutId:I

    invoke-static {v1, p1, v2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .local v0, "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    goto :goto_0

    .line 65
    .end local v0    # "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 107
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 109
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setLoadMoreView(I)Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;
    .locals 0
    .param p1, "layoutId"    # I

    .prologue
    .line 159
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iput p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreLayoutId:I

    .line 160
    return-object p0
.end method

.method public setLoadMoreView(Landroid/view/View;)Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;
    .locals 0
    .param p1, "loadMoreView"    # Landroid/view/View;

    .prologue
    .line 153
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    .line 154
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;)Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;
    .locals 0
    .param p1, "loadMoreListener"    # Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    .prologue
    .line 144
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper<TT;>;"
    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->mOnLoadMoreListener:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    .line 148
    :cond_0
    return-object p0
.end method
