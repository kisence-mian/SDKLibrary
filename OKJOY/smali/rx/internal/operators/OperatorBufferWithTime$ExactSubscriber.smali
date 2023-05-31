.class final Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field chunk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final inner:Lrx/Scheduler$Worker;

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithTime;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 223
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    .line 224
    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 226
    return-void
.end method


# virtual methods
.method emit()V
    .registers 4

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    monitor-enter p0

    .line 291
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v2, :cond_7

    .line 292
    monitor-exit p0

    .line 302
    :goto_6
    return-void

    .line 294
    :cond_7
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 295
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 296
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    .line 298
    :try_start_11
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_6

    .line 299
    :catch_17
    move-exception v0

    .line 300
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_6

    .line 296
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 262
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 264
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_26

    .line 265
    :try_start_6
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v2, :cond_c

    .line 266
    monitor-exit p0

    .line 279
    :goto_b
    return-void

    .line 268
    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    .line 269
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 270
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 271
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_23

    .line 272
    :try_start_15
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_26

    .line 277
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 278
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->unsubscribe()V

    goto :goto_b

    .line 271
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v2
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_26} :catch_26

    .line 273
    :catch_26
    move-exception v0

    .line 274
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    monitor-enter p0

    .line 249
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 250
    monitor-exit p0

    .line 257
    :goto_6
    return-void

    .line 252
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 254
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    .line 255
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 256
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->unsubscribe()V

    goto :goto_6

    .line 254
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 231
    .local v0, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 232
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v1, :cond_8

    .line 233
    monitor-exit p0

    .line 244
    :cond_7
    :goto_7
    return-void

    .line 235
    :cond_8
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    if-ne v1, v2, :cond_22

    .line 237
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 240
    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_2b

    .line 241
    if-eqz v0, :cond_7

    .line 242
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_7

    .line 240
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method scheduleExact()V
    .registers 8

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 287
    return-void
.end method
