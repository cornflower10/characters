.class Lcom/cornflower/characters/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/MainActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/MainActivity;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/MainActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cornflower/characters/MainActivity$1;->this$0:Lcom/cornflower/characters/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cornflower/characters/MainActivity$1;->this$0:Lcom/cornflower/characters/MainActivity;

    iget-object v1, v1, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cornflower/characters/ToTextActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "name"

    iget-object v1, p0, Lcom/cornflower/characters/MainActivity$1;->this$0:Lcom/cornflower/characters/MainActivity;

    # getter for: Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;
    invoke-static {v1}, Lcom/cornflower/characters/MainActivity;->access$000(Lcom/cornflower/characters/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity$1;->this$0:Lcom/cornflower/characters/MainActivity;

    invoke-virtual {v1, v0}, Lcom/cornflower/characters/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
