.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/Schedulers;


# instance fields
.field private final computationScheduler:Lrx/Scheduler;

.field private final ioScheduler:Lrx/Scheduler;

.field private final newThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lrx/schedulers/Schedulers;

    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v4

    invoke-virtual {v4}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v1

    .line 40
    .local v1, "hook":Lrx/plugins/RxJavaSchedulersHook;
    invoke-virtual {v1}, Lrx/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 41
    .local v0, "c":Lrx/Scheduler;
    if-eqz v0, :cond_0

    .line 42
    iput-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    .line 47
    :goto_0
    invoke-virtual {v1}, Lrx/plugins/RxJavaSchedulersHook;->getIOScheduler()Lrx/Scheduler;

    move-result-object v2

    .line 48
    .local v2, "io":Lrx/Scheduler;
    if-eqz v2, :cond_1

    .line 49
    iput-object v2, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    .line 54
    :goto_1
    invoke-virtual {v1}, Lrx/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lrx/Scheduler;

    move-result-object v3

    .line 55
    .local v3, "nt":Lrx/Scheduler;
    if-eqz v3, :cond_2

    .line 56
    iput-object v3, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    .line 60
    :goto_2
    return-void

    .line 44
    .end local v2    # "io":Lrx/Scheduler;
    .end local v3    # "nt":Lrx/Scheduler;
    :cond_0
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createComputationScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    goto :goto_0

    .line 51
    .restart local v2    # "io":Lrx/Scheduler;
    :cond_1
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createIoScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    goto :goto_1

    .line 58
    .restart local v3    # "nt":Lrx/Scheduler;
    :cond_2
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createNewThreadScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    goto :goto_2
.end method

.method public static computation()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 142
    new-instance v0, Lrx/internal/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static immediate()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lrx/internal/schedulers/ImmediateScheduler;->INSTANCE:Lrx/internal/schedulers/ImmediateScheduler;

    return-object v0
.end method

.method public static io()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static newThread()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    .line 174
    .local v0, "s":Lrx/schedulers/Schedulers;
    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 178
    :cond_0
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 181
    :cond_1
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 185
    :cond_2
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-virtual {v1}, Lrx/internal/schedulers/GenericScheduledExecutorService;->shutdown()V

    .line 187
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->shutdown()V

    .line 189
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->shutdown()V

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static start()V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    .line 151
    .local v0, "s":Lrx/schedulers/Schedulers;
    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 155
    :cond_0
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 158
    :cond_1
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 161
    :cond_2
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-virtual {v1}, Lrx/internal/schedulers/GenericScheduledExecutorService;->start()V

    .line 163
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->start()V

    .line 165
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->start()V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lrx/internal/schedulers/TrampolineScheduler;->INSTANCE:Lrx/internal/schedulers/TrampolineScheduler;

    return-object v0
.end method
