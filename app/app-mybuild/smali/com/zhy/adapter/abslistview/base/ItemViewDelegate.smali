.class public interface abstract Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;
.super Ljava/lang/Object;
.source "ItemViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public abstract getItemViewLayoutId()I
.end method

.method public abstract isForViewType(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
