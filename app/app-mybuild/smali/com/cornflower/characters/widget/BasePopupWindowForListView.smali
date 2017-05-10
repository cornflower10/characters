.class public abstract Lcom/cornflower/characters/widget/BasePopupWindowForListView;
.super Landroid/widget/PopupWindow;
.source "BasePopupWindowForListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/PopupWindow;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected mContentView:Landroid/view/View;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    .line 27
    .local p0, "this":Lcom/cornflower/characters/widget/BasePopupWindowForListView;, "Lcom/cornflower/characters/widget/BasePopupWindowForListView<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;-><init>(Landroid/view/View;IIZLjava/util/List;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLjava/util/List;)V
    .locals 7
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIZ",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/cornflower/characters/widget/BasePopupWindowForListView;, "Lcom/cornflower/characters/widget/BasePopupWindowForListView<TT;>;"
    .local p5, "mDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;-><init>(Landroid/view/View;IIZLjava/util/List;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public varargs constructor <init>(Landroid/view/View;IIZLjava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIZ",
            "Ljava/util/List",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/cornflower/characters/widget/BasePopupWindowForListView;, "Lcom/cornflower/characters/widget/BasePopupWindowForListView<TT;>;"
    .local p5, "mDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 41
    iput-object p1, p0, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->mContentView:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->context:Landroid/content/Context;

    .line 43
    if-eqz p5, :cond_0

    .line 44
    iput-object p5, p0, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->mDatas:Ljava/util/List;

    .line 46
    :cond_0
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    .line 48
    invoke-virtual {p0, p6}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->beforeInitWeNeedSomeParams([Ljava/lang/Object;)V

    .line 51
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->setTouchable(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->setOutsideTouchable(Z)V

    .line 54
    new-instance v0, Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;

    invoke-direct {v0, p0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;-><init>(Lcom/cornflower/characters/widget/BasePopupWindowForListView;)V

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->initViews()V

    .line 68
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->initEvents()V

    .line 69
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->init()V

    .line 70
    return-void
.end method


# virtual methods
.method protected varargs abstract beforeInitWeNeedSomeParams([Ljava/lang/Object;)V
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 82
    .local p0, "this":Lcom/cornflower/characters/widget/BasePopupWindowForListView;, "Lcom/cornflower/characters/widget/BasePopupWindowForListView<TT;>;"
    iget-object v0, p0, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract init()V
.end method

.method public abstract initEvents()V
.end method

.method public abstract initViews()V
.end method
