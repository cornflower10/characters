.class Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/zhy/adapter/recyclerview/base/ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;

.field final synthetic val$viewHolder:Lcom/zhy/adapter/recyclerview/base/ViewHolder;


# direct methods
.method constructor <init>(Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;Lcom/zhy/adapter/recyclerview/base/ViewHolder;)V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter.2;"
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;->this$0:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;

    iput-object p2, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;->val$viewHolder:Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    .local p0, "this":Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;, "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter.2;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;->this$0:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;

    iget-object v1, v1, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;->val$viewHolder:Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    invoke-virtual {v1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 78
    .local v0, "position":I
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;->this$0:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;

    iget-object v1, v1, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$2;->val$viewHolder:Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    invoke-interface {v1, p1, v2, v0}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    move-result v1

    .line 80
    .end local v0    # "position":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
