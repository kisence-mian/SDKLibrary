.class final Lcom/tds/xxhash/StreamingXXHash32JNI;
.super Lcom/tds/xxhash/StreamingXXHash32;
.source "StreamingXXHash32JNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/xxhash/StreamingXXHash32JNI$Factory;
    }
.end annotation


# instance fields
.field private state:J


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "seed"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/tds/xxhash/StreamingXXHash32;-><init>(I)V

    .line 42
    invoke-static {p1}, Lcom/tds/xxhash/XXHashJNI;->XXH32_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    .line 43
    return-void
.end method

.method private checkState()V
    .registers 5

    .line 46
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 49
    return-void

    .line 47
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

    .line 72
    :try_start_1
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 73
    invoke-super {p0}, Lcom/tds/xxhash/StreamingXXHash32;->close()V

    .line 74
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH32_free(J)V

    .line 75
    iput-wide v2, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 77
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash32JNI;
    :cond_13
    monitor-exit p0

    return-void

    .line 71
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

    .line 81
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 84
    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH32_free(J)V

    .line 85
    iput-wide v2, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 87
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash32JNI;
    :cond_11
    monitor-exit p0

    return-void

    .line 80
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()I
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    invoke-direct {p0}, Lcom/tds/xxhash/StreamingXXHash32JNI;->checkState()V

    .line 61
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH32_digest(J)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 59
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash32JNI;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-direct {p0}, Lcom/tds/xxhash/StreamingXXHash32JNI;->checkState()V

    .line 54
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1}, Lcom/tds/xxhash/XXHashJNI;->XXH32_free(J)V

    .line 55
    iget v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->seed:I

    invoke-static {v0}, Lcom/tds/xxhash/XXHashJNI;->XXH32_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 56
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash32JNI;
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

    .line 66
    :try_start_1
    invoke-direct {p0}, Lcom/tds/xxhash/StreamingXXHash32JNI;->checkState()V

    .line 67
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tds/xxhash/XXHashJNI;->XXH32_update(J[BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 68
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/tds/xxhash/StreamingXXHash32JNI;
    .end local p1    # "bytes":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
