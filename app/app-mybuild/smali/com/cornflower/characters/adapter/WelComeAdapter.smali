.class public Lcom/cornflower/characters/adapter/WelComeAdapter;
.super Lcom/zhy/adapter/recyclerview/CommonAdapter;
.source "WelComeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/adapter/recyclerview/CommonAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field itemHeight:I

.field temp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/adapter/recyclerview/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    iget-object v0, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cornflower/characters/utils/ScreenUtils;->screenHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/cornflower/characters/utils/ScreenUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->temp:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->itemHeight:I

    .line 24
    iget v0, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->temp:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->itemHeight:I

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/adapter/WelComeAdapter;->convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method protected convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/String;I)V
    .locals 3
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "font"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 29
    const v2, 0x7f0d007f

    invoke-virtual {p1, v2}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->itemHeight:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v2, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_0

    .line 34
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    :goto_0
    const-string v2, "6.ttf"

    invoke-static {v2, v1}, Lcom/cornflower/characters/utils/ScreenUtils;->setfont(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 38
    iget-object v2, p0, Lcom/cornflower/characters/adapter/WelComeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
