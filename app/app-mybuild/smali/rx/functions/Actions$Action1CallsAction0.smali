.class final Lrx/functions/Actions$Action1CallsAction0;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/functions/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Action1CallsAction0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .locals 0
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 449
    .local p0, "this":Lrx/functions/Actions$Action1CallsAction0;, "Lrx/functions/Actions$Action1CallsAction0<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lrx/functions/Actions$Action1CallsAction0;->action:Lrx/functions/Action0;

    .line 451
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lrx/functions/Actions$Action1CallsAction0;, "Lrx/functions/Actions$Action1CallsAction0<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/functions/Actions$Action1CallsAction0;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 456
    return-void
.end method
