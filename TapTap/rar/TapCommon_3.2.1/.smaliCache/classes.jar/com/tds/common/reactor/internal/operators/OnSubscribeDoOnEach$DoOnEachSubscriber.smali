.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OnSubscribeDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoOnEachSubscriber"
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
.field private final doOnEachObserver:Lcom/tds/common/reactor/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field private final subscriber:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "doOnEachObserver":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 35
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    .line 36
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lcom/tds/common/reactor/Observer;

    .line 37
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 42
    return-void

    .line 45
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0}, Lcom/tds/common/reactor/Observer;->onCompleted()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 49
    nop

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    .line 52
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 53
    return-void

    .line 46
    :catchall_14
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 57
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 58
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 59
    return-void

    .line 61
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    .line 63
    :try_start_b
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lcom/tds/common/reactor/Observer;

    invoke-interface {v1, p1}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17

    .line 68
    nop

    .line 69
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 70
    return-void

    .line 64
    :catchall_17
    move-exception v1

    .line 65
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    new-instance v3, Lcom/tds/common/reactor/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 75
    return-void

    .line 78
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 82
    nop

    .line 83
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 84
    return-void

    .line 79
    :catchall_11
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 81
    return-void
.end method
