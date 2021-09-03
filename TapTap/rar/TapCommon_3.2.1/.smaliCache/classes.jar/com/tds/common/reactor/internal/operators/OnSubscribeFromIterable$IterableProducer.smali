.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable;
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
        "Lcom/tds/common/reactor/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7928e15851eba4daL


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final o:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    .local p1, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lcom/tds/common/reactor/Subscriber;

    .line 53
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 54
    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 6

    .line 133
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lcom/tds/common/reactor/Subscriber;

    .line 134
    .local v0, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 137
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :goto_4
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 138
    return-void

    .line 144
    :cond_b
    :try_start_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_31

    .line 148
    .local v2, "value":Ljava/lang/Object;, "TT;"
    nop

    .line 150
    invoke-virtual {v0, v2}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 153
    return-void

    .line 159
    :cond_1a
    :try_start_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2c

    .line 163
    .local v3, "b":Z
    nop

    .line 165
    if-nez v3, :cond_2b

    .line 166
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 167
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 169
    :cond_2a
    return-void

    .line 171
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    .end local v3    # "b":Z
    :cond_2b
    goto :goto_4

    .line 160
    .restart local v2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_2c
    move-exception v3

    .line 161
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3, v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 162
    return-void

    .line 145
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_31
    move-exception v2

    .line 146
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 147
    return-void
.end method

.method public request(J)V
    .registers 9
    .param p1, "n"    # J

    .line 58
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 60
    return-void

    .line 62
    :cond_e
    cmp-long v0, p1, v2

    const-wide/16 v4, 0x0

    if-nez v0, :cond_1e

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 63
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->fastPath()V

    goto :goto_2d

    .line 65
    :cond_1e
    cmp-long v0, p1, v4

    if-lez v0, :cond_2d

    invoke-static {p0, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2d

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->slowPath(J)V

    .line 69
    :cond_2d
    :goto_2d
    return-void
.end method

.method slowPath(J)V
    .registers 13
    .param p1, "n"    # J

    .line 73
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lcom/tds/common/reactor/Subscriber;

    .line 74
    .local v0, "o":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 76
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    move-wide v2, p1

    .line 77
    .local v2, "r":J
    const-wide/16 v4, 0x0

    .line 80
    .local v4, "e":J
    :goto_7
    cmp-long v6, v4, v2

    if-eqz v6, :cond_40

    .line 81
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 82
    return-void

    .line 88
    :cond_12
    :try_start_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_3b

    .line 92
    .local v6, "value":Ljava/lang/Object;, "TT;"
    nop

    .line 94
    invoke-virtual {v0, v6}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 97
    return-void

    .line 103
    :cond_21
    :try_start_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_36

    .line 107
    .local v7, "b":Z
    nop

    .line 109
    if-nez v7, :cond_32

    .line 110
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_31

    .line 111
    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 113
    :cond_31
    return-void

    .line 116
    :cond_32
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 117
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "b":Z
    goto :goto_7

    .line 104
    .restart local v6    # "value":Ljava/lang/Object;, "TT;"
    :catchall_36
    move-exception v7

    .line 105
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 106
    return-void

    .line 89
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_3b
    move-exception v6

    .line 90
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6, v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 91
    return-void

    .line 119
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_40
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v2

    .line 120
    cmp-long v6, v4, v2

    if-nez v6, :cond_57

    .line 121
    invoke-static {p0, v4, v5}, Lcom/tds/common/reactor/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    .line 122
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_54

    .line 123
    nop

    .line 129
    return-void

    .line 125
    :cond_54
    const-wide/16 v4, 0x0

    goto :goto_7

    .line 120
    :cond_57
    goto :goto_7
.end method
