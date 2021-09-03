.class public final Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/schedulers/Scheduler;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 26
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->timeout:J

    .line 28
    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 29
    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 30
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler;->createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    move-result-object v0

    .line 35
    .local v0, "worker":Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    new-instance v1, Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lcom/tds/common/reactor/observers/SerializedSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    move-object v7, v1

    .line 36
    .local v7, "s":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;-><init>()V

    move-object v8, v1

    .line 38
    .local v8, "serial":Lcom/tds/common/reactor/subscriptions/SerialSubscription;
    invoke-virtual {v7, v0}, Lcom/tds/common/reactor/observers/SerializedSubscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 39
    invoke-virtual {v7, v8}, Lcom/tds/common/reactor/observers/SerializedSubscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 41
    new-instance v9, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/subscriptions/SerialSubscription;Lcom/tds/common/reactor/schedulers/Scheduler$Worker;Lcom/tds/common/reactor/observers/SerializedSubscriber;)V

    return-object v9
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object p1

    return-object p1
.end method
