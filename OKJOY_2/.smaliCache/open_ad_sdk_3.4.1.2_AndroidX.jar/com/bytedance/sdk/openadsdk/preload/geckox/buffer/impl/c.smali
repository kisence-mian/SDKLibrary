.class Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;
.super Ljava/lang/Object;
.source "RAFBuffer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/io/File;


# direct methods
.method constructor <init>(JLjava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a:J

    .line 20
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->e:Ljava/io/File;

    .line 21
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :try_start_16
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    .line 24
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_24

    .line 28
    nop

    .line 29
    return-void

    .line 25
    :catch_24
    move-exception p1

    .line 26
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 27
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create raf swap failed! path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " caused by: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    .line 72
    const/4 v0, 0x0

    if-eqz p1, :cond_43

    array-length v1, p1

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    if-ge p3, v1, :cond_12

    goto :goto_43

    .line 75
    :cond_12
    if-ltz p2, :cond_42

    array-length v1, p1

    if-lt p2, v1, :cond_18

    goto :goto_42

    .line 78
    :cond_18
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1f

    .line 79
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 82
    :cond_1f
    monitor-enter p0

    .line 83
    :try_start_20
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2a

    .line 84
    monitor-exit p0

    return v0

    .line 86
    :cond_2a
    int-to-long v5, p3

    add-long/2addr v5, v1

    cmp-long v0, v5, v3

    if-lez v0, :cond_32

    .line 87
    sub-long/2addr v3, v1

    long-to-int p3, v3

    .line 89
    :cond_32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 90
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    .line 92
    monitor-exit p0

    .line 93
    return p3

    .line 92
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_3f

    throw p1

    .line 76
    :cond_42
    :goto_42
    return v0

    .line 73
    :cond_43
    :goto_43
    return v0

    .line 70
    :cond_44
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_39

    .line 59
    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_20

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p1

    .line 63
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_41

    .line 64
    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    .line 60
    :cond_20
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too large:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_39
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_41

    .line 55
    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    return-void

    .line 34
    :cond_9
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

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a([B)V

    .line 47
    return-void
.end method

.method public a([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a([BII)I

    .line 52
    return-void
.end method

.method public b([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b([BII)I

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

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_45

    .line 139
    if-eqz p1, :cond_43

    const/4 v0, 0x1

    if-lt p3, v0, :cond_43

    if-ltz p2, :cond_43

    array-length v0, p1

    if-lt p2, v0, :cond_13

    goto :goto_43

    .line 142
    :cond_13
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1a

    .line 143
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 146
    :cond_1a
    monitor-enter p0

    .line 147
    :try_start_1b
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-nez v4, :cond_26

    .line 148
    monitor-exit p0

    return v5

    .line 150
    :cond_26
    int-to-long v6, p3

    add-long/2addr v6, v0

    cmp-long v4, v6, v2

    if-lez v4, :cond_2e

    .line 151
    sub-long/2addr v2, v0

    long-to-int p3, v2

    .line 154
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 155
    if-ne p1, v5, :cond_38

    .line 156
    monitor-exit p0

    return v5

    .line 158
    :cond_38
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    .line 160
    monitor-exit p0

    return p1

    .line 161
    :catchall_40
    move-exception p1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_40

    throw p1

    .line 140
    :cond_43
    :goto_43
    const/4 p1, 0x0

    return p1

    .line 137
    :cond_45
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a:J

    return-wide v0
.end method

.method public b(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_10

    .line 110
    move-wide p1, v0

    goto :goto_17

    .line 111
    :cond_10
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->a:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    .line 112
    move-wide p1, v0

    .line 114
    :cond_17
    :goto_17
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 116
    return-void

    .line 107
    :cond_1f
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

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 101
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b:J

    return-wide v0

    .line 99
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 121
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->b([B)I

    move-result v1

    .line 122
    if-nez v1, :cond_b

    .line 123
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_b
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public e()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    return-void

    .line 170
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->c:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 171
    return-void
.end method

.method public f()Ljava/io/File;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/c;->e:Ljava/io/File;

    return-object v0
.end method
