.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromArray.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromArrayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/tds/common/reactor/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x310c1171070674b3L


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final child:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field index:I


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Lcom/tds/common/reactor/Subscriber;

    .line 34
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 7

    .line 55
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Lcom/tds/common/reactor/Subscriber;

    .line 57
    .local v0, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 58
    .local v4, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 59
    return-void

    .line 62
    :cond_11
    invoke-virtual {v0, v4}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 57
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 65
    :cond_17
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 66
    return-void

    .line 68
    :cond_1e
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 69
    return-void
.end method

.method public request(J)V
    .registers 7
    .param p1, "n"    # J

    .line 39
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2b

    .line 42
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1b

    .line 43
    invoke-static {p0, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_2a

    .line 44
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->fastPath()V

    goto :goto_2a

    .line 47
    :cond_1b
    cmp-long v2, p1, v0

    if-eqz v2, :cond_2a

    .line 48
    invoke-static {p0, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_2a

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->slowPath(J)V

    .line 52
    :cond_2a
    :goto_2a
    return-void

    .line 40
    :cond_2b
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

.method slowPath(J)V
    .registers 13
    .param p1, "r"    # J

    .line 72
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Lcom/tds/common/reactor/Subscriber;

    .line 73
    .local v0, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .line 74
    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    .line 76
    .local v2, "n":I
    const-wide/16 v3, 0x0

    .line 77
    .local v3, "e":J
    iget v5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->index:I

    .line 81
    .local v5, "i":I
    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-eqz v8, :cond_30

    if-eq v5, v2, :cond_30

    .line 82
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 83
    return-void

    .line 86
    :cond_18
    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 90
    if-ne v5, v2, :cond_2b

    .line 91
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 92
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 94
    :cond_2a
    return-void

    .line 97
    :cond_2b
    const-wide/16 v6, 0x1

    sub-long/2addr p1, v6

    .line 98
    sub-long/2addr v3, v6

    goto :goto_9

    .line 101
    :cond_30
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->get()J

    move-result-wide v8

    add-long p1, v8, v3

    .line 103
    cmp-long v8, p1, v6

    if-nez v8, :cond_48

    .line 104
    iput v5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->index:I

    .line 105
    invoke-virtual {p0, v3, v4}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromArray$FromArrayProducer;->addAndGet(J)J

    move-result-wide p1

    .line 106
    cmp-long v6, p1, v6

    if-nez v6, :cond_45

    .line 107
    return-void

    .line 109
    :cond_45
    const-wide/16 v3, 0x0

    goto :goto_9

    .line 103
    :cond_48
    goto :goto_9
.end method
