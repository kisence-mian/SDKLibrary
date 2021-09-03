.class final Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;
.super Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lcom/tds/common/reactor/util/SubscriptionList;

.field private final poolWorker:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

.field private final serial:Lcom/tds/common/reactor/util/SubscriptionList;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;)V
    .registers 4
    .param p1, "poolWorker"    # Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    .line 148
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;-><init>()V

    .line 144
    new-instance v0, Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-direct {v0}, Lcom/tds/common/reactor/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 145
    new-instance v1, Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-direct {v1, v0}, Lcom/tds/common/reactor/util/SubscriptionList;-><init>(Lcom/tds/common/reactor/Subscription;)V

    iput-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 149
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    .line 151
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 9
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 165
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 169
    :cond_b
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v2, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$1;

    invoke-direct {v2, p0, p1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$1;-><init>(Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;Lcom/tds/common/reactor/functions/Action0;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual/range {v1 .. v6}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/util/SubscriptionList;)Lcom/tds/common/reactor/schedulers/ScheduledAction;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
    .registers 7
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 182
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v1, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;-><init>(Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;Lcom/tds/common/reactor/functions/Action0;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/schedulers/ScheduledAction;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribe()V

    .line 156
    return-void
.end method
