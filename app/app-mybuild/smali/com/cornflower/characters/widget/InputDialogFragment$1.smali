.class Lcom/cornflower/characters/widget/InputDialogFragment$1;
.super Ljava/lang/Object;
.source "InputDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/widget/InputDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/widget/InputDialogFragment;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/widget/InputDialogFragment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cornflower/characters/widget/InputDialogFragment$1;->this$0:Lcom/cornflower/characters/widget/InputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/cornflower/characters/widget/InputDialogFragment$1;->this$0:Lcom/cornflower/characters/widget/InputDialogFragment;

    invoke-virtual {v1}, Lcom/cornflower/characters/widget/InputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/widget/InputDialogFragment$InputListener;

    .line 44
    .local v0, "listener":Lcom/cornflower/characters/widget/InputDialogFragment$InputListener;
    iget-object v1, p0, Lcom/cornflower/characters/widget/InputDialogFragment$1;->this$0:Lcom/cornflower/characters/widget/InputDialogFragment;

    # getter for: Lcom/cornflower/characters/widget/InputDialogFragment;->mText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cornflower/characters/widget/InputDialogFragment;->access$000(Lcom/cornflower/characters/widget/InputDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/cornflower/characters/widget/InputDialogFragment$1;->this$0:Lcom/cornflower/characters/widget/InputDialogFragment;

    # getter for: Lcom/cornflower/characters/widget/InputDialogFragment;->mText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cornflower/characters/widget/InputDialogFragment;->access$000(Lcom/cornflower/characters/widget/InputDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cornflower/characters/widget/InputDialogFragment$InputListener;->onInputComplete(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
