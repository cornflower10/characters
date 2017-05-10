.class public Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field delegates:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public addDelegate(ILcom/zhy/adapter/abslistview/base/ItemViewDelegate;)Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    .local p2, "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An ItemViewDelegate is already registered for the viewType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Already registered ItemViewDelegate is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 42
    return-object p0
.end method

.method public addDelegate(Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;)Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 23
    .local v0, "viewType":I
    if-eqz p1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 28
    :cond_0
    return-object p0
.end method

.method public convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V
    .locals 6
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
    .line 88
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 89
    .local v1, "delegatesCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 91
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;

    .line 93
    .local v0, "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    invoke-interface {v0, p2, p3}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;->convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V

    .line 96
    return-void

    .line 89
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ItemViewDelegateManager added that matches position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in data source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getItemViewDelegateCount()I
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;

    invoke-interface {v0}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(Ljava/lang/Object;I)I
    .locals 6
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 117
    .local v1, "delegatesCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 119
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;

    .line 120
    .local v0, "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    invoke-interface {v0, p1, p2}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v3

    return v3

    .line 117
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 125
    .end local v0    # "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ItemViewDelegate added that matches position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in data source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getItemViewType(Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;)I
    .locals 1
    .param p1, "itemViewDelegate"    # Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;

    .prologue
    .line 111
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(Ljava/lang/Object;I)I
    .locals 6
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 74
    .local v1, "delegatesCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 76
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;

    .line 77
    .local v0, "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    invoke-interface {v0, p1, p2}, Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    return v3

    .line 74
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 82
    .end local v0    # "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ItemViewDelegate added that matches position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in data source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public removeDelegate(I)Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;
    .locals 2
    .param p1, "itemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 64
    .local v0, "indexToRemove":I
    if-ltz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 68
    :cond_0
    return-object p0
.end method

.method public removeDelegate(Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;)Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "delegate":Lcom/zhy/adapter/abslistview/base/ItemViewDelegate;, "Lcom/zhy/adapter/abslistview/base/ItemViewDelegate<TT;>;"
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ItemViewDelegate is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 53
    .local v0, "indexToRemove":I
    if-ltz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 57
    :cond_1
    return-object p0
.end method
