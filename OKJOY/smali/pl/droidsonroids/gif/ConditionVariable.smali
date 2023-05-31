.class Lpl/droidsonroids/gif/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_c

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    .line 43
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :cond_c
    monitor-exit p0

    return-void
.end method

.method declared-synchronized close()V
    .registers 2

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized open()V
    .registers 3

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    .line 32
    .local v0, "old":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    .line 33
    if-nez v0, :cond_b

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 36
    :cond_b
    monitor-exit p0

    return-void

    .line 31
    .end local v0    # "old":Z
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized set(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 23
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 24
    :try_start_3
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->open()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 28
    :goto_6
    monitor-exit p0

    return-void

    .line 26
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_6

    .line 23
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
