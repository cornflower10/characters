.class public Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mItems:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;

    return-object v0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mViewType:I

    return v0
.end method

.method public removeMenuItem(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->mViewType:I

    .line 46
    return-void
.end method
