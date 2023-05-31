.class public final Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeDelayErrorIterable.java"

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
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->sources:Ljava/lang/Iterable;

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
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 12
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 36
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 38
    .local v2, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 43
    :try_start_8
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_1b

    move-result-object v9

    .line 49
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v9, :cond_20

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 157
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_1a
    :goto_1a
    return-void

    .line 44
    :catch_1b
    move-exception v8

    .line 45
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 54
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_20
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 56
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Lrx/internal/util/unsafe/MpscLinkedQueue;

    invoke-direct {v3}, Lrx/internal/util/unsafe/MpscLinkedQueue;-><init>()V

    .line 59
    .local v3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :goto_2b
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 65
    :try_start_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_47

    move-result v6

    .line 78
    .local v6, "b":Z
    if-nez v6, :cond_63

    .line 150
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1a

    .line 151
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 152
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_1a

    .line 66
    .end local v6    # "b":Z
    :catch_47
    move-exception v8

    .line 67
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1a

    .line 69
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 70
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_1a

    .line 72
    :cond_5b
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 82
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :cond_63
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 89
    :try_start_69
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Completable;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6f} :catch_91

    .line 102
    .local v7, "c":Lrx/Completable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 106
    if-nez v7, :cond_b8

    .line 107
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v8, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1a

    .line 110
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 111
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto :goto_1a

    .line 90
    .end local v7    # "c":Lrx/Completable;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_91
    move-exception v8

    .line 91
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1a

    .line 93
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 94
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    goto/16 :goto_1a

    .line 96
    :cond_a6
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 113
    .restart local v7    # "c":Lrx/Completable;
    .local v8, "e":Ljava/lang/NullPointerException;
    :cond_af
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 119
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_b8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 121
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;Lrx/subscriptions/CompositeSubscription;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v7, v0}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    goto/16 :goto_2b

    .line 154
    .end local v7    # "c":Lrx/Completable;
    :cond_c7
    invoke-static {v3}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1a
.end method
