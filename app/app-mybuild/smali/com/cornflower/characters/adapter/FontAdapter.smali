.class public Lcom/cornflower/characters/adapter/FontAdapter;
.super Lcom/zhy/adapter/recyclerview/CommonAdapter;
.source "FontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/adapter/recyclerview/CommonAdapter",
        "<",
        "Lcom/cornflower/characters/moudle/entity/Font;",
        ">;"
    }
.end annotation


# instance fields
.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/adapter/recyclerview/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/cornflower/characters/adapter/FontAdapter;->selected:I

    .line 28
    return-void
.end method


# virtual methods
.method protected convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Lcom/cornflower/characters/moudle/entity/Font;I)V
    .locals 4
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "font"    # Lcom/cornflower/characters/moudle/entity/Font;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 32
    const v1, 0x7f0d007f

    invoke-virtual {p1, v1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/cornflower/characters/adapter/FontAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v1}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p2}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cornflower/characters/utils/ScreenUtils;->setfont(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 35
    iget v1, p0, Lcom/cornflower/characters/adapter/FontAdapter;->selected:I

    if-ne v1, p3, :cond_0

    .line 36
    iget-object v1, p0, Lcom/cornflower/characters/adapter/FontAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected bridge synthetic convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/cornflower/characters/moudle/entity/Font;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/adapter/FontAdapter;->convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Lcom/cornflower/characters/moudle/entity/Font;I)V

    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .param p1, "selected"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/cornflower/characters/adapter/FontAdapter;->selected:I

    .line 23
    return-void
.end method
