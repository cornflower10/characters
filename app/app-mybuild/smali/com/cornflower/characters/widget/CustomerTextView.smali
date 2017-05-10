.class public Lcom/cornflower/characters/widget/CustomerTextView;
.super Landroid/widget/TextView;
.source "CustomerTextView.java"


# instance fields
.field private color:I

.field private mAnimating:Z

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    .line 22
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mAnimating:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    .line 22
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mAnimating:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    .line 22
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mAnimating:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->color:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-boolean v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 67
    iget v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    .line 68
    iget v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 69
    iput v2, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    iget v2, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mScale:F

    iget v3, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 72
    iget-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 73
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/cornflower/characters/widget/CustomerTextView;->postInvalidateDelayed(J)V

    .line 75
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const v8, 0x33ffffff

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 50
    iget v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/CustomerTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    .line 52
    iget v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    if-lez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/CustomerTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mViewWidth:I

    int-to-float v3, v2

    new-array v5, v7, [I

    const/4 v2, 0x0

    aput v8, v5, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/CustomerTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0013

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v5, v2

    const/4 v2, 0x2

    aput v8, v5, v2

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 57
    iget-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cornflower/characters/widget/CustomerTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    .line 61
    :cond_0
    return-void

    .line 54
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/cornflower/characters/widget/CustomerTextView;->color:I

    .line 31
    return-void
.end method
