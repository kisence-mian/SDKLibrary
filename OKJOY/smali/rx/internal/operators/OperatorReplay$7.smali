.class final Lrx/internal/operators/OperatorReplay$7;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$bufferFactory:Lrx/functions/Func0;

.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V
    .registers 3

    .prologue
    .line 202
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$7;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$7;->val$bufferFactory:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$7;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$7;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    .line 211
    .local v1, "r":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    if-nez v1, :cond_23

    .line 213
    new-instance v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$7;->val$bufferFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-direct {v2, v3}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;-><init>(Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V

    .line 215
    .local v2, "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V

    .line 217
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$7;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v1, v2

    .line 227
    .end local v2    # "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    :cond_23
    new-instance v0, Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;Lrx/Subscriber;)V

    .line 231
    .local v0, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z

    .line 234
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 237
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v3, v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 241
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 244
    return-void
.end method
