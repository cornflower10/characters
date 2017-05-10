.class public Lcom/cornflower/characters/widget/SuperCircleView;
.super Landroid/view/View;
.source "SuperCircleView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private color:[I

.field private count:Ljava/lang/String;

.field private countPaint:Landroid/graphics/Paint;

.field private isShowSelect:Z

.field private mMaxCircleColor:I

.field private mMinCircleColor:I

.field private mMinRadio:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRingAngleWidth:F

.field private mRingNormalColor:I

.field private mRingWidth:F

.field private mSelect:I

.field private mSelectAngle:I

.field private mSelectRing:I

.field private mViewCenterX:I

.field private mViewCenterY:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cornflower/characters/widget/SuperCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cornflower/characters/widget/SuperCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v1, "SuperCircleView"

    iput-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->TAG:Ljava/lang/String;

    .line 25
    const-string v1, "\u8df3\u8fc7"

    iput-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->count:Ljava/lang/String;

    .line 39
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->color:[I

    .line 44
    iput v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    .line 46
    iput-boolean v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->isShowSelect:Z

    .line 58
    sget-object v1, Lcom/cornflower/characters/R$styleable;->SuperCircleView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x190

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    .line 60
    const-string v1, "mMinRadio......."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/SuperCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/cornflower/characters/utils/ScreenUtils;->px2dip(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    .line 62
    const-string v1, "mMinRadio......."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    .line 65
    const/4 v1, 0x7

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    .line 66
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    .line 68
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinCircleColor:I

    .line 69
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMaxCircleColor:I

    .line 70
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingNormalColor:I

    .line 72
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->isShowSelect:Z

    .line 73
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/cornflower/characters/widget/SuperCircleView;->setWillNotDraw(Z)V

    .line 78
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->color:[I

    aput v6, v1, v4

    .line 79
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->color:[I

    aput v6, v1, v5

    .line 80
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->color:[I

    aput v6, v1, v8

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->countPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->countPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->countPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->countPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/SuperCircleView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/cornflower/characters/utils/ScreenUtils;->px2sp(Landroid/content/Context;I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    return-void
.end method

.method private drawColorRing(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    .line 140
    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 141
    .local v5, "ringColorPaint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/cornflower/characters/widget/SuperCircleView;->color:[I

    invoke-direct {v0, v1, v3, v6, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 145
    iget-boolean v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->isShowSelect:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 162
    :cond_0
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    if-eqz v0, :cond_2

    .line 151
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 157
    :goto_0
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 158
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMaxCircleColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    if-ge v12, v0, :cond_0

    .line 160
    iget-object v7, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    int-to-float v0, v12

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingAngleWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    mul-int/2addr v1, v12

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v8, v2, v0

    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    int-to-float v9, v0

    move-object v6, p1

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 153
    .end local v12    # "i":I
    :cond_2
    const-string v0, "SuperCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingAngleWidth:F

    iget v6, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    iget v6, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingAngleWidth:F

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    iget v6, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    mul-int/2addr v3, v6

    int-to-float v3, v3

    add-float/2addr v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawNormalRing(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    .line 170
    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 171
    .local v5, "ringNormalPaint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingNormalColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    iget-boolean v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->isShowSelect:Z

    if-nez v0, :cond_1

    .line 182
    :cond_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMaxCircleColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    if-ge v12, v0, :cond_0

    .line 180
    iget-object v7, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    int-to-float v0, v12

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingAngleWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    mul-int/2addr v1, v12

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v8, v2, v0

    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    int-to-float v9, v0

    move-object v6, p1

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 179
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-boolean v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->isShowSelect:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    if-le v1, v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    int-to-float v3, v3

    iget v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/cornflower/characters/widget/SuperCircleView;->drawNormalRing(Landroid/graphics/Canvas;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/cornflower/characters/widget/SuperCircleView;->drawColorRing(Landroid/graphics/Canvas;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->countPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->count:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->count:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 126
    iget-object v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->count:Ljava/lang/String;

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterY:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->countPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 127
    const-string v1, "count....."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 95
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/SuperCircleView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewWidth:I

    .line 96
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/SuperCircleView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewHeight:I

    .line 97
    const-string v0, "mViewWidth......"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "mViewWidth......"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    .line 100
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterY:I

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterY:I

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterX:I

    iget v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mViewCenterY:I

    iget v5, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mMinRadio:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingWidth:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRectF:Landroid/graphics/RectF;

    .line 103
    iget v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectAngle:I

    mul-int/2addr v0, v1

    rsub-int v0, v0, 0x168

    iget v1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mRingAngleWidth:F

    .line 104
    return-void
.end method

.method public setColor([I)V
    .locals 0
    .param p1, "color"    # [I

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->color:[I

    .line 216
    return-void
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelectRing:I

    .line 191
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/SuperCircleView;->invalidate()V

    .line 192
    return-void
.end method

.method public setSelectCount(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->mSelect:I

    .line 201
    return-void
.end method

.method public setShowSelect(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/cornflower/characters/widget/SuperCircleView;->isShowSelect:Z

    .line 211
    return-void
.end method
