.class public Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EmptyWrapper.java"


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
.field public static final ITEM_TYPE_EMPTY:I = 0x7ffffffe


# instance fields
.field private mEmptyLayoutId:I

.field private mEmptyView:Landroid/view/View;

.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 25
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyLayoutId:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7ffffffe

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 55
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper$1;

    invoke-direct {v1, p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper$1;-><init>(Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;)V

    invoke-static {v0, p1, v1}, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;)V

    .line 73
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyLayoutId:I

    invoke-static {v1, p1, v2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    move-result-object v0

    .local v0, "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    goto :goto_0

    .line 49
    .end local v0    # "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 78
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 79
    invoke-direct {p0}, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1}, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setEmptyView(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .prologue
    .line 122
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    iput p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyLayoutId:I

    .line 123
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 117
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;, "Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper<TT;>;"
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    .line 118
    return-void
.end method
