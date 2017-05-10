.class public Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x1

.field private static final MENU_VIEW_ID:I = 0x2

.field private static final STATE_CLOSE:I = 0x0

.field private static final STATE_OPEN:I = 0x1


# instance fields
.field private MAX_VELOCITYX:I

.field private MIN_FLING:I

.field private isFling:Z

.field private mBaseX:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mContentView:Landroid/view/View;

.field private mDownX:I

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private position:I

.field private state:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 38
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MIN_FLING:I

    .line 39
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MAX_VELOCITYX:I

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 38
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MIN_FLING:I

    .line 39
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MAX_VELOCITYX:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "menuView"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "menuView"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;
    .param p3, "closeInterpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "openInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 38
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MIN_FLING:I

    .line 39
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MAX_VELOCITYX:I

    .line 54
    iput-object p3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 55
    iput-object p4, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 57
    iput-object p2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    .line 58
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v0, p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->setLayout(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;)V

    .line 59
    invoke-direct {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isFling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MIN_FLING:I

    return v0
.end method

.method static synthetic access$200(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->MAX_VELOCITYX:I

    return v0
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 272
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 85
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v1, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout$1;

    invoke-direct {v1, p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout$1;-><init>(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;)V

    iput-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 106
    new-instance v1, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 111
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 124
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ge v1, v6, :cond_0

    .line 128
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->setId(I)V

    .line 132
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {p0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void

    .line 115
    .end local v0    # "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    goto :goto_1
.end method

.method private swipe(I)V
    .locals 5
    .param p1, "dis"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result p1

    .line 207
    :cond_0
    if-gez p1, :cond_1

    .line 208
    const/4 p1, 0x0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    neg-int v1, p1

    iget-object v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 212
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v4}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    iget-object v4, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v4}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->layout(IIII)V

    .line 215
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 250
    :cond_0
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 251
    iput v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 252
    invoke-direct {p0, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->swipe(I)V

    .line 254
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->swipe(I)V

    .line 222
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->postInvalidate()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mBaseX:I

    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->swipe(I)V

    .line 227
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getMenuView()Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->position:I

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 158
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 288
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->layout(IIII)V

    .line 293
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 279
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->measure(II)V

    .line 282
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 163
    return-void
.end method

.method public onSwipe(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    move v1, v2

    .line 191
    :goto_1
    return v1

    .line 169
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mDownX:I

    .line 170
    iput-boolean v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isFling:Z

    goto :goto_0

    .line 174
    :pswitch_1
    iget v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mDownX:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v0, v1

    .line 175
    .local v0, "dis":I
    iget v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    if-ne v1, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_0
    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->swipe(I)V

    goto :goto_0

    .line 181
    .end local v0    # "dis":I
    :pswitch_2
    iget-boolean v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isFling:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mDownX:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v4}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 259
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->swipe(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public setMenuHeight(I)V
    .locals 4
    .param p1, "measuredHeight"    # I

    .prologue
    .line 296
    const-string v1, "byz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 298
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 299
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 300
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    iget-object v2, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->position:I

    .line 81
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v0, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->setPosition(I)V

    .line 82
    return-void
.end method

.method public smoothCloseMenu()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 233
    iput v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 234
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mBaseX:I

    .line 235
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mBaseX:I

    const/16 v5, 0x15e

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 236
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->postInvalidate()V

    .line 237
    return-void
.end method

.method public smoothOpenMenu()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->state:I

    .line 241
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->mMenuView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;

    invoke-virtual {v3}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuView;->getWidth()I

    move-result v3

    const/16 v5, 0x15e

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 243
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->postInvalidate()V

    .line 244
    return-void
.end method
