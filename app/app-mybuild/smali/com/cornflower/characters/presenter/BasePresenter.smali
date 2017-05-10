.class public Lcom/cornflower/characters/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# instance fields
.field private mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSubscription(Lrx/Observable;Lrx/Subscriber;)V
    .locals 3
    .param p1, "observable"    # Lrx/Observable;
    .param p2, "subscriber"    # Lrx/Subscriber;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cornflower/characters/presenter/BasePresenter;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/cornflower/characters/presenter/BasePresenter;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/cornflower/characters/presenter/BasePresenter;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 29
    return-void
.end method

.method public onUnsubscribe()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cornflower/characters/presenter/BasePresenter;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cornflower/characters/presenter/BasePresenter;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->hasSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/cornflower/characters/presenter/BasePresenter;->mCompositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 19
    :cond_0
    return-void
.end method
