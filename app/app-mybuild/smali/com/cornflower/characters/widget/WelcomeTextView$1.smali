.class Lcom/cornflower/characters/widget/WelcomeTextView$1;
.super Ljava/lang/Object;
.source "WelcomeTextView.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/widget/WelcomeTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/cornflower/characters/widget/WelcomeTextView;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    iput p2, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Long;)V
    .locals 5
    .param p1, "aLong"    # Ljava/lang/Long;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->index:I
    invoke-static {v0}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$000(Lcom/cornflower/characters/widget/WelcomeTextView;)I

    move-result v0

    iget v1, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->val$size:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->subscription:Lrx/Subscription;
    invoke-static {v0}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$100(Lcom/cornflower/characters/widget/WelcomeTextView;)Lrx/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 81
    const-string v0, ""

    const-string v1, "\u89e3\u9664\u8ba2\u9605"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    invoke-virtual {v2}, Lcom/cornflower/characters/widget/WelcomeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$300(Lcom/cornflower/characters/widget/WelcomeTextView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->index:I
    invoke-static {v3}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$000(Lcom/cornflower/characters/widget/WelcomeTextView;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/cornflower/characters/widget/WelcomeTextView;->sText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$202(Lcom/cornflower/characters/widget/WelcomeTextView;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->index:I
    invoke-static {v0}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$000(Lcom/cornflower/characters/widget/WelcomeTextView;)I

    move-result v0

    iget v1, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->val$size:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    invoke-virtual {v2}, Lcom/cornflower/characters/widget/WelcomeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    iget-object v3, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->arrs:[Ljava/lang/String;
    invoke-static {v3}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$300(Lcom/cornflower/characters/widget/WelcomeTextView;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # getter for: Lcom/cornflower/characters/widget/WelcomeTextView;->index:I
    invoke-static {v4}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$000(Lcom/cornflower/characters/widget/WelcomeTextView;)I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/cornflower/characters/widget/WelcomeTextView;->addSpace(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$400(Lcom/cornflower/characters/widget/WelcomeTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/cornflower/characters/widget/WelcomeTextView;->sText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$202(Lcom/cornflower/characters/widget/WelcomeTextView;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    invoke-virtual {v0}, Lcom/cornflower/characters/widget/WelcomeTextView;->invalidate()V

    .line 88
    iget-object v0, p0, Lcom/cornflower/characters/widget/WelcomeTextView$1;->this$0:Lcom/cornflower/characters/widget/WelcomeTextView;

    # operator++ for: Lcom/cornflower/characters/widget/WelcomeTextView;->index:I
    invoke-static {v0}, Lcom/cornflower/characters/widget/WelcomeTextView;->access$008(Lcom/cornflower/characters/widget/WelcomeTextView;)I

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/widget/WelcomeTextView$1;->call(Ljava/lang/Long;)V

    return-void
.end method
