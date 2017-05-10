.class public final Lrx/internal/operators/OnSubscribeLift;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final hook:Lrx/plugins/RxJavaObservableExecutionHook;


# instance fields
.field final operator:Lrx/Observable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeLift;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    return-void
.end method

.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable$Operator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OnSubscribeLift;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "parent":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeLift;->parent:Lrx/Observable$OnSubscribe;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeLift;->operator:Lrx/Observable$Operator;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OnSubscribeLift;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeLift;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeLift;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    sget-object v2, Lrx/internal/operators/OnSubscribeLift;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeLift;->operator:Lrx/Observable$Operator;

    invoke-virtual {v2, v3}, Lrx/plugins/RxJavaObservableExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .local v1, "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_1
    invoke-virtual {v1}, Lrx/Subscriber;->onStart()V

    .line 50
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeLift;->parent:Lrx/Observable$OnSubscribe;

    invoke-interface {v2, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    return-void

    .line 51
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_1
    move-exception v0

    .line 59
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 62
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
