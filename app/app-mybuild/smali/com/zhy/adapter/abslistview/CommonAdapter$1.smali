.class Lcom/zhy/adapter/abslistview/CommonAdapter$1;
.super Ljava/lang/Object;
.source "CommonAdapter.java"

# interfaces
.implements Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/adapter/abslistview/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/adapter/abslistview/CommonAdapter;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Lcom/zhy/adapter/abslistview/CommonAdapter;I)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/zhy/adapter/abslistview/CommonAdapter$1;, "Lcom/zhy/adapter/abslistview/CommonAdapter.1;"
    iput-object p1, p0, Lcom/zhy/adapter/abslistview/CommonAdapter$1;->this$0:Lcom/zhy/adapter/abslistview/CommonAdapter;

    iput p2, p0, Lcom/zhy/adapter/abslistview/CommonAdapter$1;->val$layoutId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "holder"    # Lcom/zhy/adapter/abslistview/ViewHolder;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/zhy/adapter/abslistview/CommonAdapter$1;, "Lcom/zhy/adapter/abslistview/CommonAdapter.1;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/CommonAdapter$1;->this$0:Lcom/zhy/adapter/abslistview/CommonAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhy/adapter/abslistview/CommonAdapter;->convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V

    .line 34
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/zhy/adapter/abslistview/CommonAdapter$1;, "Lcom/zhy/adapter/abslistview/CommonAdapter.1;"
    iget v0, p0, Lcom/zhy/adapter/abslistview/CommonAdapter$1;->val$layoutId:I

    return v0
.end method

.method public isForViewType(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/zhy/adapter/abslistview/CommonAdapter$1;, "Lcom/zhy/adapter/abslistview/CommonAdapter.1;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
