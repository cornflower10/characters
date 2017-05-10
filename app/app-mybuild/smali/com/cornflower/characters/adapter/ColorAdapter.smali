.class public Lcom/cornflower/characters/adapter/ColorAdapter;
.super Lcom/zhy/adapter/recyclerview/CommonAdapter;
.source "ColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/adapter/recyclerview/CommonAdapter",
        "<",
        "Lcom/cornflower/characters/moudle/entity/FColor;",
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
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/FColor;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/adapter/recyclerview/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/cornflower/characters/adapter/ColorAdapter;->selected:I

    .line 27
    return-void
.end method


# virtual methods
.method protected convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Lcom/cornflower/characters/moudle/entity/FColor;I)V
    .locals 4
    .param p1, "holder"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "colors"    # Lcom/cornflower/characters/moudle/entity/FColor;
    .param p3, "position"    # I

    .prologue
    .line 31
    const v1, 0x7f0d0075

    invoke-virtual {p1, v1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "bt":Landroid/widget/TextView;
    const-string v1, "colors......"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p2}, Lcom/cornflower/characters/moudle/entity/FColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 34
    iget v1, p0, Lcom/cornflower/characters/adapter/ColorAdapter;->selected:I

    if-ne v1, p3, :cond_0

    .line 35
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method protected bridge synthetic convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 17
    check-cast p2, Lcom/cornflower/characters/moudle/entity/FColor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/cornflower/characters/adapter/ColorAdapter;->convert(Lcom/zhy/adapter/recyclerview/base/ViewHolder;Lcom/cornflower/characters/moudle/entity/FColor;I)V

    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .param p1, "selected"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/cornflower/characters/adapter/ColorAdapter;->selected:I

    .line 22
    return-void
.end method
