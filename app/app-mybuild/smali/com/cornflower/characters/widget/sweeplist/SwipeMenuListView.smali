.class public Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;
.super Landroid/widget/ListView;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;,
        Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TOUCH_STATE_NONE:I = 0x0

.field private static final TOUCH_STATE_X:I = 0x1

.field private static final TOUCH_STATE_Y:I = 0x2


# instance fields
.field private MAX_X:I

.field private MAX_Y:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mDownX:F

.field private mDownY:F

.field private mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

.field private mOnMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

.field private mOnSwipeListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mTouchPosition:I

.field private mTouchState:I

.field private mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_Y:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_X:I

    .line 41
    invoke-direct {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_Y:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_X:I

    .line 51
    invoke-direct {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_Y:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_X:I

    .line 46
    invoke-direct {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;)Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    return-object v0
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 203
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getContext()Landroid/content/Context;

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
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_X:I

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_X:I

    .line 58
    iget v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_Y:I

    invoke-direct {p0, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_Y:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    .line 60
    return-void
.end method


# virtual methods
.method public getCloseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOpenInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-nez v6, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 184
    :goto_0
    return v5

    .line 112
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 113
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 114
    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 116
    :pswitch_0
    iget v3, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    .line 117
    .local v3, "oldPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mDownX:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mDownY:F

    .line 119
    iput v8, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->pointToPosition(II)I

    move-result v6

    iput v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    .line 123
    iget v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v6}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    iput v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    .line 126
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v6, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 132
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->smoothCloseMenu()V

    .line 134
    iput-object v10, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 137
    :cond_3
    instance-of v5, v4, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v5, :cond_4

    .line 138
    check-cast v4, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .end local v4    # "view":Landroid/view/View;
    iput-object v4, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .line 140
    :cond_4
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v5, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 145
    .end local v3    # "oldPos":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mDownY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 146
    .local v2, "dy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mDownX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 147
    .local v1, "dx":F
    iget v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    if-ne v6, v5, :cond_6

    .line 148
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v6, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-array v7, v5, [I

    aput v8, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 152
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 155
    :cond_6
    iget v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    if-nez v6, :cond_1

    .line 156
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_Y:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 157
    const/4 v5, 0x2

    iput v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    goto/16 :goto_1

    .line 158
    :cond_7
    iget v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->MAX_X:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .line 159
    iput v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    .line 160
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnSwipeListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

    if-eqz v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnSwipeListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

    iget v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v5, v6}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;->onSwipeStart(I)V

    goto/16 :goto_1

    .line 167
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :pswitch_2
    iget v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchState:I

    if-ne v6, v5, :cond_1

    .line 168
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v6, :cond_8

    .line 169
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v6, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 170
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v6}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isOpen()Z

    move-result v6

    if-nez v6, :cond_8

    .line 171
    const/4 v6, -0x1

    iput v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    .line 172
    iput-object v10, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .line 175
    :cond_8
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnSwipeListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

    if-eqz v6, :cond_9

    .line 176
    iget-object v6, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnSwipeListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

    iget v7, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v6, v7}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;->onSwipeEnd(I)V

    .line 178
    :cond_9
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 179
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeMenu(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;)V
    .locals 1
    .param p1, "menuCreator"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    .line 214
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 19
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 64
    new-instance v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$1;-><init>(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void
.end method

.method public setCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    return-void
.end method

.method public setMenuCreator(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;)V
    .locals 0
    .param p1, "menuCreator"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mMenuCreator:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;

    .line 209
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "onMenuItemClickListener"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;

    .line 219
    return-void
.end method

.method public setOnSwipeListener(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;)V
    .locals 0
    .param p1, "onSwipeListener"    # Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOnSwipeListener:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnSwipeListener;

    .line 223
    return-void
.end method

.method public setOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 93
    return-void
.end method

.method public smoothOpenMenu(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v1, :cond_1

    .line 192
    iput p1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchPosition:I

    .line 193
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->smoothCloseMenu()V

    .line 196
    :cond_0
    check-cast v0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    .line 197
    iget-object v1, p0, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->mTouchView:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuLayout;->smoothOpenMenu()V

    .line 200
    :cond_1
    return-void
.end method
