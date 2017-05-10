.class final Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IterableProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7928e15851eba4daL


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 75
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 76
    return-void
.end method


# virtual methods
.method fastpath()V
    .locals 6

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 156
    .local v3, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 159
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_0
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 172
    .local v4, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 187
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 188
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 167
    .end local v0    # "b":Z
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0

    .line 182
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "value":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v1

    .line 183
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->fastpath()V

    goto :goto_0

    .line 87
    :cond_2
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->slowpath(J)V

    goto :goto_0
.end method

.method slowpath(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 96
    .local v5, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 98
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    move-wide v6, p1

    .line 99
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 102
    .local v2, "e":J
    :cond_0
    :goto_0
    cmp-long v9, v2, v6

    if-eqz v9, :cond_4

    .line 103
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    :cond_1
    :goto_1
    return-void

    .line 110
    :cond_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 116
    .local v8, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1

    .line 125
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 131
    .local v0, "b":Z
    if-nez v0, :cond_3

    .line 132
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1

    .line 133
    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1

    .line 111
    .end local v0    # "b":Z
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 112
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_1

    .line 126
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "value":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v1

    .line 127
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_1

    .line 138
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_3
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 139
    goto :goto_0

    .line 141
    .end local v0    # "b":Z
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v6

    .line 142
    cmp-long v9, v2, v6

    if-nez v9, :cond_0

    .line 143
    invoke-static {p0, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v6

    .line 144
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_1

    .line 147
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
