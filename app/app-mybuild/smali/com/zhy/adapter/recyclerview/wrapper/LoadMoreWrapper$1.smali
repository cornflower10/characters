.class Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;
.super Ljava/lang/Object;
.source "LoadMoreWrapper.java"

# interfaces
.implements Lcom/zhy/adapter/recyclerview/utils/WrapperUtils$SpanSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;


# direct methods
.method constructor <init>(Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;)V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper.1;"
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;->this$0:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 1
    .param p1, "layoutManager"    # Landroid/support/v7/widget/GridLayoutManager;
    .param p2, "oldLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p3, "position"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;, "Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper.1;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper$1;->this$0:Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;

    # invokes: Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z
    invoke-static {v0, p3}, Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;->access$000(Lcom/zhy/adapter/recyclerview/wrapper/LoadMoreWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
