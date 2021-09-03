.class final Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarAsyncProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/tds/common/reactor/Producer;",
        "Lcom/tds/common/reactor/functions/Action0;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223a1f24fb024573L


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onSchedule:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;TT;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "onSchedule":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 184
    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    .line 185
    iput-object p3, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->onSchedule:Lcom/tds/common/reactor/functions/Func1;

    .line 186
    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 200
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 201
    .local v0, "a":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 202
    return-void

    .line 204
    :cond_9
    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    .line 206
    .local v1, "v":Ljava/lang/Object;, "TT;"
    :try_start_b
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1a

    .line 210
    nop

    .line 211
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 212
    return-void

    .line 214
    :cond_16
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 215
    return-void

    .line 207
    :catchall_1a
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0, v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 190
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_20

    .line 193
    cmp-long v0, p1, v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 194
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lcom/tds/common/reactor/Subscriber;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->onSchedule:Lcom/tds/common/reactor/functions/Func1;

    invoke-interface {v1, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/Subscription;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 196
    :cond_1f
    return-void

    .line 191
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 219
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScalarAsyncProducer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
