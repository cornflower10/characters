.class public Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;
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
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public addDelegate(ILcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    .local p2, "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
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

    iget-object v2, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 40
    return-object p0
.end method

.method public addDelegate(Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 21
    .local v0, "viewType":I
    if-eqz p1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    :cond_0
    return-object p0
.end method

.method public convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 6
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/recyclerview/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 87
    .local v1, "delegatesCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 89
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;

    .line 91
    .local v0, "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    invoke-interface {v0, p2, p3}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v0, p1, p2, p3}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;->convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V

    .line 94
    return-void

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
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

.method public getItemViewDelegate(I)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 104
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;

    return-object v0
.end method

.method public getItemViewDelegateCount()I
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 109
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    return v0
.end method

.method public getItemViewType(Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)I
    .locals 1
    .param p1, "itemViewDelegate"    # Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;

    .prologue
    .line 114
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

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
    .line 71
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 72
    .local v1, "delegatesCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 74
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;

    .line 75
    .local v0, "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    invoke-interface {v0, p1, p2}, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    return v3

    .line 72
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 80
    .end local v0    # "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
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

.method public removeDelegate(I)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;
    .locals 2
    .param p1, "itemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 62
    .local v0, "indexToRemove":I
    if-ltz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 66
    :cond_0
    return-object p0
.end method

.method public removeDelegate(Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;)Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate",
            "<TT;>;)",
            "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager<TT;>;"
    .local p1, "delegate":Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate;, "Lcom/zhy/adapter/recyclerview/base/ItemViewDelegate<TT;>;"
    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ItemViewDelegate is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 51
    .local v0, "indexToRemove":I
    if-ltz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 55
    :cond_1
    return-object p0
.end method
