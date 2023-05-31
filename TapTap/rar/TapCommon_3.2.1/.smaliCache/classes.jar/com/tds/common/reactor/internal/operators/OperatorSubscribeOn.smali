.class public final Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;
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
.field final requestOn:Z

.field final scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

.field final source:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/schedulers/Scheduler;Z)V
    .registers 4
    .param p2, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p3, "requestOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Z)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 40
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->source:Lcom/tds/common/reactor/Observable;

    .line 41
    iput-boolean p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->requestOn:Z

    .line 42
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler;->createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    move-result-object v0

    .line 48
    .local v0, "inner":Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->requestOn:Z

    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->source:Lcom/tds/common/reactor/Observable;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;ZLcom/tds/common/reactor/schedulers/Scheduler$Worker;Lcom/tds/common/reactor/Observable;)V

    .line 49
    .local v1, "parent":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    .line 53
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
