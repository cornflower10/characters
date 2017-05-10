.class public Lcom/cornflower/characters/widget/StatusBarCompat;
.super Ljava/lang/Object;
.source "StatusBarCompat.java"


# static fields
.field private static final COLOR_DEFAULT:I

.field private static final INVALID_VAL:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cornflower/characters/widget/StatusBarCompat;->COLOR_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compat(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/cornflower/characters/widget/StatusBarCompat;->compat(Landroid/app/Activity;I)V

    .line 50
    return-void
.end method

.method public static compat(Landroid/app/Activity;I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusColor"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v7, 0x15

    const/4 v6, -0x1

    .line 21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_1

    .line 23
    if-eq p1, v6, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v7, :cond_0

    .line 32
    sget v0, Lcom/cornflower/characters/widget/StatusBarCompat;->COLOR_DEFAULT:I

    .line 33
    .local v0, "color":I
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 34
    .local v1, "contentView":Landroid/view/ViewGroup;
    if-eq p1, v6, :cond_2

    .line 36
    move v0, p1

    .line 38
    :cond_2
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    .local v3, "statusBarView":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/cornflower/characters/widget/StatusBarCompat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 61
    :cond_0
    return v1
.end method
