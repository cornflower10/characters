.class public Lcom/cornflower/characters/adapter/MainFontAdapter;
.super Lcom/zhy/adapter/abslistview/CommonAdapter;
.source "MainFontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/adapter/abslistview/CommonAdapter",
        "<",
        "Lcom/cornflower/characters/moudle/entity/Font;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
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
    .line 18
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/adapter/abslistview/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected convert(Lcom/zhy/adapter/abslistview/ViewHolder;Lcom/cornflower/characters/moudle/entity/Font;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/zhy/adapter/abslistview/ViewHolder;
    .param p2, "font"    # Lcom/cornflower/characters/moudle/entity/Font;
    .param p3, "position"    # I

    .prologue
    .line 23
    const v1, 0x7f0d007f

    invoke-virtual {p1, v1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p2}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p2}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cornflower/characters/utils/ScreenUtils;->setfont(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 28
    :cond_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/zhy/adapter/abslistview/ViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Lcom/zhy/adapter/abslistview/ViewHolder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 16
    check-cast p2, Lcom/cornflower/characters/moudle/entity/Font;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/adapter/MainFontAdapter;->convert(Lcom/zhy/adapter/abslistview/ViewHolder;Lcom/cornflower/characters/moudle/entity/Font;I)V

    return-void
.end method
