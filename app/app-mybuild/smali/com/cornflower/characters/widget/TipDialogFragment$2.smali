.class Lcom/cornflower/characters/widget/TipDialogFragment$2;
.super Ljava/lang/Object;
.source "TipDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/widget/TipDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/widget/TipDialogFragment;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/widget/TipDialogFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cornflower/characters/widget/TipDialogFragment$2;->this$0:Lcom/cornflower/characters/widget/TipDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cornflower/characters/widget/TipDialogFragment$2;->this$0:Lcom/cornflower/characters/widget/TipDialogFragment;

    # getter for: Lcom/cornflower/characters/widget/TipDialogFragment;->positiveButtonListener:Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;
    invoke-static {v0}, Lcom/cornflower/characters/widget/TipDialogFragment;->access$100(Lcom/cornflower/characters/widget/TipDialogFragment;)Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cornflower/characters/widget/TipDialogFragment$2;->this$0:Lcom/cornflower/characters/widget/TipDialogFragment;

    # getter for: Lcom/cornflower/characters/widget/TipDialogFragment;->updateInfo:Lcom/cornflower/characters/moudle/entity/UpdateInfo;
    invoke-static {v1}, Lcom/cornflower/characters/widget/TipDialogFragment;->access$000(Lcom/cornflower/characters/widget/TipDialogFragment;)Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;->onClickListener(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
