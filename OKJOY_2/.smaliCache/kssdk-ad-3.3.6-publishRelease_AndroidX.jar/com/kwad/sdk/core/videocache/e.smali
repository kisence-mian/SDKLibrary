.class Lcom/kwad/sdk/core/videocache/e;
.super Lcom/kwad/sdk/core/videocache/k;


# instance fields
.field private final a:Lcom/kwad/sdk/core/videocache/h;

.field private final b:Lcom/kwad/sdk/core/videocache/a/b;

.field private c:Lcom/kwad/sdk/core/videocache/b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/h;Lcom/kwad/sdk/core/videocache/a/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/videocache/k;-><init>(Lcom/kwad/sdk/core/videocache/m;Lcom/kwad/sdk/core/videocache/a;)V

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/e;->b:Lcom/kwad/sdk/core/videocache/a/b;

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/e;->a:Lcom/kwad/sdk/core/videocache/h;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/OutputStream;J)V
    .registers 8

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_4
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/kwad/sdk/core/videocache/e;->a([BJI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_4

    :cond_12
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/videocache/d;)Z
    .registers 11

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->a:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    :goto_11
    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/e;->b:Lcom/kwad/sdk/core/videocache/a/b;

    invoke-virtual {v5}, Lcom/kwad/sdk/core/videocache/a/b;->a()J

    move-result-wide v5

    if-eqz v2, :cond_2d

    iget-boolean v2, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v2, :cond_2d

    iget-wide v7, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    long-to-float p1, v7

    long-to-float v2, v5

    long-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v3, v4

    :cond_2d
    :goto_2d
    return v3
.end method

.method private b(Lcom/kwad/sdk/core/videocache/d;)Ljava/lang/String;
    .registers 14

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->a:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/e;->b:Lcom/kwad/sdk/core/videocache/a/b;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/videocache/a/b;->d()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/e;->b:Lcom/kwad/sdk/core/videocache/a/b;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/videocache/a/b;->a()J

    move-result-wide v3

    goto :goto_21

    :cond_1b
    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/e;->a:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/videocache/h;->a()J

    move-result-wide v3

    :goto_21
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_2a

    move v5, v2

    goto :goto_2b

    :cond_2a
    move v5, v6

    :goto_2b
    iget-boolean v7, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v7, :cond_34

    iget-wide v7, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    sub-long v7, v3, v7

    goto :goto_35

    :cond_34
    move-wide v7, v3

    :goto_35
    if-eqz v5, :cond_3d

    iget-boolean v9, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v9, :cond_3d

    move v9, v2

    goto :goto_3e

    :cond_3d
    move v9, v6

    :goto_3e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v11, :cond_4a

    const-string v11, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_4c

    :cond_4a
    const-string v11, "HTTP/1.1 200 OK\n"

    :goto_4c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Accept-Ranges: bytes\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    if-eqz v5, :cond_69

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "Content-Length: %d\n"

    invoke-direct {p0, v7, v5}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6a

    :cond_69
    move-object v5, v11

    :goto_6a
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v9, :cond_93

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v2

    const/4 p1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, p1

    const-string p1, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {p0, p1, v7}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_94

    :cond_93
    move-object p1, v11

    :goto_94
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v1, :cond_a4

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v0, "Content-Type: %s\n"

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_a4
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/io/OutputStream;J)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/videocache/h;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/e;->a:Lcom/kwad/sdk/core/videocache/h;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/videocache/h;-><init>(Lcom/kwad/sdk/core/videocache/h;)V

    long-to-int p2, p2

    int-to-long p2, p2

    :try_start_9
    invoke-virtual {v0, p2, p3}, Lcom/kwad/sdk/core/videocache/h;->a(J)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    :goto_10
    invoke-virtual {v0, p2}, Lcom/kwad/sdk/core/videocache/h;->a([B)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_10

    :cond_1c
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->b()V

    return-void

    :catchall_23
    move-exception p1

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->b()V

    throw p1
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->c:Lcom/kwad/sdk/core/videocache/b;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/e;->b:Lcom/kwad/sdk/core/videocache/a/b;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/e;->a:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/videocache/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/kwad/sdk/core/videocache/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/videocache/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/e;->c:Lcom/kwad/sdk/core/videocache/b;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/videocache/d;Ljava/net/Socket;)V
    .registers 6

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/e;->b(Lcom/kwad/sdk/core/videocache/d;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v1, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/e;->a(Lcom/kwad/sdk/core/videocache/d;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-direct {p0, v0, v1, v2}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/io/OutputStream;J)V

    goto :goto_25

    :cond_22
    invoke-direct {p0, v0, v1, v2}, Lcom/kwad/sdk/core/videocache/e;->b(Ljava/io/OutputStream;J)V

    :goto_25
    return-void
.end method
