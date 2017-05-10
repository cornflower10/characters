.class Lcom/cornflower/characters/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;


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
    .line 100
    iput-object p1, p0, Lcom/cornflower/characters/MainActivity$2;->this$0:Lcom/cornflower/characters/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMenu1(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;

    .prologue
    .line 114
    new-instance v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;

    iget-object v1, p0, Lcom/cornflower/characters/MainActivity$2;->this$0:Lcom/cornflower/characters/MainActivity;

    iget-object v1, v1, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "item1":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/cornflower/characters/MainActivity$2;->this$0:Lcom/cornflower/characters/MainActivity;

    invoke-virtual {v2}, Lcom/cornflower/characters/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const/16 v1, 0x5a

    iget-object v2, p0, Lcom/cornflower/characters/MainActivity$2;->this$0:Lcom/cornflower/characters/MainActivity;

    iget-object v2, v2, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/cornflower/characters/utils/ScreenUtils;->sizeTdp(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setWidth(I)V

    .line 117
    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;->setIcon(I)V

    .line 118
    invoke-virtual {p1, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->addMenuItem(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuItem;)V

    .line 119
    return-void
.end method


# virtual methods
.method public create(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;->getViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cornflower/characters/MainActivity$2;->createMenu1(Lcom/cornflower/characters/widget/sweeplist/SwipeMenu;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
