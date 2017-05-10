.class Lcom/cornflower/characters/activity/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/activity/WelcomeActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cornflower/characters/activity/WelcomeActivity$2;->this$0:Lcom/cornflower/characters/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/cornflower/characters/activity/WelcomeActivity$2;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cornflower/characters/activity/WelcomeActivity$2;->this$0:Lcom/cornflower/characters/activity/WelcomeActivity;

    # invokes: Lcom/cornflower/characters/activity/WelcomeActivity;->skip()V
    invoke-static {v0}, Lcom/cornflower/characters/activity/WelcomeActivity;->access$000(Lcom/cornflower/characters/activity/WelcomeActivity;)V

    .line 83
    iget-object v0, p0, Lcom/cornflower/characters/activity/WelcomeActivity$2;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 84
    return-void
.end method
