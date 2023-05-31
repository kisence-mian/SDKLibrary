.class public abstract Lrx/internal/operators/DeferredScalarSubscriber;
.super Lrx/Subscriber;
.source "DeferredScalarSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/DeferredScalarSubscriber$InnerProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final HAS_REQUEST_HAS_VALUE:I = 0x3

.field static final HAS_REQUEST_NO_VALUE:I = 0x1

.field static final NO_REQUEST_HAS_VALUE:I = 0x2

.field static final NO_REQUEST_NO_VALUE:I


# instance fields
.field protected final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field protected hasValue:Z

.field final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/DeferredScalarSubscriber;->actual:Lrx/Subscriber;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    return-void
.end method


# virtual methods
.method protected final complete()V
    .registers 2

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 84
    return-void
.end method

.method protected final complete(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 92
    iget-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->actual:Lrx/Subscriber;

    .line 94
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :cond_4
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 96
    .local v1, "s":I
    if-eq v1, v4, :cond_14

    if-eq v1, v5, :cond_14

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 109
    :cond_14
    :goto_14
    return-void

    .line 99
    :cond_15
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 100
    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_24

    .line 102
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 104
    :cond_24
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    goto :goto_14

    .line 107
    :cond_2a
    iput-object p1, p0, Lrx/internal/operators/DeferredScalarSubscriber;->value:Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_14
.end method

.method final downstreamRequest(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 115
    cmp-long v2, p1, v8

    if-gez v2, :cond_22

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_22
    cmp-long v2, p1, v8

    if-eqz v2, :cond_38

    .line 119
    iget-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->actual:Lrx/Subscriber;

    .line 121
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :cond_28
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 122
    .local v1, "s":I
    if-eq v1, v4, :cond_38

    if-eq v1, v6, :cond_38

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 139
    .end local v0    # "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .end local v1    # "s":I
    :cond_38
    :goto_38
    return-void

    .line 125
    .restart local v0    # "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .restart local v1    # "s":I
    :cond_39
    if-ne v1, v5, :cond_52

    .line 126
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 127
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_38

    .line 129
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_38

    .line 134
    :cond_52
    iget-object v2, p0, Lrx/internal/operators/DeferredScalarSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_38
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->hasValue:Z

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/DeferredScalarSubscriber;->complete(Ljava/lang/Object;)V

    .line 77
    :goto_9
    return-void

    .line 75
    :cond_a
    invoke-virtual {p0}, Lrx/internal/operators/DeferredScalarSubscriber;->complete()V

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->value:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public final setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 144
    return-void
.end method

.method final setupDownstream()V
    .registers 3

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/DeferredScalarSubscriber;->actual:Lrx/Subscriber;

    .line 158
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 159
    new-instance v1, Lrx/internal/operators/DeferredScalarSubscriber$InnerProducer;

    invoke-direct {v1, p0}, Lrx/internal/operators/DeferredScalarSubscriber$InnerProducer;-><init>(Lrx/internal/operators/DeferredScalarSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method

.method public final subscribeTo(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/DeferredScalarSubscriber;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/DeferredScalarSubscriber;->setupDownstream()V

    .line 153
    invoke-virtual {p1, p0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 154
    return-void
.end method
