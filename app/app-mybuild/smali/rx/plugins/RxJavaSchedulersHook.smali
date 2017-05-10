.class public Lrx/plugins/RxJavaSchedulersHook;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-direct {v0}, Lrx/plugins/RxJavaSchedulersHook;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static createComputationScheduler()Lrx/Scheduler;
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/plugins/RxJavaSchedulersHook;->createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 59
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/EventLoopsScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createIoScheduler()Lrx/Scheduler;
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/plugins/RxJavaSchedulersHook;->createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/CachedThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createNewThreadScheduler()Lrx/Scheduler;
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/plugins/RxJavaSchedulersHook;->createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Lrx/internal/schedulers/NewThreadScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/NewThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static getDefaultInstance()Lrx/plugins/RxJavaSchedulersHook;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lrx/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;

    return-object v0
.end method


# virtual methods
.method public getComputationScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIOScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewThreadScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;
    .locals 0
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 140
    return-object p1
.end method
