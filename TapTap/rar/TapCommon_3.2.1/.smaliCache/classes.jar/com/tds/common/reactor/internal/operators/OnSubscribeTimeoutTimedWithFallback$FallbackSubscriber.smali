.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OnSubscribeTimeoutTimedWithFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FallbackSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
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

.field final arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/internal/producers/ProducerArbiter;)V
    .registers 3
    .param p2, "arbiter"    # Lcom/tds/common/reactor/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Lcom/tds/common/reactor/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 185
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    .line 186
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 200
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 201
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 195
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 196
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "p"    # Lcom/tds/common/reactor/Producer;

    .line 205
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 206
    return-void
.end method
