.class public Lrx/internal/operators/OperatorOnBackpressureDrop;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final onDrop:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop;-><init>(Lrx/functions/Action1;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "onDrop":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureDrop;->onDrop:Lrx/functions/Action1;

    .line 50
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorOnBackpressureDrop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorOnBackpressureDrop",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureDrop;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureDrop;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 56
    .local v0, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureDrop$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop$1;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 64
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureDrop$2;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop$2;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
