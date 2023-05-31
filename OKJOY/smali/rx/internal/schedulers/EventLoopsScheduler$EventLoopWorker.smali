.class final Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lrx/internal/util/SubscriptionList;

.field private final poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

.field private final serial:Lrx/internal/util/SubscriptionList;

.field private final timed:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V
    .registers 6
    .param p1, "poolWorker"    # Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .prologue
    .line 145
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 140
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lrx/internal/util/SubscriptionList;

    .line 141
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->timed:Lrx/subscriptions/CompositeSubscription;

    .line 142
    new-instance v0, Lrx/internal/util/SubscriptionList;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/Subscription;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lrx/internal/util/SubscriptionList;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->timed:Lrx/subscriptions/CompositeSubscription;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>([Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lrx/internal/util/SubscriptionList;

    .line 146
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 148
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 8
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 162
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 166
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lrx/internal/util/SubscriptionList;

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/SubscriptionList;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_a
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 11
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 180
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 183
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V

    iget-object v5, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->timed:Lrx/subscriptions/CompositeSubscription;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/subscriptions/CompositeSubscription;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_a
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 153
    return-void
.end method
