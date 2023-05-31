.class final Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "Lcom/tds/common/reactor/Observable<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final child:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field volatile done:Z

.field emitting:Z

.field volatile errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final innerGuard:Ljava/lang/Object;

.field volatile innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "*>;"
        }
    .end annotation
.end field

.field lastId:J

.field lastIndex:I

.field final maxConcurrent:I

.field missed:Z

.field producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field scalarEmissionCount:I

.field final scalarEmissionLimit:I

.field volatile subscriptions:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

.field uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    sput-object v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;ZI)V
    .registers 6
    .param p2, "delayErrors"    # Z
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    .line 201
    iput-boolean p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 202
    iput p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 203
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 205
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_24

    .line 206
    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    .line 207
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    goto :goto_31

    .line 209
    :cond_24
    shr-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    .line 210
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 212
    :goto_31
    return-void
.end method

.method private reportError()V
    .registers 4

    .line 273
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 275
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 277
    :cond_1b
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    new-instance v2, Lcom/tds/common/reactor/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 279
    :goto_25
    return-void
.end method


# virtual methods
.method addInner(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateComposite()Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 296
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_a
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 298
    .local v1, "a":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v2, v1

    .line 299
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 300
    .local v3, "b":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    aput-object p1, v3, v2

    .line 302
    iput-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 303
    .end local v1    # "a":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v2    # "n":I
    .end local v3    # "b":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method checkTerminate()Z
    .registers 4

    .line 821
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 822
    return v1

    .line 824
    :cond_a
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 825
    .local v0, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_25

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 827
    :try_start_18
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 829
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 830
    nop

    .line 831
    return v1

    .line 829
    :catchall_20
    move-exception v1

    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 830
    throw v1

    .line 833
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method emit()V
    .registers 3

    .line 569
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    monitor-enter p0

    .line 570
    :try_start_1
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 571
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 572
    monitor-exit p0

    return-void

    .line 574
    :cond_a
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 575
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 576
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    .line 577
    return-void

    .line 575
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method emitEmpty()V
    .registers 4

    .line 263
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    add-int/lit8 v0, v0, 0x1

    .line 264
    .local v0, "produced":I
    iget v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    if-ne v0, v1, :cond_10

    .line 265
    const/4 v1, 0x0

    iput v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 266
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    goto :goto_12

    .line 268
    :cond_10
    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 270
    :goto_12
    return-void
.end method

.method emitLoop()V
    .registers 35

    .line 583
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 585
    .local v2, "skipFinal":Z
    const/4 v3, 0x0

    :try_start_4
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    move-object v4, v0

    .line 588
    .local v4, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2d0

    if-eqz v0, :cond_19

    .line 589
    const/4 v2, 0x1

    .line 807
    if-nez v2, :cond_18

    .line 808
    monitor-enter p0

    .line 809
    :try_start_11
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw v0

    .line 590
    :cond_18
    :goto_18
    return-void

    .line 592
    :cond_19
    :try_start_19
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object v5, v0

    .line 594
    .local v5, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v6
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2d0

    .line 595
    .local v6, "r":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    move v8, v0

    .line 598
    .local v8, "unbounded":Z
    const/4 v0, 0x0

    .line 601
    .local v0, "replenishMain":I
    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_b8

    .line 603
    :goto_36
    const/4 v13, 0x0

    .line 604
    .local v13, "scalarEmission":I
    const/4 v14, 0x0

    move-wide/from16 v32, v6

    move v6, v0

    move v7, v13

    move-object v0, v14

    move-wide/from16 v13, v32

    .line 605
    .local v0, "o":Ljava/lang/Object;
    .local v6, "replenishMain":I
    .local v7, "scalarEmission":I
    .local v13, "r":J
    :goto_3f
    cmp-long v15, v13, v11

    if-lez v15, :cond_97

    .line 606
    :try_start_43
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v15

    .line 608
    .end local v0    # "o":Ljava/lang/Object;
    .local v15, "o":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_94

    if-eqz v0, :cond_59

    .line 609
    const/4 v2, 0x1

    .line 807
    if-nez v2, :cond_58

    .line 808
    monitor-enter p0

    .line 809
    :try_start_51
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_58

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_55

    throw v0

    .line 610
    :cond_58
    :goto_58
    return-void

    .line 612
    :cond_59
    if-nez v15, :cond_5d

    .line 613
    move-object v0, v15

    goto :goto_97

    .line 615
    :cond_5d
    :try_start_5d
    invoke-static {v15}, Lcom/tds/common/reactor/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_94

    move-object/from16 v16, v0

    .line 618
    .local v16, "v":Ljava/lang/Object;, "TT;"
    move-object/from16 v11, v16

    .end local v16    # "v":Ljava/lang/Object;, "TT;"
    .local v11, "v":Ljava/lang/Object;, "TT;"
    :try_start_65
    invoke-virtual {v4, v11}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    .line 628
    goto :goto_8b

    .line 619
    :catchall_69
    move-exception v0

    move-object v12, v0

    .line 620
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_6b
    iget-boolean v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v0, :cond_84

    .line 621
    invoke-static {v12}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 622
    const/4 v2, 0x1

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 624
    invoke-virtual {v4, v12}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_94

    .line 807
    if-nez v2, :cond_83

    .line 808
    monitor-enter p0

    .line 809
    :try_start_7c
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_83

    :catchall_80
    move-exception v0

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_80

    throw v0

    .line 625
    :cond_83
    :goto_83
    return-void

    .line 627
    :cond_84
    :try_start_84
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 629
    .end local v12    # "t":Ljava/lang/Throwable;
    :goto_8b
    add-int/lit8 v6, v6, 0x1

    .line 630
    add-int/lit8 v7, v7, 0x1

    .line 631
    sub-long/2addr v13, v9

    .line 632
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    move-object v0, v15

    const-wide/16 v11, 0x0

    goto :goto_3f

    .line 807
    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "replenishMain":I
    .end local v7    # "scalarEmission":I
    .end local v8    # "unbounded":Z
    .end local v13    # "r":J
    .end local v15    # "o":Ljava/lang/Object;
    :catchall_94
    move-exception v0

    goto/16 :goto_2d3

    .line 633
    .restart local v0    # "o":Ljava/lang/Object;
    .restart local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "replenishMain":I
    .restart local v7    # "scalarEmission":I
    .restart local v8    # "unbounded":Z
    .restart local v13    # "r":J
    :cond_97
    :goto_97
    if-lez v7, :cond_a8

    .line 634
    if-eqz v8, :cond_a1

    .line 635
    const-wide v11, 0x7fffffffffffffffL

    .end local v13    # "r":J
    .local v11, "r":J
    goto :goto_a9

    .line 637
    .end local v11    # "r":J
    .restart local v13    # "r":J
    :cond_a1
    iget-object v11, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v11, v7}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v11
    :try_end_a7
    .catchall {:try_start_84 .. :try_end_a7} :catchall_94

    .end local v13    # "r":J
    .restart local v11    # "r":J
    goto :goto_a9

    .line 633
    .end local v11    # "r":J
    .restart local v13    # "r":J
    :cond_a8
    move-wide v11, v13

    .line 640
    .end local v13    # "r":J
    .restart local v11    # "r":J
    :goto_a9
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-eqz v15, :cond_ba

    if-nez v0, :cond_b2

    .line 641
    goto :goto_ba

    .line 643
    .end local v0    # "o":Ljava/lang/Object;
    .end local v7    # "scalarEmission":I
    :cond_b2
    move v0, v6

    move-wide v6, v11

    const-wide/16 v11, 0x0

    goto/16 :goto_36

    .line 601
    .end local v11    # "r":J
    .local v0, "replenishMain":I
    .local v6, "r":J
    :cond_b8
    move-wide v11, v6

    move v6, v0

    .line 652
    .end local v0    # "replenishMain":I
    .local v6, "replenishMain":I
    .restart local v11    # "r":J
    :cond_ba
    :goto_ba
    :try_start_ba
    iget-boolean v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    move v7, v0

    .line 655
    .local v7, "d":Z
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object v5, v0

    .line 657
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    move-object v13, v0

    .line 658
    .local v13, "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v0, v13
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_2d0

    move v14, v0

    .line 662
    .local v14, "n":I
    if-eqz v7, :cond_f0

    if-eqz v5, :cond_cf

    :try_start_c9
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f0

    :cond_cf
    if-nez v14, :cond_f0

    .line 663
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v9, v0

    .line 664
    .local v9, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v9, :cond_e1

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_dd

    goto :goto_e1

    .line 667
    :cond_dd
    invoke-direct/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V

    goto :goto_e4

    .line 665
    :cond_e1
    :goto_e1
    invoke-virtual {v4}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_e4
    .catchall {:try_start_c9 .. :try_end_e4} :catchall_94

    .line 669
    :goto_e4
    const/4 v2, 0x1

    .line 807
    if-nez v2, :cond_ef

    .line 808
    monitor-enter p0

    .line 809
    :try_start_e8
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_ef

    :catchall_ec
    move-exception v0

    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_e8 .. :try_end_ee} :catchall_ec

    throw v0

    .line 670
    :cond_ef
    :goto_ef
    return-void

    .line 673
    .end local v9    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_f0
    const/4 v0, 0x0

    .line 674
    .local v0, "innerCompleted":Z
    if-lez v14, :cond_286

    .line 676
    :try_start_f3
    iget-wide v9, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 677
    .local v9, "startId":J
    iget v15, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 681
    .local v15, "index":I
    if-le v14, v15, :cond_10b

    aget-object v3, v13, v15
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_2d0

    move/from16 v21, v2

    .end local v2    # "skipFinal":Z
    .local v21, "skipFinal":Z
    :try_start_fd
    iget-wide v2, v3, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_104

    goto :goto_10d

    :cond_104
    move/from16 v22, v0

    move-object/from16 v24, v5

    move/from16 v23, v6

    goto :goto_141

    .end local v21    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :cond_10b
    move/from16 v21, v2

    .line 682
    .end local v2    # "skipFinal":Z
    .restart local v21    # "skipFinal":Z
    :goto_10d
    if-gt v14, v15, :cond_110

    .line 683
    const/4 v15, 0x0

    .line 686
    :cond_110
    move v2, v15

    .line 687
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_112
    if-ge v3, v14, :cond_132

    .line 688
    move/from16 v22, v0

    .end local v0    # "innerCompleted":Z
    .local v22, "innerCompleted":Z
    aget-object v0, v13, v2

    move-object/from16 v24, v5

    move/from16 v23, v6

    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "replenishMain":I
    .local v23, "replenishMain":I
    .local v24, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-wide v5, v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    cmp-long v0, v5, v9

    if-nez v0, :cond_123

    .line 689
    goto :goto_138

    .line 692
    :cond_123
    add-int/lit8 v2, v2, 0x1

    .line 693
    if-ne v2, v14, :cond_129

    .line 694
    const/4 v0, 0x0

    move v2, v0

    .line 687
    :cond_129
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v22

    move/from16 v6, v23

    move-object/from16 v5, v24

    goto :goto_112

    .end local v22    # "innerCompleted":Z
    .end local v23    # "replenishMain":I
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v0    # "innerCompleted":Z
    .restart local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "replenishMain":I
    :cond_132
    move/from16 v22, v0

    move-object/from16 v24, v5

    move/from16 v23, v6

    .line 699
    .end local v0    # "innerCompleted":Z
    .end local v3    # "i":I
    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "replenishMain":I
    .restart local v22    # "innerCompleted":Z
    .restart local v23    # "replenishMain":I
    .restart local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_138
    move v15, v2

    .line 700
    iput v2, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 701
    aget-object v0, v13, v2

    iget-wide v5, v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    iput-wide v5, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 704
    .end local v2    # "j":I
    :goto_141
    move v0, v15

    .line 706
    .local v0, "j":I
    const/4 v2, 0x0

    move v3, v2

    move/from16 v6, v23

    move v2, v0

    .end local v0    # "j":I
    .end local v23    # "replenishMain":I
    .restart local v2    # "j":I
    .restart local v3    # "i":I
    .restart local v6    # "replenishMain":I
    :goto_147
    if-ge v3, v14, :cond_273

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_14d
    .catchall {:try_start_fd .. :try_end_14d} :catchall_29b

    if-eqz v0, :cond_160

    .line 709
    const/4 v5, 0x1

    .line 807
    .end local v21    # "skipFinal":Z
    .local v5, "skipFinal":Z
    if-nez v5, :cond_15d

    .line 808
    monitor-enter p0

    .line 809
    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "skipFinal":Z
    .local v17, "skipFinal":Z
    :try_start_156
    iput-boolean v5, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_15f

    :catchall_15a
    move-exception v0

    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_15a

    throw v0

    .line 807
    .end local v17    # "skipFinal":Z
    .restart local v5    # "skipFinal":Z
    :cond_15d
    move/from16 v17, v5

    .line 710
    .end local v5    # "skipFinal":Z
    .restart local v17    # "skipFinal":Z
    :goto_15f
    return-void

    .line 713
    .end local v17    # "skipFinal":Z
    .restart local v21    # "skipFinal":Z
    :cond_160
    :try_start_160
    aget-object v0, v13, v2

    move-object v5, v0

    .line 715
    .local v5, "is":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 717
    .local v0, "o":Ljava/lang/Object;
    :goto_164
    const/16 v23, 0x0

    move-wide/from16 v25, v11

    move/from16 v12, v23

    move-object v11, v0

    .line 718
    .end local v0    # "o":Ljava/lang/Object;
    .local v11, "o":Ljava/lang/Object;
    .local v12, "produced":I
    .local v25, "r":J
    :goto_16b
    const-wide/16 v17, 0x0

    cmp-long v0, v25, v17

    if-lez v0, :cond_1ec

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_175
    .catchall {:try_start_160 .. :try_end_175} :catchall_29b

    if-eqz v0, :cond_189

    .line 721
    const/16 v17, 0x1

    .line 807
    .end local v21    # "skipFinal":Z
    .restart local v17    # "skipFinal":Z
    if-nez v17, :cond_186

    .line 808
    monitor-enter p0

    .line 809
    move/from16 v27, v7

    const/4 v7, 0x0

    .end local v7    # "d":Z
    .local v27, "d":Z
    :try_start_17f
    iput-boolean v7, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_188

    :catchall_183
    move-exception v0

    monitor-exit p0
    :try_end_185
    .catchall {:try_start_17f .. :try_end_185} :catchall_183

    throw v0

    .line 807
    .end local v27    # "d":Z
    .restart local v7    # "d":Z
    :cond_186
    move/from16 v27, v7

    .line 722
    .end local v7    # "d":Z
    .restart local v27    # "d":Z
    :goto_188
    return-void

    .line 724
    .end local v17    # "skipFinal":Z
    .end local v27    # "d":Z
    .restart local v7    # "d":Z
    .restart local v21    # "skipFinal":Z
    :cond_189
    move/from16 v27, v7

    .end local v7    # "d":Z
    .restart local v27    # "d":Z
    :try_start_18b
    iget-object v0, v5, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    move-object v7, v0

    .line 725
    .local v7, "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    if-nez v7, :cond_195

    .line 726
    move-object/from16 v29, v4

    const-wide/16 v19, 0x1

    goto :goto_1f2

    .line 728
    :cond_195
    invoke-virtual {v7}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    .line 729
    if-nez v11, :cond_1a1

    .line 730
    move-object/from16 v29, v4

    const-wide/16 v19, 0x1

    goto :goto_1f2

    .line 732
    :cond_1a1
    invoke-static {v11}, Lcom/tds/common/reactor/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a5
    .catchall {:try_start_18b .. :try_end_1a5} :catchall_29b

    move-object/from16 v23, v0

    .line 735
    .local v23, "v":Ljava/lang/Object;, "TT;"
    move-object/from16 v28, v7

    move-object/from16 v7, v23

    .end local v23    # "v":Ljava/lang/Object;, "TT;"
    .local v7, "v":Ljava/lang/Object;, "TT;"
    .local v28, "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    :try_start_1ab
    invoke-virtual {v4, v7}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1b9

    .line 745
    nop

    .line 746
    const-wide/16 v19, 0x1

    sub-long v25, v25, v19

    .line 747
    nop

    .end local v7    # "v":Ljava/lang/Object;, "TT;"
    .end local v28    # "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    add-int/lit8 v12, v12, 0x1

    .line 748
    move/from16 v7, v27

    goto :goto_16b

    .line 736
    .restart local v7    # "v":Ljava/lang/Object;, "TT;"
    .restart local v28    # "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    :catchall_1b9
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v18, v17

    .line 737
    .local v18, "t":Ljava/lang/Throwable;
    const/16 v17, 0x1

    .line 738
    .end local v21    # "skipFinal":Z
    .restart local v17    # "skipFinal":Z
    :try_start_1c0
    invoke-static/range {v18 .. v18}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_1c3
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_1e7

    .line 740
    move-object/from16 v23, v7

    move-object/from16 v7, v18

    .end local v18    # "t":Ljava/lang/Throwable;
    .local v7, "t":Ljava/lang/Throwable;
    .restart local v23    # "v":Ljava/lang/Object;, "TT;"
    :try_start_1c7
    invoke-virtual {v4, v7}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1ca
    .catchall {:try_start_1c7 .. :try_end_1ca} :catchall_1de

    .line 742
    :try_start_1ca
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V
    :try_end_1cd
    .catchall {:try_start_1ca .. :try_end_1cd} :catchall_1e7

    .line 743
    nop

    .line 807
    if-nez v17, :cond_1db

    .line 808
    monitor-enter p0

    .line 809
    move-object/from16 v29, v4

    const/4 v4, 0x0

    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local v29, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_1d4
    iput-boolean v4, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_1dd

    :catchall_1d8
    move-exception v0

    monitor-exit p0
    :try_end_1da
    .catchall {:try_start_1d4 .. :try_end_1da} :catchall_1d8

    throw v0

    .line 807
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :cond_1db
    move-object/from16 v29, v4

    .line 744
    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :goto_1dd
    return-void

    .line 742
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :catchall_1de
    move-exception v0

    move-object/from16 v29, v4

    move-object v4, v0

    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_1e2
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 743
    nop

    .end local v17    # "skipFinal":Z
    .end local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    throw v4
    :try_end_1e7
    .catchall {:try_start_1e2 .. :try_end_1e7} :catchall_1e7

    .line 807
    .end local v2    # "j":I
    .end local v3    # "i":I
    .end local v5    # "is":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v6    # "replenishMain":I
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "unbounded":Z
    .end local v9    # "startId":J
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "produced":I
    .end local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v14    # "n":I
    .end local v15    # "index":I
    .end local v22    # "innerCompleted":Z
    .end local v23    # "v":Ljava/lang/Object;, "TT;"
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v25    # "r":J
    .end local v27    # "d":Z
    .end local v28    # "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v17    # "skipFinal":Z
    .restart local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    :catchall_1e7
    move-exception v0

    move/from16 v2, v17

    goto/16 :goto_2d3

    .line 718
    .end local v17    # "skipFinal":Z
    .restart local v2    # "j":I
    .restart local v3    # "i":I
    .restart local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .restart local v5    # "is":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .restart local v6    # "replenishMain":I
    .local v7, "d":Z
    .restart local v8    # "unbounded":Z
    .restart local v9    # "startId":J
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v12    # "produced":I
    .restart local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v14    # "n":I
    .restart local v15    # "index":I
    .restart local v21    # "skipFinal":Z
    .restart local v22    # "innerCompleted":Z
    .restart local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v25    # "r":J
    :cond_1ec
    move-object/from16 v29, v4

    move/from16 v27, v7

    const-wide/16 v19, 0x1

    .line 749
    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v7    # "d":Z
    .restart local v27    # "d":Z
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :goto_1f2
    if-lez v12, :cond_20a

    .line 750
    if-nez v8, :cond_1ff

    .line 751
    :try_start_1f6
    iget-object v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0, v12}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v30

    move-wide/from16 v25, v30

    goto :goto_204

    .line 753
    :cond_1ff
    const-wide v25, 0x7fffffffffffffffL

    .line 755
    :goto_204
    move v4, v8

    .end local v8    # "unbounded":Z
    .local v4, "unbounded":Z
    int-to-long v7, v12

    invoke-virtual {v5, v7, v8}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    goto :goto_20b

    .line 749
    .end local v4    # "unbounded":Z
    .restart local v8    # "unbounded":Z
    :cond_20a
    move v4, v8

    .line 758
    .end local v8    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    :goto_20b
    const-wide/16 v7, 0x0

    cmp-long v0, v25, v7

    if-eqz v0, :cond_21e

    if-nez v11, :cond_214

    .line 759
    goto :goto_21e

    .line 761
    .end local v12    # "produced":I
    :cond_214
    move v8, v4

    move-object v0, v11

    move-wide/from16 v11, v25

    move/from16 v7, v27

    move-object/from16 v4, v29

    goto/16 :goto_164

    .line 762
    :cond_21e
    :goto_21e
    iget-boolean v0, v5, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    move v7, v0

    .line 763
    .local v7, "innerDone":Z
    iget-object v0, v5, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    move-object v8, v0

    .line 764
    .local v8, "innerQueue":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    if-eqz v7, :cond_254

    if-eqz v8, :cond_232

    invoke-virtual {v8}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22f

    goto :goto_232

    :cond_22f
    move/from16 v28, v4

    goto :goto_256

    .line 765
    :cond_232
    :goto_232
    invoke-virtual {v1, v5}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->removeInner(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_239
    .catchall {:try_start_1f6 .. :try_end_239} :catchall_29b

    if-eqz v0, :cond_24c

    .line 767
    const/4 v12, 0x1

    .line 807
    .end local v21    # "skipFinal":Z
    .local v12, "skipFinal":Z
    if-nez v12, :cond_249

    .line 808
    monitor-enter p0

    .line 809
    move/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "unbounded":Z
    .local v28, "unbounded":Z
    :try_start_242
    iput-boolean v4, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_24b

    :catchall_246
    move-exception v0

    monitor-exit p0
    :try_end_248
    .catchall {:try_start_242 .. :try_end_248} :catchall_246

    throw v0

    .line 807
    .end local v28    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    :cond_249
    move/from16 v28, v4

    .line 768
    .end local v4    # "unbounded":Z
    .restart local v28    # "unbounded":Z
    :goto_24b
    return-void

    .line 770
    .end local v12    # "skipFinal":Z
    .end local v28    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    .restart local v21    # "skipFinal":Z
    :cond_24c
    move/from16 v28, v4

    .end local v4    # "unbounded":Z
    .restart local v28    # "unbounded":Z
    add-int/lit8 v6, v6, 0x1

    .line 771
    const/4 v0, 0x1

    move/from16 v22, v0

    .end local v22    # "innerCompleted":Z
    .local v0, "innerCompleted":Z
    goto :goto_256

    .line 764
    .end local v0    # "innerCompleted":Z
    .end local v28    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    .restart local v22    # "innerCompleted":Z
    :cond_254
    move/from16 v28, v4

    .line 774
    .end local v4    # "unbounded":Z
    .restart local v28    # "unbounded":Z
    :goto_256
    const-wide/16 v17, 0x0

    cmp-long v0, v25, v17

    if-nez v0, :cond_261

    .line 775
    move/from16 v0, v22

    move-wide/from16 v11, v25

    goto :goto_27b

    .line 779
    :cond_261
    add-int/lit8 v2, v2, 0x1

    .line 780
    if-ne v2, v14, :cond_267

    .line 781
    const/4 v0, 0x0

    move v2, v0

    .line 706
    .end local v5    # "is":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v7    # "innerDone":Z
    .end local v8    # "innerQueue":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    .end local v11    # "o":Ljava/lang/Object;
    :cond_267
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, v25

    move/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v4, v29

    goto/16 :goto_147

    .end local v25    # "r":J
    .end local v27    # "d":Z
    .end local v28    # "unbounded":Z
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local v4, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local v7, "d":Z
    .local v8, "unbounded":Z
    .local v11, "r":J
    :cond_273
    move-object/from16 v29, v4

    move/from16 v27, v7

    move/from16 v28, v8

    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v7    # "d":Z
    .end local v8    # "unbounded":Z
    .restart local v27    # "d":Z
    .restart local v28    # "unbounded":Z
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    move/from16 v0, v22

    .line 785
    .end local v3    # "i":I
    .end local v22    # "innerCompleted":Z
    .restart local v0    # "innerCompleted":Z
    :goto_27b
    :try_start_27b
    iput v2, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 786
    aget-object v3, v13, v2

    iget-wide v3, v3, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    iput-wide v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    move/from16 v22, v0

    goto :goto_294

    .line 674
    .end local v9    # "startId":J
    .end local v15    # "index":I
    .end local v21    # "skipFinal":Z
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "d":Z
    .end local v28    # "unbounded":Z
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local v2, "skipFinal":Z
    .restart local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local v5, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v7    # "d":Z
    .restart local v8    # "unbounded":Z
    :cond_286
    move/from16 v22, v0

    move/from16 v21, v2

    move-object/from16 v29, v4

    move-object/from16 v24, v5

    move/from16 v23, v6

    move/from16 v27, v7

    move/from16 v28, v8

    .line 789
    .end local v0    # "innerCompleted":Z
    .end local v2    # "skipFinal":Z
    .end local v4    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v7    # "d":Z
    .end local v8    # "unbounded":Z
    .restart local v21    # "skipFinal":Z
    .restart local v22    # "innerCompleted":Z
    .restart local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "d":Z
    .restart local v28    # "unbounded":Z
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :goto_294
    if-lez v6, :cond_29f

    .line 790
    int-to-long v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    goto :goto_29f

    .line 807
    .end local v6    # "replenishMain":I
    .end local v11    # "r":J
    .end local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v14    # "n":I
    .end local v22    # "innerCompleted":Z
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "d":Z
    .end local v28    # "unbounded":Z
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :catchall_29b
    move-exception v0

    move/from16 v2, v21

    goto :goto_2d3

    .line 793
    .restart local v6    # "replenishMain":I
    .restart local v11    # "r":J
    .restart local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v14    # "n":I
    .restart local v22    # "innerCompleted":Z
    .restart local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "d":Z
    .restart local v28    # "unbounded":Z
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :cond_29f
    :goto_29f
    if-eqz v22, :cond_2a8

    .line 794
    move/from16 v2, v21

    move-object/from16 v4, v29

    const/4 v3, 0x0

    goto/16 :goto_7

    .line 797
    :cond_2a8
    monitor-enter p0
    :try_end_2a9
    .catchall {:try_start_27b .. :try_end_2a9} :catchall_29b

    .line 798
    :try_start_2a9
    iget-boolean v0, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z
    :try_end_2ab
    .catchall {:try_start_2a9 .. :try_end_2ab} :catchall_2c9

    if-nez v0, :cond_2be

    .line 799
    const/4 v2, 0x1

    .line 800
    .end local v21    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    const/4 v3, 0x0

    :try_start_2af
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0
    :try_end_2b2
    .catchall {:try_start_2af .. :try_end_2b2} :catchall_2ce

    .line 807
    .end local v6    # "replenishMain":I
    .end local v11    # "r":J
    .end local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v14    # "n":I
    .end local v22    # "innerCompleted":Z
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "d":Z
    .end local v28    # "unbounded":Z
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    if-nez v2, :cond_2bd

    .line 808
    monitor-enter p0

    .line 809
    const/4 v3, 0x0

    :try_start_2b6
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_2bd

    :catchall_2ba
    move-exception v0

    monitor-exit p0
    :try_end_2bc
    .catchall {:try_start_2b6 .. :try_end_2bc} :catchall_2ba

    throw v0

    .line 813
    :cond_2bd
    :goto_2bd
    return-void

    .line 803
    .end local v2    # "skipFinal":Z
    .restart local v6    # "replenishMain":I
    .restart local v11    # "r":J
    .restart local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v14    # "n":I
    .restart local v21    # "skipFinal":Z
    .restart local v22    # "innerCompleted":Z
    .restart local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "d":Z
    .restart local v28    # "unbounded":Z
    .restart local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :cond_2be
    const/4 v2, 0x0

    :try_start_2bf
    iput-boolean v2, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 804
    monitor-exit p0
    :try_end_2c2
    .catchall {:try_start_2bf .. :try_end_2c2} :catchall_2c9

    .line 805
    .end local v6    # "replenishMain":I
    .end local v11    # "r":J
    .end local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v14    # "n":I
    .end local v22    # "innerCompleted":Z
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "d":Z
    .end local v28    # "unbounded":Z
    move/from16 v2, v21

    move-object/from16 v4, v29

    const/4 v3, 0x0

    goto/16 :goto_7

    .line 804
    .restart local v6    # "replenishMain":I
    .restart local v11    # "r":J
    .restart local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v14    # "n":I
    .restart local v22    # "innerCompleted":Z
    .restart local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "d":Z
    .restart local v28    # "unbounded":Z
    :catchall_2c9
    move-exception v0

    move/from16 v2, v21

    .end local v21    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :goto_2cc
    :try_start_2cc
    monitor-exit p0
    :try_end_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_2ce

    .end local v2    # "skipFinal":Z
    .end local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    :try_start_2cd
    throw v0
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_94

    .restart local v2    # "skipFinal":Z
    .restart local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    :catchall_2ce
    move-exception v0

    goto :goto_2cc

    .line 807
    .end local v6    # "replenishMain":I
    .end local v11    # "r":J
    .end local v13    # "inner":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v14    # "n":I
    .end local v22    # "innerCompleted":Z
    .end local v24    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "d":Z
    .end local v28    # "unbounded":Z
    .end local v29    # "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :catchall_2d0
    move-exception v0

    move/from16 v21, v2

    :goto_2d3
    if-nez v2, :cond_2de

    .line 808
    monitor-enter p0

    .line 809
    const/4 v3, 0x0

    :try_start_2d7
    iput-boolean v3, v1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 810
    monitor-exit p0

    goto :goto_2de

    :catchall_2db
    move-exception v0

    monitor-exit p0
    :try_end_2dd
    .catchall {:try_start_2d7 .. :try_end_2dd} :catchall_2db

    throw v0

    .line 812
    :cond_2de
    :goto_2de
    throw v0
.end method

.method protected emitScalar(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V
    .registers 10
    .param p3, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;J)V"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 406
    .local v0, "skipFinal":Z
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v2, p2}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_8

    .line 416
    goto :goto_29

    .line 407
    :catchall_8
    move-exception v2

    .line 408
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_9
    iget-boolean v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v3, :cond_22

    .line 409
    invoke-static {v2}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 410
    const/4 v0, 0x1

    .line 411
    invoke-virtual {p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 412
    invoke-virtual {p1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_6a

    .line 431
    if-nez v0, :cond_21

    .line 432
    monitor-enter p0

    .line 433
    :try_start_1a
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 434
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v1

    .line 413
    :cond_21
    :goto_21
    return-void

    .line 415
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 417
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_29
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p3, v2

    if-eqz v2, :cond_38

    .line 418
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 420
    :cond_38
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 422
    monitor-enter p0
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_6a

    .line 423
    const/4 v2, 0x1

    .line 424
    .end local v0    # "skipFinal":Z
    .local v2, "skipFinal":Z
    :try_start_3f
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v0, :cond_51

    .line 425
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 426
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_62

    .line 431
    if-nez v2, :cond_50

    .line 432
    monitor-enter p0

    .line 433
    :try_start_49
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 434
    monitor-exit p0

    goto :goto_50

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v0

    .line 426
    :cond_50
    :goto_50
    return-void

    .line 428
    :cond_51
    :try_start_51
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 429
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_62

    .line 431
    if-nez v2, :cond_5e

    .line 432
    monitor-enter p0

    .line 433
    :try_start_57
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 434
    monitor-exit p0

    goto :goto_5e

    :catchall_5b
    move-exception v0

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5b

    throw v0

    .line 444
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    .line 445
    return-void

    .line 429
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    .end local v2    # "skipFinal":Z
    .end local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .end local p1    # "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    .end local p3    # "r":J
    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    .line 431
    .restart local v2    # "skipFinal":Z
    .restart local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .restart local p1    # "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    .restart local p3    # "r":J
    :catchall_65
    move-exception v0

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_6b

    .end local v2    # "skipFinal":Z
    .restart local v0    # "skipFinal":Z
    :catchall_6a
    move-exception v2

    :goto_6b
    if-nez v0, :cond_75

    .line 432
    monitor-enter p0

    .line 433
    :try_start_6e
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 434
    monitor-exit p0

    goto :goto_75

    :catchall_72
    move-exception v1

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_72

    throw v1

    .line 436
    :cond_75
    :goto_75
    throw v2
.end method

.method protected emitScalar(Ljava/lang/Object;J)V
    .registers 9
    .param p2, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 516
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 519
    .local v0, "skipFinal":Z
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v2, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_8

    .line 529
    goto :goto_29

    .line 520
    :catchall_8
    move-exception v2

    .line 521
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_9
    iget-boolean v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v3, :cond_22

    .line 522
    invoke-static {v2}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 523
    const/4 v0, 0x1

    .line 524
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 525
    invoke-virtual {p0, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_73

    .line 552
    if-nez v0, :cond_21

    .line 553
    monitor-enter p0

    .line 554
    :try_start_1a
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 555
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v1

    .line 526
    :cond_21
    :goto_21
    return-void

    .line 528
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 530
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_29
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    .line 531
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 534
    :cond_38
    iget v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    add-int/2addr v2, v3

    .line 535
    .local v2, "produced":I
    iget v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    if-ne v2, v3, :cond_46

    .line 536
    iput v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 537
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    goto :goto_48

    .line 539
    :cond_46
    iput v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 543
    :goto_48
    monitor-enter p0
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_73

    .line 544
    const/4 v3, 0x1

    .line 545
    .end local v0    # "skipFinal":Z
    .local v3, "skipFinal":Z
    :try_start_4a
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v0, :cond_5c

    .line 546
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 547
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_6d

    .line 552
    if-nez v3, :cond_5b

    .line 553
    monitor-enter p0

    .line 554
    :try_start_54
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 555
    monitor-exit p0

    goto :goto_5b

    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v0

    .line 547
    :cond_5b
    :goto_5b
    return-void

    .line 549
    :cond_5c
    :try_start_5c
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 550
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6d

    .line 552
    .end local v2    # "produced":I
    if-nez v3, :cond_69

    .line 553
    monitor-enter p0

    .line 554
    :try_start_62
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 555
    monitor-exit p0

    goto :goto_69

    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v0

    .line 565
    :cond_69
    :goto_69
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    .line 566
    return-void

    .line 550
    .restart local v2    # "produced":I
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    .end local v3    # "skipFinal":Z
    .end local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    .end local p2    # "r":J
    :try_start_6f
    throw v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 552
    .end local v2    # "produced":I
    .restart local v3    # "skipFinal":Z
    .restart local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    .restart local p2    # "r":J
    :catchall_70
    move-exception v2

    move v0, v3

    goto :goto_74

    .end local v3    # "skipFinal":Z
    .restart local v0    # "skipFinal":Z
    :catchall_73
    move-exception v2

    :goto_74
    if-nez v0, :cond_7e

    .line 553
    monitor-enter p0

    .line 554
    :try_start_77
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 555
    monitor-exit p0

    goto :goto_7e

    :catchall_7b
    move-exception v1

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7b

    throw v1

    .line 557
    :cond_7e
    :goto_7e
    throw v2
.end method

.method getOrCreateComposite()Lcom/tds/common/reactor/subscriptions/CompositeSubscription;
    .registers 4

    .line 229
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 230
    .local v0, "c":Lcom/tds/common/reactor/subscriptions/CompositeSubscription;
    if-nez v0, :cond_1e

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "shouldAdd":Z
    monitor-enter p0

    .line 233
    :try_start_6
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    move-object v0, v2

    .line 234
    if-nez v0, :cond_14

    .line 235
    new-instance v2, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;-><init>()V

    move-object v0, v2

    .line 236
    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 237
    const/4 v1, 0x1

    .line 239
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1b

    .line 240
    if-eqz v1, :cond_1e

    .line 241
    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    goto :goto_1e

    .line 239
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2

    .line 244
    .end local v1    # "shouldAdd":Z
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method getOrCreateErrorQueue()Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 216
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_17

    .line 217
    monitor-enter p0

    .line 218
    :try_start_5
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v0, v1

    .line 219
    if-nez v0, :cond_12

    .line 220
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object v0, v1

    .line 221
    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 223
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 225
    :cond_17
    :goto_17
    return-object v0
.end method

.method public onCompleted()V
    .registers 2

    .line 290
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 291
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 292
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 283
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 285
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 286
    return-void
.end method

.method public onNext(Lcom/tds/common/reactor/Observable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    if-nez p1, :cond_3

    .line 250
    return-void

    .line 252
    :cond_3
    invoke-static {}, Lcom/tds/common/reactor/Observable;->empty()Lcom/tds/common/reactor/Observable;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 253
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitEmpty()V

    goto :goto_22

    .line 255
    :cond_d
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    iget-wide v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;J)V

    .line 256
    .local v0, "inner":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->addInner(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 257
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 258
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 260
    .end local v0    # "inner":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    :goto_22
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 159
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Observable;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lcom/tds/common/reactor/Observable;)V

    return-void
.end method

.method protected queueScalar(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    .line 384
    .local v0, "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    if-nez v0, :cond_d

    .line 385
    invoke-static {}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->getSpscInstance()Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    move-result-object v0

    .line 386
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 387
    iput-object v0, p1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    .line 390
    :cond_d
    :try_start_d
    invoke-static {p2}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_14
    .catch Lcom/tds/common/reactor/exceptions/MissingBackpressureException; {:try_start_d .. :try_end_14} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_2a

    .line 394
    :catch_15
    move-exception v1

    .line 395
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 396
    invoke-virtual {p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 397
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 391
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_23
    move-exception v1

    .line 392
    .local v1, "ex":Lcom/tds/common/reactor/exceptions/MissingBackpressureException;
    invoke-virtual {p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 393
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 399
    .end local v1    # "ex":Lcom/tds/common/reactor/exceptions/MissingBackpressureException;
    :goto_2a
    nop

    .line 400
    :cond_2b
    :goto_2b
    return-void
.end method

.method protected queueScalar(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 494
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 495
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_29

    .line 496
    iget v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 497
    .local v1, "mc":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_14

    .line 498
    new-instance v2, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    move-object v0, v2

    goto :goto_27

    .line 500
    :cond_14
    invoke-static {v1}, Lcom/tds/common/reactor/internal/util/unsafe/Pow2;->isPowerOfTwo(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 502
    new-instance v2, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v2, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    move-object v0, v2

    goto :goto_27

    .line 504
    :cond_21
    new-instance v2, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;

    invoke-direct {v2, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    move-object v0, v2

    .line 507
    :goto_27
    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 509
    .end local v1    # "mc":I
    :cond_29
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 510
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 511
    new-instance v1, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;

    invoke-direct {v1}, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v1, p1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 513
    :cond_42
    return-void
.end method

.method removeInner(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v0, p1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    .line 308
    .local v0, "q":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    if-eqz v0, :cond_7

    .line 309
    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->release()V

    .line 313
    :cond_7
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p1}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->remove(Lcom/tds/common/reactor/Subscription;)V

    .line 314
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_f
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 316
    .local v2, "a":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v3, v2

    .line 317
    .local v3, "n":I
    const/4 v4, -0x1

    .line 319
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_23

    .line 320
    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 321
    move v4, v5

    .line 322
    goto :goto_23

    .line 319
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 325
    .end local v5    # "i":I
    :cond_23
    :goto_23
    if-gez v4, :cond_27

    .line 326
    monitor-exit v1

    return-void

    .line 328
    :cond_27
    const/4 v5, 0x1

    if-ne v3, v5, :cond_30

    .line 329
    sget-object v5, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v5, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 330
    monitor-exit v1

    return-void

    .line 332
    :cond_30
    add-int/lit8 v6, v3, -0x1

    new-array v6, v6, [Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 333
    .local v6, "b":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v3, v4

    sub-int/2addr v8, v5

    invoke-static {v2, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iput-object v6, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;

    .line 336
    .end local v2    # "a":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v3    # "n":I
    .end local v4    # "j":I
    .end local v6    # "b":[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "[Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_44

    throw v2
.end method

.method public requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 448
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 449
    return-void
.end method

.method tryEmit(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 352
    .local v0, "success":Z
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v1

    .line 353
    .local v1, "r":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_26

    .line 354
    monitor-enter p0

    .line 356
    :try_start_e
    iget-object v5, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v5}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v5

    move-wide v1, v5

    .line 357
    iget-boolean v5, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v5, :cond_21

    cmp-long v3, v1, v3

    if-eqz v3, :cond_21

    .line 358
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_21
    monitor-exit p0

    goto :goto_26

    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v3

    .line 363
    :cond_26
    :goto_26
    if-eqz v0, :cond_3e

    .line 364
    iget-object v3, p1, Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    .line 365
    .local v3, "subscriberQueue":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_3a

    .line 368
    :cond_33
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_3d

    .line 366
    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V

    .line 371
    .end local v3    # "subscriberQueue":Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    :goto_3d
    goto :goto_44

    .line 372
    :cond_3e
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lcom/tds/common/reactor/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 375
    :goto_44
    return-void
.end method

.method tryEmit(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 462
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 463
    .local v0, "success":Z
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v1

    .line 464
    .local v1, "r":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_26

    .line 465
    monitor-enter p0

    .line 467
    :try_start_e
    iget-object v5, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v5}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v5

    move-wide v1, v5

    .line 468
    iget-boolean v5, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v5, :cond_21

    cmp-long v3, v1, v3

    if-eqz v3, :cond_21

    .line 469
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 470
    const/4 v0, 0x1

    .line 472
    :cond_21
    monitor-exit p0

    goto :goto_26

    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v3

    .line 474
    :cond_26
    :goto_26
    if-eqz v0, :cond_3e

    .line 475
    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 476
    .local v3, "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v3, :cond_3a

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_3a

    .line 479
    :cond_33
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_3d

    .line 477
    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Ljava/lang/Object;J)V

    .line 482
    .end local v3    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_3d
    goto :goto_44

    .line 483
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 486
    :goto_44
    return-void
.end method
