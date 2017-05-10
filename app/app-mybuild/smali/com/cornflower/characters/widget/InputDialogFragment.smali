.class public Lcom/cornflower/characters/widget/InputDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "InputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cornflower/characters/widget/InputDialogFragment$InputListener;
    }
.end annotation


# instance fields
.field private mText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/widget/InputDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/widget/InputDialogFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cornflower/characters/widget/InputDialogFragment;->mText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 29
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cornflower/characters/widget/InputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f08016c

    invoke-direct {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 31
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cornflower/characters/widget/InputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 32
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04002c

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d0080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/cornflower/characters/widget/InputDialogFragment;->mText:Landroid/widget/EditText;

    .line 34
    const-string v3, "\u6587\u672c"

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/cornflower/characters/widget/InputDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/cornflower/characters/widget/InputDialogFragment$1;-><init>(Lcom/cornflower/characters/widget/InputDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
