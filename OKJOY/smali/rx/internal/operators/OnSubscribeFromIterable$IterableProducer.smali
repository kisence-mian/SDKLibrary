.class final Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IterableProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7928e15851eba4daL


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 75
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 76
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 77
    return-void
.end method


# virtual methods
.method fastpath()V
    .registers 7

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 157
    .local v3, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 160
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_4
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 192
    :cond_a
    :goto_a
    return-void

    .line 167
    :cond_b
    :try_start_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_28

    move-result-object v4

    .line 173
    .local v4, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_a

    .line 182
    :try_start_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_2d

    move-result v0

    .line 188
    .local v0, "b":Z
    if-nez v0, :cond_4

    .line 189
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_a

    .line 190
    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_a

    .line 168
    .end local v0    # "b":Z
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :catch_28
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_a

    .line 183
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "value":Ljava/lang/Object;, "TT;"
    :catch_2d
    move-exception v1

    .line 184
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_a
.end method

.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    .line 92
    :cond_f
    :goto_f
    return-void

    .line 85
    :cond_10
    cmp-long v0, p1, v4

    if-nez v0, :cond_1e

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->fastpath()V

    goto :goto_f

    .line 88
    :cond_1e
    cmp-long v0, p1, v2

    if-lez v0, :cond_f

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 89
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->slowpath(J)V

    goto :goto_f
.end method

.method slowpath(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 97
    .local v5, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 99
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    move-wide v6, p1

    .line 100
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "e":J
    :cond_7
    :goto_7
    cmp-long v9, v2, v6

    if-eqz v9, :cond_3d

    .line 104
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 152
    :cond_11
    :goto_11
    return-void

    .line 111
    :cond_12
    :try_start_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_2f

    move-result-object v8

    .line 117
    .local v8, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_11

    .line 126
    :try_start_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_34

    move-result v0

    .line 132
    .local v0, "b":Z
    if-nez v0, :cond_39

    .line 133
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_11

    .line 134
    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_11

    .line 112
    .end local v0    # "b":Z
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    :catch_2f
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_11

    .line 127
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "value":Ljava/lang/Object;, "TT;"
    :catch_34
    move-exception v1

    .line 128
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_11

    .line 139
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_39
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 140
    goto :goto_7

    .line 142
    .end local v0    # "b":Z
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    :cond_3d
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v6

    .line 143
    cmp-long v9, v2, v6

    if-nez v9, :cond_7

    .line 144
    invoke-static {p0, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v6

    .line 145
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_11

    .line 148
    const-wide/16 v2, 0x0

    goto :goto_7
.end method
