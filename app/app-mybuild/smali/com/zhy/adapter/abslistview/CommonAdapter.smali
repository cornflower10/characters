.class public abstract Lcom/zhy/adapter/abslistview/CommonAdapter;
.super Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/zhy/adapter/abslistview/CommonAdapter;, "Lcom/zhy/adapter/abslistview/CommonAdapter<TT;>;"
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3}, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 16
    new-instance v0, Lcom/zhy/adapter/abslistview/CommonAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/zhy/adapter/abslistview/CommonAdapter$1;-><init>(Lcom/zhy/adapter/abslistview/CommonAdapter;I)V

    invoke-virtual {p0, v0}, Lcom/zhy/adapter/abslistview/CommonAdapter;->addItemViewDelegate(Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;)Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method
