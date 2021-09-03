.class public final Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;
.super Ljava/lang/Object;
.source "OnSubscribeTimeoutTimedWithFallback.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;,
        Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final fallback:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

.field final source:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/Observable;)V
    .registers 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback<TT;>;"
    .local p1, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p6, "fallback":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->source:Lcom/tds/common/reactor/Observable;

    .line 33
    iput-wide p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->timeout:J

    .line 34
    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->unit:Ljava/util/concurrent/TimeUnit;

    .line 35
    iput-object p5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 36
    iput-object p6, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->fallback:Lcom/tds/common/reactor/Observable;

    .line 37
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback<TT;>;"
    .local p1, "t":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v7, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;

    iget-wide v2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->timeout:J

    iget-object v4, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler;->createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    move-result-object v5

    iget-object v6, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->fallback:Lcom/tds/common/reactor/Observable;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/schedulers/Scheduler$Worker;Lcom/tds/common/reactor/Observable;)V

    .line 42
    .local v0, "parent":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    iget-object v1, v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->upstream:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 43
    iget-object v1, v0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 44
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->startTimeout(J)V

    .line 45
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->source:Lcom/tds/common/reactor/Observable;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 46
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 17
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
