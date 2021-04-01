.class final Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeReduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "reducer":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    .line 63
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->reducer:Lrx/functions/Func2;

    .line 64
    sget-object v0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 65
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->request(J)V

    .line 66
    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    const-wide/16 v2, 0x0

    .line 103
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 104
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

    .line 106
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2b

    .line 107
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->request(J)V

    .line 109
    :cond_2b
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 94
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 95
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 100
    :goto_10
    return-void

    .line 98
    :cond_11
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 72
    .local v1, "o":Ljava/lang/Object;
    sget-object v2, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v1, v2, :cond_9

    .line 73
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 83
    :goto_8
    return-void

    .line 76
    :cond_9
    :try_start_9
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->reducer:Lrx/functions/Func2;

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_8

    .line 77
    :catch_12
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->unsubscribe()V

    .line 80
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
