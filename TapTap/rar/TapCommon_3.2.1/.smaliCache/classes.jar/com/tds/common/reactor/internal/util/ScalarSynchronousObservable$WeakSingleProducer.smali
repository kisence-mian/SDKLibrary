.class final Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakSingleProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Producer;"
    }
.end annotation


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field once:Z

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 261
    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 266
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    if-eqz v0, :cond_5

    .line 267
    return-void

    .line 269
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_32

    .line 272
    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 273
    return-void

    .line 275
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    .line 276
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 277
    .local v0, "a":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 278
    return-void

    .line 280
    :cond_1c
    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 282
    .local v1, "v":Ljava/lang/Object;, "TT;"
    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2d

    .line 286
    nop

    .line 288
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 289
    return-void

    .line 291
    :cond_29
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 292
    return-void

    .line 283
    :catchall_2d
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0, v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 285
    return-void

    .line 270
    .end local v0    # "a":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
