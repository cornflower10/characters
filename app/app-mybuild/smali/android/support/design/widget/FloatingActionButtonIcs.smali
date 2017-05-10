.class Landroid/support/design/widget/FloatingActionButtonIcs;
.super Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.source "FloatingActionButtonIcs.java"


# instance fields
.field private mIsHiding:Z

.field private mRotation:F


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 1
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 34
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    .line 35
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/widget/FloatingActionButtonIcs;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/FloatingActionButtonIcs;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mIsHiding:Z

    return p1
.end method

.method private updateFromViewRotation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 151
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 166
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    .line 169
    :cond_2
    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mIsHiding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 64
    if-eqz p1, :cond_1

    .line 65
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 69
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonIcs$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonIcs$1;-><init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method onPreDraw()V
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    .line 45
    .local v0, "rotation":F
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 46
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mRotation:F

    .line 47
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonIcs;->updateFromViewRotation()V

    .line 49
    :cond_0
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 107
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mIsHiding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 114
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 120
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonIcs$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonIcs$2;-><init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 145
    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 138
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 139
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 140
    if-eqz p1, :cond_2

    .line 141
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    goto :goto_0
.end method
