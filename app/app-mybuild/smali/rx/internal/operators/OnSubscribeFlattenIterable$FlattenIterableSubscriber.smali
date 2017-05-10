.class final Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeFlattenIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlattenIterableSubscriber"
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
.field active:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final limit:J

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field produced:J

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;I)V
    .locals 2
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 102
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->actual:Lrx/Subscriber;

    .line 103
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->mapper:Lrx/functions/Func1;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 108
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    .line 109
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->limit:J

    .line 110
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    .line 120
    :goto_0
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->request(J)V

    .line 121
    return-void

    .line 113
    :cond_0
    shr-int/lit8 v0, p3, 0x2

    sub-int v0, p3, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->limit:J

    .line 114
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p3}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, p3}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .locals 4
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 291
    iput-object v3, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 313
    :goto_0
    return v1

    .line 295
    :cond_0
    if-eqz p1, :cond_2

    .line 296
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 297
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 298
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->unsubscribe()V

    .line 300
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 301
    iput-object v3, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 303
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 306
    :cond_1
    if-eqz p2, :cond_2

    .line 308
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 313
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method drain()V
    .locals 26

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v21

    if-eqz v21, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->actual:Lrx/Subscriber;

    .line 164
    .local v4, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v16, v0

    .line 166
    .local v16, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v13, 0x1

    .line 170
    .local v13, "missed":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 172
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    if-nez v11, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 175
    .local v6, "d":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 177
    .local v17, "v":Ljava/lang/Object;
    if-nez v17, :cond_9

    const/4 v7, 0x1

    .line 179
    .local v7, "empty":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v4, v1}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 183
    if-nez v7, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->produced:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v14, v22, v24

    .line 186
    .local v14, "p":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->limit:J

    move-wide/from16 v22, v0

    cmp-long v21, v14, v22

    if-nez v21, :cond_a

    .line 187
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->produced:J

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->request(J)V

    .line 196
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->mapper:Lrx/functions/Func1;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 198
    .local v12, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 200
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 210
    .local v5, "b":Z
    if-eqz v5, :cond_2

    .line 214
    move-object/from16 v0, p0

    iput-object v11, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 218
    .end local v5    # "b":Z
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v12    # "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v14    # "p":J
    .end local v17    # "v":Ljava/lang/Object;
    :cond_3
    if-eqz v11, :cond_8

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 220
    .local v18, "r":J
    const-wide/16 v8, 0x0

    .line 222
    .local v8, "e":J
    :cond_4
    cmp-long v21, v8, v18

    if-eqz v21, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 230
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 239
    .local v20, "v":Ljava/lang/Object;, "TR;"
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 245
    const-wide/16 v22, 0x1

    add-long v8, v8, v22

    .line 250
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 259
    .restart local v5    # "b":Z
    if-nez v5, :cond_4

    .line 260
    const/4 v11, 0x0

    .line 261
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 266
    .end local v5    # "b":Z
    .end local v20    # "v":Ljava/lang/Object;, "TR;"
    :cond_5
    :goto_4
    cmp-long v21, v8, v18

    if-nez v21, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v22, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_b

    if-nez v11, :cond_b

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 272
    :cond_6
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-eqz v21, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8, v9}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 276
    :cond_7
    if-eqz v11, :cond_2

    .line 281
    .end local v8    # "e":J
    .end local v18    # "r":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    neg-int v0, v13

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v13

    .line 282
    if-nez v13, :cond_2

    goto/16 :goto_0

    .line 177
    .restart local v6    # "d":Z
    .restart local v17    # "v":Ljava/lang/Object;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 190
    .restart local v7    # "empty":Z
    .restart local v14    # "p":J
    :cond_a
    move-object/from16 v0, p0

    iput-wide v14, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->produced:J

    goto/16 :goto_3

    .line 201
    :catch_0
    move-exception v10

    .line 202
    .local v10, "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 204
    const/4 v11, 0x0

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 231
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v14    # "p":J
    .end local v17    # "v":Ljava/lang/Object;
    .restart local v8    # "e":J
    .restart local v18    # "r":J
    :catch_1
    move-exception v10

    .line 232
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 233
    const/4 v11, 0x0

    .line 234
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 251
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v20    # "v":Ljava/lang/Object;, "TR;"
    :catch_2
    move-exception v10

    .line 252
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 253
    const/4 v11, 0x0

    .line 254
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 267
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v20    # "v":Ljava/lang/Object;, "TR;"
    :cond_b
    const/16 v21, 0x0

    goto :goto_5
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 146
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 147
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 137
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->unsubscribe()V

    .line 127
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    goto :goto_0
.end method

.method requestMore(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 150
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 151
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 152
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 156
    :cond_0
    return-void

    .line 153
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
