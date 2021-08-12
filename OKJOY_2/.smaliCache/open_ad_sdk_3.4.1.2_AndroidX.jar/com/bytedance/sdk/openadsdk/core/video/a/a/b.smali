.class public Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;
.super Ljava/lang/Object;
.source "VideoCacheImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;


# instance fields
.field public a:Ljava/io/File;

.field private b:Ljava/io/RandomAccessFile;

.field private volatile c:J

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;

.field private f:J

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f:J

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h:Z

    .line 38
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i:Z

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->d:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->k:Ljava/lang/String;

    .line 46
    :try_start_1e
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f()Z

    move-result p1

    .line 48
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j:Z

    .line 49
    new-instance p2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    if-eqz p1, :cond_31

    const-string v1, "r"

    goto :goto_33

    :cond_31
    const-string v1, "rw"

    :goto_33
    invoke-direct {p2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f:J

    .line 52
    if-nez p1, :cond_46

    .line 53
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h:Z

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->d()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_46} :catch_47

    .line 58
    :cond_46
    goto :goto_66

    .line 56
    :catch_47
    move-exception p1

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error using file "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " as disc cache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoCacheImpl"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_66
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;J)J
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/Object;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    return-void

    .line 212
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_29
    .catchall {:try_start_7 .. :try_end_a} :catchall_27

    .line 213
    :try_start_a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_16

    .line 215
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 217
    :cond_16
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    .line 218
    monitor-exit v0

    .line 222
    nop

    .line 223
    return-void

    .line 218
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    :try_start_26
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_29
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 221
    :catchall_27
    move-exception v0

    goto :goto_45

    .line 219
    :catch_29
    move-exception v0

    .line 220
    :try_start_2a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error downloadFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_27

    .line 222
    :goto_45
    throw v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h()V

    return-void
.end method

.method private h()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    return-void

    .line 232
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_80
    .catchall {:try_start_7 .. :try_end_a} :catchall_7e

    .line 233
    :try_start_a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".download"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 236
    if-eqz v1, :cond_50

    .line 239
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    .line 240
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_42

    .line 241
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 243
    :cond_42
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    .line 244
    monitor-exit v0

    .line 248
    nop

    .line 249
    return-void

    .line 237
    :cond_50
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error renaming file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for completion!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v1
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7e} :catch_80
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 247
    :catchall_7e
    move-exception v0

    goto :goto_a2

    .line 245
    :catch_80
    move-exception v0

    .line 246
    :try_start_81
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a2
    .catchall {:try_start_81 .. :try_end_a2} :catchall_7e

    .line 248
    :goto_a2
    throw v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g()V

    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g:Z

    return p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    return-object p0
.end method


# virtual methods
.method public a(J[BII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    nop

    .line 152
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_3
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_a

    .line 153
    return v0

    .line 152
    :cond_a
    move v2, v1

    .line 155
    :cond_b
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g:Z

    if-nez v3, :cond_7e

    .line 156
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_80
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_12} :catch_7a
    .catchall {:try_start_3 .. :try_end_12} :catchall_78

    .line 157
    :try_start_12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_44

    .line 158
    const-string v2, "VideoCacheImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read:  read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 160
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_71

    .line 162
    :cond_44
    const-string v4, "VideoCacheImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read: wait at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  file size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    const-wide/16 v5, 0x21

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 165
    :goto_71
    monitor-exit v3

    .line 166
    if-lez v2, :cond_b

    .line 167
    return v2

    .line 165
    :catchall_75
    move-exception p1

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_12 .. :try_end_77} :catchall_75

    :try_start_77
    throw p1
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_78} :catch_80
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_78} :catch_7a
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 175
    :catchall_78
    move-exception p1

    goto :goto_b0

    .line 173
    :catch_7a
    move-exception p1

    .line 174
    :try_start_7b
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 176
    :cond_7e
    nop

    .line 177
    return v0

    .line 170
    :catch_80
    move-exception p1

    .line 171
    const-string p2, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    .line 172
    new-instance v0, Ljava/io/IOException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v2, v1

    const/4 p5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, p5

    const/4 p4, 0x2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, v2, p4

    const/4 p4, 0x3

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p4

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b0
    .catchall {:try_start_7b .. :try_end_b0} :catchall_78

    .line 176
    :goto_b0
    throw p1
.end method

.method public a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h:Z

    if-nez v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 200
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catch_e
    move-exception v0

    .line 202
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 185
    const-string v1, "VideoCacheImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "append:  pisition ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  length ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3a} :catch_3e
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 191
    nop

    .line 192
    return-void

    .line 189
    :catchall_3c
    move-exception p1

    goto :goto_61

    .line 186
    :catch_3e
    move-exception v1

    .line 187
    :try_start_3f
    const-string v2, "Error writing %d bytes to %s from buffer with size %d"

    .line 188
    new-instance v3, Ljava/io/IOException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    aput-object v0, v4, p2

    const/4 p2, 0x2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_3c

    .line 191
    :goto_61
    throw p1
.end method

.method public b()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J

    goto :goto_35

    .line 260
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :goto_10
    :try_start_10
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_38

    const-wide/32 v3, -0x80000000

    cmp-long v1, v1, v3

    if-nez v1, :cond_34

    .line 263
    :try_start_19
    const-string v1, "VideoCacheImpl"

    const-string v2, "length: wait"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e:Ljava/lang/Object;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_27} :catch_28
    .catchall {:try_start_19 .. :try_end_27} :catchall_38

    .line 268
    goto :goto_10

    .line 265
    :catch_28
    move-exception v1

    .line 266
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 267
    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_38

    .line 272
    :goto_35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c:J

    return-wide v0

    .line 270
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public c()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h:Z

    return v0
.end method

.method public d()V
    .registers 2

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Lcom/bytedance/sdk/openadsdk/j/g;)V

    .line 138
    return-void
.end method

.method public e()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 143
    :catch_7
    move-exception v0

    .line 144
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading length of file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()Z
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
