.class Landroid/support/design/widget/BottomSheetBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .prologue
    .line 567
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 638
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 633
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    :goto_0
    invoke-static {p2, v1, v0}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 643
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 646
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    const/4 v1, 0x1

    .line 594
    if-ne p1, v1, :cond_0

    .line 595
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 597
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 589
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V
    invoke-static {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->access$500(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 590
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    const/4 v4, 0x0

    .line 603
    cmpg-float v3, p3, v4

    if-gez v3, :cond_0

    .line 604
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 605
    .local v2, "top":I
    const/4 v1, 0x3

    .line 622
    .local v1, "targetState":I
    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v4, 0x2

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 624
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v3, v4, p1, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 629
    :goto_1
    return-void

    .line 606
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z
    invoke-static {v3, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->access$900(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 608
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 609
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_1
    cmpl-float v3, p3, v4

    if-nez v3, :cond_3

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 611
    .local v0, "currentTop":I
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 612
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 613
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 615
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 616
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 619
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 620
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_0

    .line 627
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior$1;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mState:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v2

    .line 574
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mState:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 578
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$300(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 579
    .local v0, "scroll":Landroid/view/View;
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    .end local v0    # "scroll":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
