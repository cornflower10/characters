.class public Lcom/cornflower/characters/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iput-object p0, p0, Lcom/cornflower/characters/BaseActivity;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p0}, Lcom/cornflower/characters/widget/StatusBarCompat;->compat(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method public setToolbar(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 25
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 27
    return-void
.end method

.method public setToolbarHasBack(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/cornflower/characters/BaseActivity;->setToolbar(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/cornflower/characters/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    return-void
.end method
