.class final Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorObserveOn.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnSubscriber"
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
.field final child:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final counter:Ljava/util/concurrent/atomic/AtomicLong;

.field final delayError:Z

.field emitted:J

.field error:Ljava/lang/Throwable;

.field volatile finished:Z

.field final limit:I

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/Subscriber;ZI)V
    .registers 8
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p2, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    .line 103
    invoke-virtual {p1}, Lcom/tds/common/reactor/schedulers/Scheduler;->createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    .line 104
    iput-boolean p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->delayError:Z

    .line 105
    if-lez p4, :cond_1f

    move v0, p4

    goto :goto_21

    :cond_1f
    const/16 v0, 0x80

    .line 107
    .local v0, "calculatedSize":I
    :goto_21
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->limit:I

    .line 109
    new-instance v1, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v1, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    iput-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 112
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 113
    return-void
.end method


# virtual methods
.method public call()V
    .registers 14

    .line 176
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const-wide/16 v0, 0x1

    .line 177
    .local v0, "missed":J
    iget-wide v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->emitted:J

    .line 182
    .local v2, "currentEmission":J
    iget-object v4, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 183
    .local v4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    .line 190
    .local v5, "localChild":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :goto_8
    iget-object v6, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 192
    .local v6, "requestAmount":J
    :goto_e
    cmp-long v8, v6, v2

    if-eqz v8, :cond_44

    .line 193
    iget-boolean v8, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 194
    .local v8, "done":Z
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 195
    .local v9, "v":Ljava/lang/Object;
    if-nez v9, :cond_1c

    const/4 v10, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v10, 0x0

    .line 197
    .local v10, "empty":Z
    :goto_1d
    invoke-virtual {p0, v8, v10, v5, v4}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLcom/tds/common/reactor/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 198
    return-void

    .line 201
    :cond_24
    if-eqz v10, :cond_27

    .line 202
    goto :goto_44

    .line 205
    :cond_27
    invoke-static {v9}, Lcom/tds/common/reactor/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 207
    const-wide/16 v11, 0x1

    add-long/2addr v2, v11

    .line 208
    iget v11, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->limit:I

    int-to-long v11, v11

    cmp-long v11, v2, v11

    if-nez v11, :cond_43

    .line 209
    iget-object v11, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v2, v3}, Lcom/tds/common/reactor/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v6

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 211
    const-wide/16 v2, 0x0

    .line 213
    .end local v8    # "done":Z
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "empty":Z
    :cond_43
    goto :goto_e

    .line 215
    :cond_44
    :goto_44
    cmp-long v8, v6, v2

    if-nez v8, :cond_55

    .line 216
    iget-boolean v8, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v5, v4}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLcom/tds/common/reactor/Subscriber;Ljava/util/Queue;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 217
    return-void

    .line 221
    :cond_55
    iput-wide v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->emitted:J

    .line 222
    iget-object v8, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 223
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_66

    .line 224
    nop

    .line 227
    .end local v6    # "requestAmount":J
    return-void

    .line 226
    :cond_66
    goto :goto_8
.end method

.method checkTerminated(ZZLcom/tds/common/reactor/Subscriber;Ljava/util/Queue;)Z
    .registers 8
    .param p1, "done"    # Z
    .param p2, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p3, "a":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 231
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 232
    return v1

    .line 235
    :cond_b
    if-eqz p1, :cond_57

    .line 236
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->delayError:Z

    if-eqz v0, :cond_2c

    .line 237
    if-eqz p2, :cond_57

    .line 238
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 240
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1b

    .line 241
    :try_start_17
    invoke-virtual {p3, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 243
    :cond_1b
    invoke-virtual {p3}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_25

    .line 246
    :goto_1e
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 247
    nop

    .line 248
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_57

    .line 246
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catchall_25
    move-exception v1

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v2}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 247
    throw v1

    .line 250
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2c
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 251
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_44

    .line 252
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 254
    :try_start_33
    invoke-virtual {p3, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    .line 256
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v2}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 257
    nop

    .line 258
    return v1

    .line 256
    :catchall_3d
    move-exception v1

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v2}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 257
    throw v1

    .line 260
    :cond_44
    if-eqz p2, :cond_57

    .line 262
    :try_start_46
    invoke-virtual {p3}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_50

    .line 264
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v2}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 265
    nop

    .line 266
    return v1

    .line 264
    :catchall_50
    move-exception v1

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v2}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 265
    throw v1

    .line 272
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_57
    :goto_57
    const/4 v0, 0x0

    return v0
.end method

.method init()V
    .registers 3

    .line 118
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    .line 120
    .local v0, "localChild":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 131
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 132
    invoke-virtual {v0, p0}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 133
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 149
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_b

    goto :goto_12

    .line 152
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 153
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    .line 154
    return-void

    .line 150
    :cond_12
    :goto_12
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 158
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_b

    goto :goto_14

    .line 162
    :cond_b
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 164
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    .line 165
    return-void

    .line 159
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_b

    goto :goto_24

    .line 140
    :cond_b
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 141
    new-instance v0, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 142
    return-void

    .line 144
    :cond_20
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    .line 145
    return-void

    .line 138
    :cond_24
    :goto_24
    return-void
.end method

.method protected schedule()V
    .registers 5

    .line 168
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 169
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    .line 171
    :cond_11
    return-void
.end method
