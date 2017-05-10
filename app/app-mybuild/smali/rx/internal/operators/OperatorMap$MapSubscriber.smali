.class final Lrx/internal/operators/OperatorMap$MapSubscriber;
.super Lrx/Subscriber;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "<-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorMap$MapSubscriber;, "Lrx/internal/operators/OperatorMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->actual:Lrx/Subscriber;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    .line 59
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorMap$MapSubscriber;, "Lrx/internal/operators/OperatorMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorMap$MapSubscriber;, "Lrx/internal/operators/OperatorMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->done:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorMap$MapSubscriber;, "Lrx/internal/operators/OperatorMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMap$MapSubscriber;->unsubscribe()V

    .line 70
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMap$MapSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorMap$MapSubscriber;, "Lrx/internal/operators/OperatorMap$MapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 100
    return-void
.end method
