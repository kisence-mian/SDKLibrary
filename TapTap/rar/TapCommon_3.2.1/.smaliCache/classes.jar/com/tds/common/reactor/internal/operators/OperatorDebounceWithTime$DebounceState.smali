.class final Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field emitting:Z

.field hasValue:Z

.field index:I

.field terminate:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    monitor-enter p0

    .line 155
    :try_start_1
    iget v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 158
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emit(ILcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p2, "onNextAndComplete":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    .local p3, "onError":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    monitor-enter p0

    .line 99
    :try_start_1
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    if-eq p1, v0, :cond_e

    goto :goto_34

    .line 102
    :cond_e
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 104
    .local v0, "localValue":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 107
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_36

    .line 110
    :try_start_1a
    invoke-virtual {p2, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    .line 114
    nop

    .line 117
    monitor-enter p0

    .line 118
    :try_start_1f
    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    if-nez v2, :cond_27

    .line 119
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    .line 124
    invoke-virtual {p2}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 125
    return-void

    .line 122
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    .line 111
    :catchall_2f
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p3, v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 113
    return-void

    .line 100
    .end local v0    # "localValue":Ljava/lang/Object;, "TT;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit p0

    return-void

    .line 107
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public emitAndComplete(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;",
            "Lcom/tds/common/reactor/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "onNextAndComplete":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    .local p2, "onError":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 132
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 136
    .local v0, "localValue":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 138
    .local v2, "localHasValue":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 139
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 141
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 142
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    .line 144
    if-eqz v2, :cond_22

    .line 146
    :try_start_19
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 150
    goto :goto_22

    .line 147
    :catchall_1d
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p2, v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V

    .line 149
    return-void

    .line 152
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 153
    return-void

    .line 142
    .end local v0    # "localValue":Ljava/lang/Object;, "TT;"
    .end local v2    # "localHasValue":Z
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public declared-synchronized next(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 92
    :try_start_1
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 94
    iget v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v1

    .line 91
    .end local p0    # "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
