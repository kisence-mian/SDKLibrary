.class final Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;
.super Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field private final threadWorker:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 3
    .param p1, "pool"    # Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 194
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;-><init>()V

    .line 189
    new-instance v0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 195
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->pool:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 197
    invoke-virtual {p1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->get()Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 198
    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->pool:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->release(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;)V

    .line 214
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 5
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 223
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
    .registers 7
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 228
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 233
    :cond_d
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    new-instance v1, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;-><init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;Lcom/tds/common/reactor/functions/Action0;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/schedulers/ScheduledAction;

    move-result-object v0

    .line 242
    .local v0, "s":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 243
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->addParent(Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V

    .line 244
    return-object v0
.end method

.method public unsubscribe()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, p0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    .line 208
    :cond_f
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 209
    return-void
.end method
