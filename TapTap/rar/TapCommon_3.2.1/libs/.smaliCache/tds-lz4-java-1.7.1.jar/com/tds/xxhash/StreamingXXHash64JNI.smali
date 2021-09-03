.class final Lcom/tds/xxhash/StreamingXXHash64JNI;
.super Lcom/tds/xxhash/StreamingXXHash64;
.source "StreamingXXHash64JNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/xxhash/StreamingXXHash64JNI$Factory;
    }
.end annotation


# instance fields
.field private state:J


# direct methods
.method constructor <init>(J)V
    .registers 5
    .param p1, "seed"    # J

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tds/xxhash/StreamingXXHash64;-><init>(J)V

    .line 43
    invoke-static {p1, p2}, Lcom/tds/xxhash/XXHashJNI;->XXH64_init(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    .line 44
    return-void
.end method

.method private checkState()V
    .registers 5

    .line 47
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 50
    return-void

    .line 48
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Already finalized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5

    monitor-enter p0

    .line 73
    :try_start_1
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 74
    invoke-super {p0}, Lcom/tds/xxhash/StreamingXXHash64;->close()V

    .line 75
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH64_free(J)V

    .line 76
    iput-wide v2, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 78
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash64JNI;
    :cond_13
    monitor-exit p0

    return-void

    .line 72
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 86
    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH64_free(J)V

    .line 87
    iput-wide v2, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 89
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash64JNI;
    :cond_11
    monitor-exit p0

    return-void

    .line 82
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()J
    .registers 3

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-direct {p0}, Lcom/tds/xxhash/StreamingXXHash64JNI;->checkState()V

    .line 62
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH64_digest(J)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 60
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash64JNI;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 54
    :try_start_1
    invoke-direct {p0}, Lcom/tds/xxhash/StreamingXXHash64JNI;->checkState()V

    .line 55
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH64_free(J)V

    .line 56
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->seed:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH64_init(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 57
    monitor-exit p0

    return-void

    .line 53
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash64JNI;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 67
    :try_start_1
    invoke-direct {p0}, Lcom/tds/xxhash/StreamingXXHash64JNI;->checkState()V

    .line 68
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash64JNI;->state:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tds/xxhash/XXHashJNI;->XXH64_update(J[BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 69
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash64JNI;
    .end local p1    # "bytes":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
