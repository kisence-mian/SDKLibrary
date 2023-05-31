.class final Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscribeOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;",
        "Lcom/tds/common/reactor/functions/Action0;"
    }
.end annotation


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final requestOn:Z

.field source:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Thread;

.field final worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;ZLcom/tds/common/reactor/schedulers/Scheduler$Worker;Lcom/tds/common/reactor/Observable;)V
    .registers 5
    .param p2, "requestOn"    # Z
    .param p3, "worker"    # Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;Z",
            "Lcom/tds/common/reactor/schedulers/Scheduler$Worker;",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p4, "source":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 69
    iput-boolean p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->requestOn:Z

    .line 70
    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    .line 71
    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->source:Lcom/tds/common/reactor/Observable;

    .line 72
    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 99
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->source:Lcom/tds/common/reactor/Observable;

    .line 100
    .local v0, "src":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->source:Lcom/tds/common/reactor/Observable;

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->t:Ljava/lang/Thread;

    .line 102
    invoke-virtual {v0, p0}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 103
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .line 91
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 93
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 94
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 82
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 84
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 85
    nop

    .line 86
    return-void

    .line 84
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 85
    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 4
    .param p1, "p"    # Lcom/tds/common/reactor/Producer;

    .line 107
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;Lcom/tds/common/reactor/Producer;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 122
    return-void
.end method
