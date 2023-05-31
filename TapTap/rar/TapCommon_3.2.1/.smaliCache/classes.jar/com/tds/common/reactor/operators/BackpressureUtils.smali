.class public final Lcom/tds/common/reactor/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# static fields
.field static final COMPLETED_MASK:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCap(JJ)J
    .registers 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 89
    add-long v0, p0, p2

    .line 90
    .local v0, "u":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    .line 93
    :cond_d
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 8
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 59
    .local v0, "current":J
    invoke-static {v0, v1, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    .line 60
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 61
    return-wide v0

    .line 63
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_f
    goto :goto_0
.end method

.method public static multiplyCap(JJ)J
    .registers 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 73
    mul-long v0, p0, p2

    .line 74
    .local v0, "u":J
    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 75
    cmp-long v2, p2, v4

    if-eqz v2, :cond_1c

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_1c

    .line 76
    const-wide v0, 0x7fffffffffffffffL

    .line 79
    :cond_1c
    return-wide v0
.end method

.method public static postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 120
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/internal/util/UtilityFunctions;->identity()Lcom/tds/common/reactor/functions/Func1;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/tds/common/reactor/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V

    .line 121
    return-void
.end method

.method public static postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 12
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 174
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    .local p3, "exitTransform":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+TR;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 177
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f

    .line 178
    return-void

    .line 182
    :cond_f
    or-long/2addr v2, v0

    .line 184
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 187
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1d

    .line 189
    invoke-static {p0, p1, p2, p3}, Lcom/tds/common/reactor/operators/BackpressureUtils;->postCompleteDrain(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V

    .line 191
    :cond_1d
    return-void

    .line 193
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_1e
    goto :goto_0
.end method

.method static postCompleteDrain(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 13
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 267
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    .local p3, "exitTransform":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+TR;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 270
    .local v0, "r":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    .line 272
    :goto_d
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 273
    return-void

    .line 276
    :cond_14
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 278
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1e

    .line 279
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 280
    return-void

    .line 283
    :cond_1e
    invoke-interface {p3, v2}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 284
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_d

    .line 294
    :cond_26
    const-wide/high16 v4, -0x8000000000000000L

    .line 309
    .local v4, "e":J
    :goto_28
    cmp-long v6, v4, v0

    if-eqz v6, :cond_48

    .line 310
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 311
    return-void

    .line 314
    :cond_33
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 316
    .local v6, "v":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_3d

    .line 317
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 318
    return-void

    .line 321
    :cond_3d
    invoke-interface {p3, v6}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 323
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    .line 324
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_28

    .line 332
    :cond_48
    cmp-long v6, v4, v0

    if-nez v6, :cond_5d

    .line 333
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 334
    return-void

    .line 336
    :cond_53
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 337
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 338
    return-void

    .line 346
    :cond_5d
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 348
    cmp-long v6, v0, v4

    if-nez v6, :cond_76

    .line 355
    and-long v6, v4, v2

    neg-long v6, v6

    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 357
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v0, v6

    if-nez v6, :cond_73

    .line 358
    return-void

    .line 361
    :cond_73
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_28

    .line 348
    :cond_76
    goto :goto_28
.end method

.method public static postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lcom/tds/common/reactor/Subscriber;)Z
    .registers 11
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J",
            "Ljava/util/Queue<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 143
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p4, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-static {}, Lcom/tds/common/reactor/internal/util/UtilityFunctions;->identity()Lcom/tds/common/reactor/functions/Func1;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tds/common/reactor/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)Z

    move-result v0

    return v0
.end method

.method public static postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)Z
    .registers 24
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J",
            "Ljava/util/Queue<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;)Z"
        }
    .end annotation

    .line 219
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p4, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    .local p5, "exitTransform":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+TR;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5a

    .line 222
    cmp-long v5, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    if-nez v5, :cond_1e

    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v3, v8, v3

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v6, v7

    :goto_1d
    return v6

    .line 227
    :cond_1e
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 230
    .local v10, "r":J
    and-long v12, v10, v8

    .line 232
    .local v12, "c":J
    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v14, v10

    .line 236
    .local v14, "u":J
    invoke-static {v14, v15, v1, v2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v16

    .line 239
    .local v16, "v":J
    or-long v3, v16, v12

    .line 241
    .end local v16    # "v":J
    .local v3, "v":J
    invoke-virtual {v0, v10, v11, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 244
    cmp-long v5, v10, v8

    if-nez v5, :cond_44

    .line 245
    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static {v0, v5, v8, v9}, Lcom/tds/common/reactor/operators/BackpressureUtils;->postCompleteDrain(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V

    .line 246
    return v7

    .line 249
    :cond_44
    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_51

    goto :goto_52

    :cond_51
    move v6, v7

    :goto_52
    return v6

    .line 241
    :cond_53
    move-object/from16 v5, p3

    const-wide/16 v16, 0x0

    .line 251
    .end local v3    # "v":J
    .end local v10    # "r":J
    .end local v12    # "c":J
    .end local v14    # "u":J
    move-wide/from16 v3, v16

    goto :goto_1e

    .line 220
    :cond_5a
    move-object/from16 v5, p3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n >= 0 required but it was "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static produced(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 10
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .line 376
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 377
    .local v0, "current":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 378
    return-wide v2

    .line 380
    :cond_e
    sub-long v2, v0, p1

    .line 381
    .local v2, "next":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1e

    .line 384
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 385
    return-wide v2

    .line 387
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_1d
    goto :goto_0

    .line 382
    .restart local v0    # "current":J
    .restart local v2    # "next":J
    :cond_1e
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced than requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static validate(J)Z
    .registers 5
    .param p0, "n"    # J

    .line 397
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_e

    .line 400
    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 398
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
