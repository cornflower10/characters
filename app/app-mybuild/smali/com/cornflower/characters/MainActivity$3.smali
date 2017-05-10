.class Lcom/cornflower/characters/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/MainActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/MainActivity;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/MainActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cornflower/characters/MainActivity$3;->this$0:Lcom/cornflower/characters/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/cornflower/characters/widget/sweeplist/SwipeMenu;I)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;
    .param p3, "index"    # I

    .prologue
    .line 128
    if-nez p3, :cond_0

    .line 129
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity$3;->this$0:Lcom/cornflower/characters/MainActivity;

    # getter for: Lcom/cornflower/characters/MainActivity;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;
    invoke-static {v0}, Lcom/cornflower/characters/MainActivity;->access$100(Lcom/cornflower/characters/MainActivity;)Lcom/cornflower/characters/presenter/MyFontPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cornflower/characters/presenter/MyFontPresenter;->deleteFont(I)V

    .line 131
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
