.class final Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;
.super Lrx/Subscriber;
.source "OperatorMapPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMapPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapPairSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "<-",
            "Lrx/Observable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final collectionSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<+TR;>;>;"
    .local p2, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p3, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 82
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->actual:Lrx/Subscriber;

    .line 83
    iput-object p2, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->collectionSelector:Lrx/functions/Func1;

    .line 84
    iput-object p3, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->resultSelector:Lrx/functions/Func2;

    .line 85
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->done:Z

    .line 112
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->collectionSelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v1, "intermediate":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->actual:Lrx/Subscriber;

    new-instance v3, Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;

    iget-object v4, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->resultSelector:Lrx/functions/Func2;

    invoke-direct {v3, p1, v4}, Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 102
    .end local v1    # "intermediate":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->unsubscribe()V

    .line 97
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;, "Lrx/internal/operators/OperatorMapPair$MapPairSubscriber<TT;TU;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$MapPairSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 127
    return-void
.end method
