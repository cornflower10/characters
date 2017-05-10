.class Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterWrapper.java"

# interfaces
.implements Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;


# direct methods
.method constructor <init>(Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;)V
    .locals 0

    .prologue
    .line 90
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper.1;"
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;->this$0:Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 2
    .param p1, "layoutManager"    # Landroid/support/v7/widget/GridLayoutManager;
    .param p2, "oldLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p3, "position"    # I

    .prologue
    .line 94
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;, "Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper.1;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;->this$0:Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;

    invoke-virtual {v1, p3}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->getItemViewType(I)I

    move-result v0

    .line 95
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;->this$0:Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;

    # getter for: Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v1}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->access$000(Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 104
    :goto_0
    return v1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper$1;->this$0:Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;

    # getter for: Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v1}, Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;->access$100(Lcom/zhy/adapter/recyclerview/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    .line 102
    :cond_1
    if-eqz p2, :cond_2

    .line 103
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0

    .line 104
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
