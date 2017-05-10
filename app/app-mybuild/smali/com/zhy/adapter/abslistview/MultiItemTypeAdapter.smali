.class public Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
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

.field private mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    invoke-direct {v0}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    .line 26
    return-void
.end method

.method private useItemViewDelegateManager()Z
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    invoke-virtual {v0}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItemViewDelegate(Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;)Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    .local p1, "itemViewDelegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->addDelegate(Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;)Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    .line 31
    return-object p0
.end method

.method protected convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/zhy/adapter/abslistview/ViewHolder;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V

    .line 72
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->useItemViewDelegateManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    iget-object v2, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    iget-object v2, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    iget-object v3, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->getItemViewLayoutId(Ljava/lang/Object;I)I

    move-result v0

    .line 63
    .local v0, "layoutId":I
    iget-object v2, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3, v0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/zhy/adapter/abslistview/ViewHolder;

    move-result-object v1

    .line 65
    .local v1, "viewHolder":Lcom/zhy/adapter/abslistview/ViewHolder;
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V

    .line 66
    invoke-virtual {v1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;, "Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;

    invoke-virtual {v0}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method
