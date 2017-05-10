.class Lcom/cornflower/characters/ToTextActivity$1;
.super Ljava/lang/Object;
.source "ToTextActivity.java"

# interfaces
.implements Lcom/cornflower/characters/widget/ColorPopWindow$OnPopItemclickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/ToTextActivity;->initListColorPopupWindw(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/ToTextActivity;

.field final synthetic val$colors:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/ToTextActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/cornflower/characters/ToTextActivity$1;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iput-object p2, p0, Lcom/cornflower/characters/ToTextActivity$1;->val$colors:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnPopItemclickListener(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 294
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity$1;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity$1;->val$colors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-virtual {v0}, Lcom/cornflower/characters/moudle/entity/FColor;->getColor()I

    move-result v0

    # setter for: Lcom/cornflower/characters/ToTextActivity;->fontColor:I
    invoke-static {v1, v0}, Lcom/cornflower/characters/ToTextActivity;->access$002(Lcom/cornflower/characters/ToTextActivity;I)I

    .line 295
    iget-object v0, p0, Lcom/cornflower/characters/ToTextActivity$1;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iget-object v0, v0, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity$1;->this$0:Lcom/cornflower/characters/ToTextActivity;

    # getter for: Lcom/cornflower/characters/ToTextActivity;->fontColor:I
    invoke-static {v1}, Lcom/cornflower/characters/ToTextActivity;->access$000(Lcom/cornflower/characters/ToTextActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    return-void
.end method
