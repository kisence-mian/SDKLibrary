.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;
.super Ljava/io/InputStream;
.source "BufferInputStream.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    .line 14
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 34
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 35
    const v0, 0x7fffffff

    return v0

    .line 37
    :cond_18
    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 48
    int-to-long v0, p1

    :try_start_2
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->b:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 49
    monitor-exit p0

    return-void

    .line 47
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->d()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->b([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->b([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->b:J

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->b(J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a(J)J

    move-result-wide p1

    return-wide p1
.end method
