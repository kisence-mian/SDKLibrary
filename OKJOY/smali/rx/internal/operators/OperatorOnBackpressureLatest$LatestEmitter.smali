.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;

.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field private static final serialVersionUID:J = -0x12ef4cd3e08498a2L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field missed:Z

.field parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field terminal:Ljava/lang/Throwable;

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->lazySet(J)V

    .line 77
    return-void
.end method


# virtual methods
.method emit()V
    .registers 9

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    monitor-enter p0

    .line 146
    :try_start_1
    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    if-eqz v6, :cond_a

    .line 147
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 148
    monitor-exit p0

    .line 194
    :cond_9
    :goto_9
    return-void

    .line 150
    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 151
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 152
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_28

    .line 153
    const/4 v1, 0x0

    .line 156
    .local v1, "skipFinal":Z
    :goto_12
    :try_start_12
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_6e

    move-result-wide v2

    .line 157
    .local v2, "r":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v2, v6

    if-nez v6, :cond_2b

    .line 158
    const/4 v1, 0x1

    .line 188
    :goto_1d
    if-nez v1, :cond_9

    .line 189
    monitor-enter p0

    .line 190
    const/4 v6, 0x0

    :try_start_21
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 191
    monitor-exit p0

    goto :goto_9

    :catchall_25
    move-exception v6

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw v6

    .line 152
    .end local v1    # "skipFinal":Z
    .end local v2    # "r":J
    :catchall_28
    move-exception v6

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v6

    .line 161
    .restart local v1    # "skipFinal":Z
    .restart local v2    # "r":J
    :cond_2b
    :try_start_2b
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 162
    .local v4, "v":Ljava/lang/Object;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4f

    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-eq v4, v6, :cond_4f

    .line 164
    move-object v5, v4

    .line 165
    .local v5, "v2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 166
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->produced(J)J

    .line 168
    sget-object v4, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    .line 170
    .end local v5    # "v2":Ljava/lang/Object;, "TT;"
    :cond_4f
    sget-object v6, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->EMPTY:Ljava/lang/Object;

    if-ne v4, v6, :cond_60

    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    if-eqz v6, :cond_60

    .line 171
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_77

    .line 173
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_60
    :goto_60
    monitor-enter p0
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_6e

    .line 179
    :try_start_61
    iget-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    if-nez v6, :cond_7d

    .line 180
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 181
    const/4 v1, 0x1

    .line 182
    monitor-exit p0

    goto :goto_1d

    .line 185
    :catchall_6b
    move-exception v6

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 188
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_6e
    move-exception v6

    if-nez v1, :cond_76

    .line 189
    monitor-enter p0

    .line 190
    const/4 v7, 0x0

    :try_start_73
    iput-boolean v7, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emitting:Z

    .line 191
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_82

    :cond_76
    throw v6

    .line 175
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "r":J
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_77
    :try_start_77
    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_6e

    goto :goto_60

    .line 184
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7d
    const/4 v6, 0x0

    :try_start_7e
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->missed:Z

    .line 185
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_6b

    goto :goto_12

    .line 191
    .end local v2    # "r":J
    .end local v4    # "v":Ljava/lang/Object;
    :catchall_82
    move-exception v6

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v6
.end method

.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 142
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 143
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->terminal:Ljava/lang/Throwable;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->done:Z

    .line 137
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 138
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    .line 132
    return-void
.end method

.method produced(J)J
    .registers 10
    .param p1, "n"    # J

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 108
    .local v0, "r":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_b

    .line 113
    .end local v0    # "r":J
    :goto_a
    return-wide v0

    .line 111
    .restart local v0    # "r":J
    :cond_b
    sub-long v2, v0, p1

    .line 112
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 113
    goto :goto_a
.end method

.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    .line 80
    cmp-long v4, p1, v8

    if-ltz v4, :cond_12

    .line 82
    :cond_8
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    .line 83
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_13

    .line 104
    .end local v0    # "r":J
    :cond_12
    :goto_12
    return-void

    .line 87
    .restart local v0    # "r":J
    :cond_13
    cmp-long v4, v0, v6

    if-nez v4, :cond_30

    .line 88
    move-wide v2, p1

    .line 95
    .local v2, "u":J
    :cond_18
    :goto_18
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 96
    cmp-long v4, v0, v6

    if-nez v4, :cond_2c

    .line 97
    iget-object v4, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v4, v6, v7}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->requestMore(J)V

    .line 99
    :cond_2c
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->emit()V

    goto :goto_12

    .line 90
    .end local v2    # "u":J
    :cond_30
    add-long v2, v0, p1

    .line 91
    .restart local v2    # "u":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_18

    .line 92
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_18
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 124
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->getAndSet(J)J

    .line 126
    :cond_f
    return-void
.end method
