.class Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;
.super Ljava/lang/Object;
.source "MMapBuffer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "buffer_pg"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;->a(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method constructor <init>(JLjava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d(J)V

    .line 25
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->e:Ljava/io/File;

    .line 26
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 27
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nCreate(Ljava/lang/String;J)J

    move-result-wide p1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c(J)V

    .line 29
    return-void
.end method

.method private native nCreate(Ljava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nFlush(JJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nRead(JJ[BII)V
.end method

.method private native nRelease(JJ)I
.end method

.method private native nWrite(JJ[BII)V
.end method


# virtual methods
.method public a([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_48

    .line 97
    const/4 v0, 0x0

    if-eqz p1, :cond_47

    array-length v1, p1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    if-ge p3, v1, :cond_12

    goto :goto_47

    .line 100
    :cond_12
    if-ltz p2, :cond_46

    array-length v1, p1

    if-lt p2, v1, :cond_18

    goto :goto_46

    .line 103
    :cond_18
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1f

    .line 104
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 107
    :cond_1f
    monitor-enter p0

    .line 108
    :try_start_20
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v3, v4, v1

    if-nez v3, :cond_2a

    .line 109
    monitor-exit p0

    return v0

    .line 111
    :cond_2a
    int-to-long v6, p3

    add-long/2addr v6, v4

    cmp-long v0, v6, v1

    if-lez v0, :cond_32

    .line 112
    sub-long/2addr v1, v4

    long-to-int p3, v1

    .line 115
    :cond_32
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nWrite(JJ[BII)V

    .line 116
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 118
    monitor-exit p0

    .line 119
    return p3

    .line 118
    :catchall_43
    move-exception p1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_43

    throw p1

    .line 101
    :cond_46
    :goto_46
    return v0

    .line 98
    :cond_47
    :goto_47
    return v0

    .line 95
    :cond_48
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_32

    if-nez v0, :cond_2a

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_11

    .line 80
    monitor-exit p0

    return-wide v0

    .line 82
    :cond_11
    :try_start_11
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 83
    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 84
    cmp-long v4, p1, v0

    if-gez v4, :cond_1d

    .line 85
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    goto :goto_25

    .line 86
    :cond_1d
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_25

    .line 87
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 89
    :cond_25
    :goto_25
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_32

    sub-long/2addr p1, v2

    monitor-exit p0

    return-wide p1

    .line 77
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 75
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 56
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nFlush(JJ)I

    .line 57
    return-void

    .line 54
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a([B)V

    .line 67
    return-void
.end method

.method public a([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a([BII)I

    .line 72
    return-void
.end method

.method public b([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b([BII)I

    move-result p1

    return p1
.end method

.method public b([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    .line 164
    if-eqz p1, :cond_42

    const/4 v0, 0x1

    if-lt p3, v0, :cond_42

    if-ltz p2, :cond_42

    array-length v0, p1

    if-lt p2, v0, :cond_13

    goto :goto_42

    .line 167
    :cond_13
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1a

    .line 168
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 171
    :cond_1a
    monitor-enter p0

    .line 172
    :try_start_1b
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_26

    .line 173
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 175
    :cond_26
    int-to-long v5, p3

    add-long/2addr v5, v3

    cmp-long v2, v5, v0

    if-lez v2, :cond_2e

    .line 176
    sub-long/2addr v0, v3

    long-to-int p3, v0

    .line 178
    :cond_2e
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nRead(JJ[BII)V

    .line 179
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 180
    monitor-exit p0

    return p3

    .line 181
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1b .. :try_end_41} :catchall_3f

    throw p1

    .line 165
    :cond_42
    :goto_42
    const/4 p1, 0x0

    return p1

    .line 162
    :cond_44
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    return-wide v0
.end method

.method public b(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 135
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_10

    .line 136
    move-wide p1, v0

    goto :goto_17

    .line 137
    :cond_10
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    .line 138
    move-wide p1, v0

    .line 140
    :cond_17
    :goto_17
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 141
    return-void

    .line 133
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    return-wide v0

    .line 125
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(J)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    .line 37
    return-void
.end method

.method public d()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 146
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b([B)I

    move-result v1

    .line 147
    if-gtz v1, :cond_b

    .line 148
    const/4 v0, -0x1

    return v0

    .line 150
    :cond_b
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method d(J)V
    .registers 3

    .line 44
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    .line 45
    return-void
.end method

.method public e()V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    return-void

    .line 190
    :cond_a
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nRelease(JJ)I

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    .line 192
    return-void
.end method

.method public f()Ljava/io/File;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->e:Ljava/io/File;

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    :try_start_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->e()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 205
    goto :goto_b

    .line 203
    :catch_7
    move-exception v0

    .line 204
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/c;->a(Ljava/lang/Throwable;)V

    .line 206
    :goto_b
    return-void
.end method
