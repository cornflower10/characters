.class Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;
.super Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    invoke-direct {p0, p2, p3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public createMenu(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    # getter for: Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;
    invoke-static {v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->access$000(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    # getter for: Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;
    invoke-static {v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->access$000(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;->create(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;I)V
    .locals 3
    .param p1, "view"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;
    .param p2, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;
    .param p3, "index"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    # getter for: Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->access$100(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    # getter for: Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->access$100(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getPosition()I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;->onMenuItemClick(ILcom/cornflower/characters/widget/sweeplist/SwipeMenu;I)Z

    move-result v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    # getter for: Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    invoke-static {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->access$200(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 81
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;->this$0:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    # getter for: Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    invoke-static {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->access$200(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->smoothCloseMenu()V

    .line 83
    :cond_1
    return-void
.end method
