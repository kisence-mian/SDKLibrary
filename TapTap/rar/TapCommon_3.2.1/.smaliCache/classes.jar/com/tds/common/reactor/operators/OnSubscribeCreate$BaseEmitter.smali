.class abstract Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeCreate.java"

# interfaces
.implements Lcom/tds/common/reactor/Emitter;
.implements Lcom/tds/common/reactor/Producer;
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/tds/common/reactor/Emitter<",
        "TT;>;",
        "Lcom/tds/common/reactor/Producer;",
        "Lcom/tds/common/reactor/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 91
    new-instance v0, Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    .line 92
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .registers 2

    .line 130
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 3

    .line 96
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    return-void

    .line 100
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_15

    .line 102
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->unsubscribe()V

    .line 103
    nop

    .line 104
    return-void

    .line 102
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->unsubscribe()V

    .line 103
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 108
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    return-void

    .line 112
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_15

    .line 114
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->unsubscribe()V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->unsubscribe()V

    .line 115
    throw v0
.end method

.method onRequested()V
    .registers 1

    .line 143
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method onUnsubscribed()V
    .registers 1

    .line 126
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method public final request(J)V
    .registers 4
    .param p1, "n"    # J

    .line 135
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    invoke-static {p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 136
    invoke-static {p0, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 137
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onRequested()V

    .line 139
    :cond_c
    return-void
.end method

.method public final requested()J
    .registers 3

    .line 152
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setSubscription(Lcom/tds/common/reactor/Subscription;)V
    .registers 3
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 147
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 148
    return-void
.end method

.method public final unsubscribe()V
    .registers 2

    .line 120
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->unsubscribe()V

    .line 121
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onUnsubscribed()V

    .line 122
    return-void
.end method
