.class public Lcom/cornflower/characters/ToTextActivity;
.super Lcom/cornflower/characters/BaseActivity;
.source "ToTextActivity.java"

# interfaces
.implements Lcom/cornflower/characters/view/EditFontView;
.implements Lcom/cornflower/characters/view/ShowFontView;


# static fields
.field private static final DEFULTSIZE:I = 0x1a


# instance fields
.field private colorPopWindow:Lcom/cornflower/characters/widget/ColorPopWindow;

.field private fontColor:I

.field private fontName:Ljava/lang/String;

.field private fontTypePopWindow:Lcom/cornflower/characters/widget/FontTypePopWindow;

.field isShow:Z

.field private limitHeight:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sHeight:I

.field private sWidth:I

.field private showFontPresenter:Lcom/cornflower/characters/presenter/ShowFontPresenter;

.field private text:Lcom/cornflower/characters/moudle/entity/Font;

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d006c
        }
    .end annotation
.end field

.field tv:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d006f
        }
    .end annotation
.end field

.field v:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d0070
        }
    .end annotation
.end field

.field v1:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d0071
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/cornflower/characters/BaseActivity;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cornflower/characters/ToTextActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/ToTextActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/ToTextActivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/cornflower/characters/ToTextActivity;->fontColor:I

    return v0
.end method

.method static synthetic access$002(Lcom/cornflower/characters/ToTextActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/ToTextActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/cornflower/characters/ToTextActivity;->fontColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/cornflower/characters/ToTextActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/ToTextActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cornflower/characters/ToTextActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/ToTextActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cornflower/characters/ToTextActivity;->fontName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cornflower/characters/ToTextActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/ToTextActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cornflower/characters/ToTextActivity;->scrollToCenter(Landroid/view/View;)V

    return-void
.end method

.method private getTextHeight()I
    .locals 5

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 136
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v2}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v4}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    return v2
.end method

.method private getTextWidth()I
    .locals 5

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 128
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 129
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v2}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v4}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    return v2
.end method

.method private initFontTypePopupWindw(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    new-instance v0, Lcom/cornflower/characters/widget/FontTypePopWindow;

    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cornflower/characters/utils/ScreenUtils;->screenWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, -0x2

    const/4 v4, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/cornflower/characters/widget/FontTypePopWindow;-><init>(Landroid/view/View;IIZLjava/util/List;)V

    iput-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->fontTypePopWindow:Lcom/cornflower/characters/widget/FontTypePopWindow;

    .line 306
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->fontTypePopWindow:Lcom/cornflower/characters/widget/FontTypePopWindow;

    new-instance v1, Lcom/cornflower/characters/ToTextActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/cornflower/characters/ToTextActivity$2;-><init>(Lcom/cornflower/characters/ToTextActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/FontTypePopWindow;->setOnPopItemclickListener(Lcom/cornflower/characters/widget/FontTypePopWindow$OnPopItemclickListener;)V

    .line 316
    return-void
.end method

.method private initListColorPopupWindw(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/FColor;>;"
    new-instance v0, Lcom/cornflower/characters/widget/ColorPopWindow;

    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cornflower/characters/utils/ScreenUtils;->screenWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, -0x2

    const/4 v4, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/cornflower/characters/widget/ColorPopWindow;-><init>(Landroid/view/View;IIZLjava/util/List;)V

    iput-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->colorPopWindow:Lcom/cornflower/characters/widget/ColorPopWindow;

    .line 291
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->colorPopWindow:Lcom/cornflower/characters/widget/ColorPopWindow;

    new-instance v1, Lcom/cornflower/characters/ToTextActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/cornflower/characters/ToTextActivity$1;-><init>(Lcom/cornflower/characters/ToTextActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/ColorPopWindow;->setOnPopItemclickListener(Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;)V

    .line 298
    return-void
.end method

.method private recyleViewStatus(Z)V
    .locals 2
    .param p1, "isHide"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 113
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/cornflower/characters/utils/ScreenUtils;->toggleSystemStatusBar(ZLandroid/app/Activity;)V

    .line 117
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSystemUiVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/cornflower/characters/utils/ScreenUtils;->toggleSystemStatusBar(ZLandroid/app/Activity;)V

    .line 120
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private scaleText()V
    .locals 6

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextWidth()I

    move-result v2

    .line 152
    .local v2, "textWidth":I
    iget-object v3, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v1, v3

    .line 153
    .local v1, "tempSize":I
    iget v3, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    if-le v2, v3, :cond_2

    .line 154
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    sub-int v3, v2, v3

    if-ge v0, v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    sub-int v5, v1, v0

    invoke-static {v4, v5}, Lcom/cornflower/characters/utils/ScreenUtils;->px2sp(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextWidth()I

    move-result v3

    iget v4, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    if-gt v3, v4, :cond_1

    .line 174
    :cond_0
    return-void

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    iget v3, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    add-int/lit8 v5, v0, 0x1a

    invoke-static {v4, v5}, Lcom/cornflower/characters/utils/ScreenUtils;->px2sp(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    iget v3, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    .line 166
    iget v3, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x46

    if-lt v3, v4, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextHeight()I

    move-result v3

    iget v4, p0, Lcom/cornflower/characters/ToTextActivity;->limitHeight:I

    if-gt v3, v4, :cond_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private scrollToCenter(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextWidth()I

    move-result v1

    .line 143
    .local v1, "vWitdth":I
    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->getTextHeight()I

    move-result v0

    .line 144
    .local v0, "vHeight":I
    iget v2, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    sub-int/2addr v2, v1

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/cornflower/characters/ToTextActivity;->sHeight:I

    sub-int/2addr v3, v0

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 145
    const-string v2, "\u5c4f\u5e55\u5bbd\u9ad8...."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/cornflower/characters/ToTextActivity;->sHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v2, "\u79fb\u52a8\u4e86...."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/cornflower/characters/ToTextActivity;->sHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method


# virtual methods
.method public getFont()Lcom/cornflower/characters/moudle/entity/Font;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->fontName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/moudle/entity/Font;->setName(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget v0, p0, Lcom/cornflower/characters/ToTextActivity;->fontColor:I

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v0}, Lcom/cornflower/characters/moudle/entity/Font;->getfColor()Lcom/cornflower/characters/moudle/entity/FColor;

    move-result-object v0

    iget v1, p0, Lcom/cornflower/characters/ToTextActivity;->fontColor:I

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/moudle/entity/FColor;->setColor(I)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v0}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideLoding()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cornflower/characters/ToTextActivity;->setToolbarHasBack(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cornflower/characters/utils/ScreenUtils;->screenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/ToTextActivity;->sWidth:I

    .line 89
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cornflower/characters/utils/ScreenUtils;->screenHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/cornflower/characters/ToTextActivity;->sHeight:I

    .line 90
    iget v1, p0, Lcom/cornflower/characters/ToTextActivity;->sHeight:I

    div-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/cornflower/characters/ToTextActivity;->limitHeight:I

    .line 92
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    const/16 v2, 0x1a

    invoke-static {p0, v2}, Lcom/cornflower/characters/utils/ScreenUtils;->px2sp(Landroid/content/Context;I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/moudle/entity/Font;

    iput-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    .line 95
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v2}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v1}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v1}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/cornflower/characters/utils/ScreenUtils;->setfont(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->text:Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v1}, Lcom/cornflower/characters/moudle/entity/Font;->getfColor()Lcom/cornflower/characters/moudle/entity/FColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cornflower/characters/moudle/entity/FColor;->getColor()I

    move-result v0

    .line 100
    .local v0, "color":I
    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 105
    .end local v0    # "color":I
    :cond_2
    invoke-direct {p0}, Lcom/cornflower/characters/ToTextActivity;->scaleText()V

    .line 107
    return-void
.end method

.method public onClick()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d006f
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/cornflower/characters/ToTextActivity;->isShow:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, v2}, Lcom/cornflower/characters/ToTextActivity;->recyleViewStatus(Z)V

    .line 182
    iput-boolean v1, p0, Lcom/cornflower/characters/ToTextActivity;->isShow:Z

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0, v1}, Lcom/cornflower/characters/ToTextActivity;->recyleViewStatus(Z)V

    .line 185
    iput-boolean v2, p0, Lcom/cornflower/characters/ToTextActivity;->isShow:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/cornflower/characters/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/cornflower/characters/ToTextActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 65
    new-instance v1, Lcom/cornflower/characters/presenter/ShowFontPresenter;

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p0, v2}, Lcom/cornflower/characters/presenter/ShowFontPresenter;-><init>(Lcom/cornflower/characters/view/EditFontView;Lcom/cornflower/characters/view/ShowFontView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->showFontPresenter:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    .line 66
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/cornflower/characters/ToTextActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "My Tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->showFontPresenter:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    invoke-virtual {v1}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFont()V

    .line 69
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->showFontPresenter:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    invoke-virtual {v1}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->showColors()V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->showFontPresenter:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    invoke-virtual {v0}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->onUnsubscribe()V

    .line 196
    invoke-super {p0}, Lcom/cornflower/characters/BaseActivity;->onDestroy()V

    .line 197
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0x7f08016a

    const/4 v4, 0x0

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 245
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->finish()V

    .line 247
    const/4 v1, 0x1

    .line 262
    :goto_0
    return v1

    .line 249
    :cond_0
    const v1, 0x7f0d0091

    if-ne v0, v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->showFontPresenter:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    invoke-virtual {v1}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->saveFont()V

    .line 257
    :cond_1
    :goto_1
    const v1, 0x7f0d0090

    if-ne v0, v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->fontTypePopWindow:Lcom/cornflower/characters/widget/FontTypePopWindow;

    invoke-virtual {v1, v5}, Lcom/cornflower/characters/widget/FontTypePopWindow;->setAnimationStyle(I)V

    .line 260
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->fontTypePopWindow:Lcom/cornflower/characters/widget/FontTypePopWindow;

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->v1:Landroid/view/View;

    iget-object v3, p0, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/cornflower/characters/widget/FontTypePopWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 262
    :cond_2
    invoke-super {p0, p1}, Lcom/cornflower/characters/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 251
    :cond_3
    const v1, 0x7f0d008f

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->colorPopWindow:Lcom/cornflower/characters/widget/ColorPopWindow;

    invoke-virtual {v1, v5}, Lcom/cornflower/characters/widget/ColorPopWindow;->setAnimationStyle(I)V

    .line 254
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity;->colorPopWindow:Lcom/cornflower/characters/widget/ColorPopWindow;

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/cornflower/characters/ToTextActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/cornflower/characters/widget/ColorPopWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/cornflower/characters/BaseActivity;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/cornflower/characters/BaseActivity;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 78
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method public showFontColor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/FColor;>;"
    invoke-direct {p0, p1}, Lcom/cornflower/characters/ToTextActivity;->initListColorPopupWindw(Ljava/util/List;)V

    .line 212
    return-void
.end method

.method public showFontType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    invoke-direct {p0, p1}, Lcom/cornflower/characters/ToTextActivity;->initFontTypePopupWindw(Ljava/util/List;)V

    .line 207
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/ToTextActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 222
    return-void
.end method

.method public showText()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/cornflower/characters/ToTextActivity;->initData()V

    .line 202
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method
