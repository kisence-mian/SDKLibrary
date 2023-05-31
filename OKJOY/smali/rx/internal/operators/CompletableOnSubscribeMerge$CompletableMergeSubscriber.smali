.class final Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
.super Lrx/Subscriber;
.source "CompletableOnSubscribeMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableMergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Completable$CompletableSubscriber;

.field final delayErrors:Z

.field volatile done:Z

.field final errors:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final set:Lrx/subscriptions/CompositeSubscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Completable$CompletableSubscriber;IZ)V
    .registers 6
    .param p1, "actual"    # Lrx/Completable$CompletableSubscriber;
    .param p2, "maxConcurrency"    # I
    .param p3, "delayErrors"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    .line 66
    iput p2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->maxConcurrency:I

    .line 67
    iput-boolean p3, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->delayErrors:Z

    .line 68
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_34

    .line 73
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    .line 77
    :goto_33
    return-void

    .line 75
    :cond_34
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    goto :goto_33
.end method

.method static synthetic access$000(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    return-void
.end method


# virtual methods
.method getOrCreateErrors()Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 82
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 90
    :goto_b
    return-object v1

    .line 86
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 87
    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v1, v0

    .line 88
    goto :goto_b

    .line 90
    :cond_1c
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    goto :goto_b
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 163
    :goto_4
    return-void

    .line 161
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 148
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 154
    :goto_7
    return-void

    .line 151
    :cond_8
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->getOrCreateErrors()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    goto :goto_7
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lrx/Completable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->onNext(Lrx/Completable;)V

    return-void
.end method

.method public onNext(Lrx/Completable;)V
    .registers 3
    .param p1, "t"    # Lrx/Completable;

    .prologue
    .line 95
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 143
    :goto_4
    return-void

    .line 99
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 101
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_4
.end method

.method terminate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_36

    .line 167
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 168
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 169
    :cond_1a
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 190
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_1f
    :goto_1f
    return-void

    .line 171
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_20
    invoke-static {v1}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 173
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 175
    :cond_32
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 179
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_36
    iget-boolean v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_1f

    .line 180
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 181
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 182
    invoke-static {v1}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    .line 183
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 184
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 186
    :cond_5c
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method
