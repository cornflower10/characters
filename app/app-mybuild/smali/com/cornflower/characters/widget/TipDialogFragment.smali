.class public Lcom/cornflower/characters/widget/TipDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TipDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;
    }
.end annotation


# instance fields
.field private positiveButtonListener:Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;

.field private updateInfo:Lcom/cornflower/characters/moudle/entity/UpdateInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/widget/TipDialogFragment;)Lcom/cornflower/characters/moudle/entity/UpdateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/TipDialogFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cornflower/characters/widget/TipDialogFragment;->updateInfo:Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cornflower/characters/widget/TipDialogFragment;)Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/TipDialogFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cornflower/characters/widget/TipDialogFragment;->positiveButtonListener:Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;

    return-object v0
.end method

.method public static newInstance(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)Lcom/cornflower/characters/widget/TipDialogFragment;
    .locals 3
    .param p0, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 27
    new-instance v1, Lcom/cornflower/characters/widget/TipDialogFragment;

    invoke-direct {v1}, Lcom/cornflower/characters/widget/TipDialogFragment;-><init>()V

    .line 28
    .local v1, "f":Lcom/cornflower/characters/widget/TipDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "updateInfo"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/cornflower/characters/widget/TipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/TipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f08016c

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 37
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/TipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;

    iput-object v2, p0, Lcom/cornflower/characters/widget/TipDialogFragment;->positiveButtonListener:Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;

    .line 38
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/TipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "updateInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    iput-object v2, p0, Lcom/cornflower/characters/widget/TipDialogFragment;->updateInfo:Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .line 39
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/TipDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 40
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const-string v2, "\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 41
    const-string v2, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 42
    const-string v2, "\u662f"

    new-instance v3, Lcom/cornflower/characters/widget/TipDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/cornflower/characters/widget/TipDialogFragment$2;-><init>(Lcom/cornflower/characters/widget/TipDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u5426"

    new-instance v4, Lcom/cornflower/characters/widget/TipDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/cornflower/characters/widget/TipDialogFragment$1;-><init>(Lcom/cornflower/characters/widget/TipDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
