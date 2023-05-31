.class public Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;
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
.field final is:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_8

    .line 19
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;->is:Ljava/lang/Iterable;

    .line 20
    return-void

    .line 17
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable<TT;>;"
    .local p1, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;->is:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_20

    .line 34
    .local v1, "b":Z
    nop

    .line 36
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 37
    if-nez v1, :cond_17

    .line 38
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    goto :goto_1f

    .line 40
    :cond_17
    new-instance v2, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v2, p1, v0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lcom/tds/common/reactor/Subscriber;Ljava/util/Iterator;)V

    invoke-virtual {p1, v2}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 43
    :cond_1f
    :goto_1f
    return-void

    .line 31
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .end local v1    # "b":Z
    :catchall_20
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 33
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 12
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
