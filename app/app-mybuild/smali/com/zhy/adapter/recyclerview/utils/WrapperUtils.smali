.class public Lcom/zhy/adapter/recyclerview/utils/WrapperUtils;
.super Ljava/lang/Object;
.source "WrapperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;)V
    .locals 4
    .param p0, "innerAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "callback"    # Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 22
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 23
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 25
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 26
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    .line 28
    .local v2, "spanSizeLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    new-instance v3, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$1;

    invoke-direct {v3, p2, v0, v2}, Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$1;-><init>(Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 36
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 38
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v2    # "spanSizeLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    :cond_0
    return-void
.end method

.method public static setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 42
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 48
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 50
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 52
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void
.end method
