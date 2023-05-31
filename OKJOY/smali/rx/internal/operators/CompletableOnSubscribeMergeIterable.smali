.class public final Lrx/internal/operators/CompletableOnSubscribeMergeIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeIterable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;->sources:Ljava/lang/Iterable;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 15
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 36
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 38
    .local v2, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 43
    :try_start_a
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_1d

    move-result-object v9

    .line 49
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v9, :cond_22

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_1c
    :goto_1c
    return-void

    .line 44
    :catch_1d
    move-exception v8

    .line 45
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 54
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_22
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 55
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 58
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_2c
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 64
    :try_start_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_48

    move-result v6

    .line 75
    .local v6, "b":Z
    if-nez v6, :cond_5a

    .line 142
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1c

    .line 143
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 144
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_1c

    .line 65
    .end local v6    # "b":Z
    :catch_48
    move-exception v8

    .line 66
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 67
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 68
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 70
    :cond_56
    invoke-static {v8}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 79
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :cond_5a
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 86
    :try_start_60
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Completable;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_66} :catch_82

    .line 97
    .local v7, "c":Lrx/Completable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 101
    if-nez v7, :cond_98

    .line 102
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 103
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 105
    invoke-interface {p1, v10}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 87
    .end local v7    # "c":Lrx/Completable;
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :catch_82
    move-exception v8

    .line 88
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 89
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 90
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 92
    :cond_90
    invoke-static {v8}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 107
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v7    # "c":Lrx/Completable;
    .restart local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_94
    invoke-static {v10}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 112
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_98
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 114
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMergeIterable;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Completable$CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_2c
.end method
