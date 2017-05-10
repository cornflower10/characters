.class Lcom/cornflower/characters/ToTextActivity$2;
.super Ljava/lang/Object;
.source "ToTextActivity.java"

# interfaces
.implements Lcom/cornflower/characters/widget/FontTypePopWindow$OnPopItemclickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/ToTextActivity;->initFontTypePopupWindw(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/ToTextActivity;

.field final synthetic val$fonts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/ToTextActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cornflower/characters/ToTextActivity$2;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iput-object p2, p0, Lcom/cornflower/characters/ToTextActivity$2;->val$fonts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnPopItemclickListener(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity$2;->val$fonts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/moudle/entity/Font;

    .line 310
    .local v0, "font":Lcom/cornflower/characters/moudle/entity/Font;
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity$2;->this$0:Lcom/cornflower/characters/ToTextActivity;

    invoke-virtual {v0}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/cornflower/characters/ToTextActivity;->fontName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cornflower/characters/ToTextActivity;->access$102(Lcom/cornflower/characters/ToTextActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity$2;->this$0:Lcom/cornflower/characters/ToTextActivity;

    # getter for: Lcom/cornflower/characters/ToTextActivity;->fontName:Ljava/lang/String;
    invoke-static {v1}, Lcom/cornflower/characters/ToTextActivity;->access$100(Lcom/cornflower/characters/ToTextActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity$2;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iget-object v2, v2, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/cornflower/characters/utils/ScreenUtils;->setfont(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 313
    iget-object v1, p0, Lcom/cornflower/characters/ToTextActivity$2;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iget-object v2, p0, Lcom/cornflower/characters/ToTextActivity$2;->this$0:Lcom/cornflower/characters/ToTextActivity;

    iget-object v2, v2, Lcom/cornflower/characters/ToTextActivity;->tv:Landroid/widget/TextView;

    # invokes: Lcom/cornflower/characters/ToTextActivity;->scrollToCenter(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/cornflower/characters/ToTextActivity;->access$200(Lcom/cornflower/characters/ToTextActivity;Landroid/view/View;)V

    .line 314
    return-void
.end method
