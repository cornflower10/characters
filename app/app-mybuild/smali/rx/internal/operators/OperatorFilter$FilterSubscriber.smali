.class final Lrx/internal/operators/OperatorFilter$FilterSubscriber;
.super Lrx/Subscriber;
.source "OperatorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorFilter$FilterSubscriber;, "Lrx/internal/operators/OperatorFilter$FilterSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 54
    iput-object p1, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    .line 55
    iput-object p2, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->predicate:Lrx/functions/Func1;

    .line 56
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->request(J)V

    .line 57
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorFilter$FilterSubscriber;, "Lrx/internal/operators/OperatorFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorFilter$FilterSubscriber;, "Lrx/internal/operators/OperatorFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->done:Z

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorFilter$FilterSubscriber;, "Lrx/internal/operators/OperatorFilter$FilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->predicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 73
    iget-object v2, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    .end local v1    # "result":Z
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->unsubscribe()V

    .line 68
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->request(J)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorFilter$FilterSubscriber;, "Lrx/internal/operators/OperatorFilter$FilterSubscriber<TT;>;"
    invoke-super {p0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 102
    return-void
.end method
