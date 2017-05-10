.class public Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderAndFooterWrapper.java"


# annotations
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
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x30d40

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x186a0


# instance fields
.field private mFootViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 27
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 22
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 28
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method private getRealItemCount()I
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private isFooterViewPos(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 127
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderViewPos(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 83
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-direct {p0, p1}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getRealItemCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 89
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;

    invoke-direct {v1, p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;-><init>(Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;)V

    invoke-static {v0, p1, v1}, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;)V

    .line 107
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-direct {p0, p2}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0, p2}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->isFooterViewPos(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 34
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v2, v1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v2, v1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .line 42
    .local v0, "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    goto :goto_0

    .line 44
    .end local v0    # "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 112
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 114
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->isHeaderViewPos(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->isFooterViewPos(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 118
    :cond_1
    return-void
.end method
