.class Lcom/cornflower/characters/activity/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/activity/WelcomeActivity;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cornflower/characters/activity/WelcomeActivity$1;->this$0:Lcom/cornflower/characters/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    .local v0, "i":I
    iget-object v1, p0, Lcom/cornflower/characters/activity/WelcomeActivity$1;->this$0:Lcom/cornflower/characters/activity/WelcomeActivity;

    iget-object v1, v1, Lcom/cornflower/characters/activity/WelcomeActivity;->scv:Lcom/cornflower/characters/widget/SuperCircleView;

    const/high16 v2, 0x43b40000    # 360.0f

    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/SuperCircleView;->setSelect(I)V

    .line 72
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/cornflower/characters/activity/WelcomeActivity$1;->this$0:Lcom/cornflower/characters/activity/WelcomeActivity;

    # invokes: Lcom/cornflower/characters/activity/WelcomeActivity;->skip()V
    invoke-static {v1}, Lcom/cornflower/characters/activity/WelcomeActivity;->access$000(Lcom/cornflower/characters/activity/WelcomeActivity;)V

    .line 75
    :cond_0
    return-void
.end method
