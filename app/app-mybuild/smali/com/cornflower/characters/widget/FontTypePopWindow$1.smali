.class Lcom/cornflower/characters/widget/FontTypePopWindow$1;
.super Ljava/lang/Object;
.source "FontTypePopWindow.java"

# interfaces
.implements Lcom/zhy/adapter/recyclerview/MultiItemTypeAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/widget/FontTypePopWindow;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/widget/FontTypePopWindow;

.field final synthetic val$fontAdapter:Lcom/cornflower/characters/adapter/FontAdapter;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/widget/FontTypePopWindow;Lcom/cornflower/characters/adapter/FontAdapter;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cornflower/characters/widget/FontTypePopWindow$1;->this$0:Lcom/cornflower/characters/widget/FontTypePopWindow;

    iput-object p2, p0, Lcom/cornflower/characters/widget/FontTypePopWindow$1;->val$fontAdapter:Lcom/cornflower/characters/adapter/FontAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cornflower/characters/widget/FontTypePopWindow$1;->val$fontAdapter:Lcom/cornflower/characters/adapter/FontAdapter;

    invoke-virtual {v0, p3}, Lcom/cornflower/characters/adapter/FontAdapter;->setSelected(I)V

    .line 36
    iget-object v0, p0, Lcom/cornflower/characters/widget/FontTypePopWindow$1;->this$0:Lcom/cornflower/characters/widget/FontTypePopWindow;

    # getter for: Lcom/cornflower/characters/widget/FontTypePopWindow;->onPopItemclickListener:Lcom/cornflower/characters/widget/FontTypePopWindow$OnPopItemclickListener;
    invoke-static {v0}, Lcom/cornflower/characters/widget/FontTypePopWindow;->access$000(Lcom/cornflower/characters/widget/FontTypePopWindow;)Lcom/cornflower/characters/widget/FontTypePopWindow$OnPopItemclickListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/cornflower/characters/widget/FontTypePopWindow$OnPopItemclickListener;->setOnPopItemclickListener(I)V

    .line 37
    iget-object v0, p0, Lcom/cornflower/characters/widget/FontTypePopWindow$1;->val$fontAdapter:Lcom/cornflower/characters/adapter/FontAdapter;

    invoke-virtual {v0}, Lcom/cornflower/characters/adapter/FontAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
