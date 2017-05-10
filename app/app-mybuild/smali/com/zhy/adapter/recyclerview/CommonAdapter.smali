.class public abstract Lcom/zhy/adapter/recyclerview/CommonAdapter;
.super Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutId:I


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
    .line 24
    .local p0, "this":Lcom/zhy/adapter/recyclerview/CommonAdapter;, "Lcom/zhy/adapter/recyclerview/CommonAdapter<TT;>;"
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3}, Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/CommonAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/adapter/recyclerview/CommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput p2, p0, Lcom/zhy/adapter/recyclerview/CommonAdapter;->mLayoutId:I

    .line 28
    iput-object p3, p0, Lcom/zhy/adapter/recyclerview/CommonAdapter;->mDatas:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/zhy/adapter/recyclerview/CommonAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/zhy/adapter/recyclerview/CommonAdapter$1;-><init>(Lcom/zhy/adapter/recyclerview/CommonAdapter;I)V

    invoke-virtual {p0, v0}, Lcom/zhy/adapter/recyclerview/CommonAdapter;->addItemViewDelegate(Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter;

    .line 50
    return-void
.end method


# virtual methods
.method protected abstract convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/recyclerview/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method
