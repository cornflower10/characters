.class public Lcom/cornflower/characters/widget/WelcomeTextView;
.super Landroid/widget/TextView;
.source "WelcomeTextView.java"


# instance fields
.field private arrs:[Ljava/lang/String;

.field private index:I

.field private sText:Ljava/lang/String;

.field private subscription:Lrx/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cornflower/characters/widget/WelcomeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/widget/WelcomeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/WelcomeTextView;

    .prologue
    .line 24
    iget v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->index:I

    return v0
.end method

.method static synthetic access$008(Lcom/cornflower/characters/widget/WelcomeTextView;)I
    .locals 2
    .param p0, "x0"    # Lcom/cornflower/characters/widget/WelcomeTextView;

    .prologue
    .line 24
    iget v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->index:I

    return v0
.end method

.method static synthetic access$100(Lcom/cornflower/characters/widget/WelcomeTextView;)Lrx/Subscription;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/WelcomeTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cornflower/characters/widget/WelcomeTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cornflower/characters/widget/WelcomeTextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->sText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cornflower/characters/widget/WelcomeTextView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/WelcomeTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cornflower/characters/widget/WelcomeTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/WelcomeTextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/cornflower/characters/widget/WelcomeTextView;->addSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cornflower/characters/utils/ScreenUtils;->screenWidth(Landroid/content/Context;)I

    move-result v2

    .line 59
    .local v2, "screenWidth":I
    invoke-direct {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->getSingleTextWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 60
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    const-string v3, "text..."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, p1}, Lcom/cornflower/characters/widget/WelcomeTextView;->getTextWidth(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v2, v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 67
    :cond_0
    return-object p1

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSingleTextWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 47
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    return v2
.end method

.method private getTextWidth(Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 53
    .local v1, "paint":Landroid/text/TextPaint;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    return v2
.end method

.method private init()V
    .locals 6

    .prologue
    .line 71
    const-string v1, "9.ttf"

    invoke-static {v1, p0}, Lcom/cornflower/characters/utils/ScreenUtils;->setfont(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 72
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/WelcomeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;

    array-length v0, v1

    .line 74
    .local v0, "size":I
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v5, v1}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/cornflower/characters/widget/WelcomeTextView$1;

    invoke-direct {v2, p0, v0}, Lcom/cornflower/characters/widget/WelcomeTextView$1;-><init>(Lcom/cornflower/characters/widget/WelcomeTextView;I)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->subscription:Lrx/Subscription;

    .line 92
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView;->sText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/widget/WelcomeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method
