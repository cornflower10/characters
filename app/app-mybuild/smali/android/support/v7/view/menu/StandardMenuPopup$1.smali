.class Landroid/support/v7/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/view/menu/StandardMenuPopup;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    # getter for: Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;
    invoke-static {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->access$000(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->isModal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    # getter for: Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->access$100(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 73
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    # getter for: Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;
    invoke-static {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->access$000(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_0
.end method
