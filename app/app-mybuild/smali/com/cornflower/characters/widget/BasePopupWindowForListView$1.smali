.class Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;
.super Ljava/lang/Object;
.source "BasePopupWindowForListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/widget/BasePopupWindowForListView;-><init>(Landroid/view/View;IIZLjava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/widget/BasePopupWindowForListView;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/widget/BasePopupWindowForListView;)V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;, "Lcom/cornflower/characters/widget/BasePopupWindowForListView.1;"
    iput-object p1, p0, Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;->this$0:Lcom/cornflower/characters/widget/BasePopupWindowForListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    .local p0, "this":Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;, "Lcom/cornflower/characters/widget/BasePopupWindowForListView.1;"
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cornflower/characters/widget/BasePopupWindowForListView$1;->this$0:Lcom/cornflower/characters/widget/BasePopupWindowForListView;

    invoke-virtual {v0}, Lcom/cornflower/characters/widget/BasePopupWindowForListView;->dismiss()V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
