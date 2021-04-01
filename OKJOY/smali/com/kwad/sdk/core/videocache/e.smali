.class Lcom/kwad/sdk/core/videocache/e;
.super Lcom/kwad/sdk/core/videocache/l;
.source ""


# instance fields
.field private final i:Lcom/kwad/sdk/core/videocache/h;

.field private final j:Lcom/kwad/sdk/core/videocache/q/b;

.field private k:Lcom/kwad/sdk/core/videocache/b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/h;Lcom/kwad/sdk/core/videocache/q/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/videocache/l;-><init>(Lcom/kwad/sdk/core/videocache/n;Lcom/kwad/sdk/core/videocache/a;)V

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/e;->j:Lcom/kwad/sdk/core/videocache/q/b;

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/e;->i:Lcom/kwad/sdk/core/videocache/h;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/OutputStream;J)V
    .registers 8

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_4
    array-length v1, v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/kwad/sdk/core/videocache/l;->a([BJI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v1

    add-long/2addr p2, v2

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/videocache/d;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->i:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2b

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/e;->j:Lcom/kwad/sdk/core/videocache/q/b;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/videocache/q/b;->b()J

    move-result-wide v6

    if-eqz v0, :cond_29

    iget-boolean v0, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v0, :cond_29

    iget-wide v8, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    long-to-float v0, v8

    long-to-float v3, v6

    long-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2a

    :cond_29
    move v2, v1

    :cond_2a
    return v2

    :cond_2b
    move v0, v2

    goto :goto_f
.end method

.method private b(Lcom/kwad/sdk/core/videocache/d;)Ljava/lang/String;
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->i:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v11, v0, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->j:Lcom/kwad/sdk/core/videocache/q/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/q/b;->c()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->j:Lcom/kwad/sdk/core/videocache/q/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/q/b;->b()J

    move-result-wide v8

    :goto_1c
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-ltz v0, :cond_a7

    move v0, v1

    :goto_23
    iget-boolean v3, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v3, :cond_aa

    iget-wide v4, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    sub-long v4, v8, v4

    move-wide v6, v4

    :goto_2c
    if-eqz v0, :cond_ac

    iget-boolean v3, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v3, :cond_ac

    move v3, v1

    :goto_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p1, Lcom/kwad/sdk/core/videocache/d;->c:Z

    if-eqz v4, :cond_ae

    const-string v4, "HTTP/1.1 206 PARTIAL CONTENT\n"

    :goto_3e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Accept-Ranges: bytes\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_b1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, "Content-Length: %d\n"

    invoke-direct {p0, v5, v0}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_b4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-wide/16 v6, 0x1

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const-string v3, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {p0, v3, v0}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v11, :cond_b7

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v10, v0, v2

    const-string v1, "Content-Type: %s\n"

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9f
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->i:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/h;->a()J

    move-result-wide v8

    goto/16 :goto_1c

    :cond_a7
    move v0, v2

    goto/16 :goto_23

    :cond_aa
    move-wide v6, v8

    goto :goto_2c

    :cond_ac
    move v3, v2

    goto :goto_33

    :cond_ae
    const-string v4, "HTTP/1.1 200 OK\n"

    goto :goto_3e

    :cond_b1
    const-string v0, ""

    goto :goto_58

    :cond_b4
    const-string v0, ""

    goto :goto_80

    :cond_b7
    const-string v0, ""

    goto :goto_90
.end method

.method private b(Ljava/io/OutputStream;J)V
    .registers 8

    new-instance v1, Lcom/kwad/sdk/core/videocache/h;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->i:Lcom/kwad/sdk/core/videocache/h;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/core/videocache/h;-><init>(Lcom/kwad/sdk/core/videocache/h;)V

    long-to-int v0, p2

    int-to-long v2, v0

    :try_start_9
    invoke-virtual {v1, v2, v3}, Lcom/kwad/sdk/core/videocache/h;->a(J)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_10
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/videocache/h;->a([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_10

    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/kwad/sdk/core/videocache/h;->close()V

    throw v0

    :cond_21
    :try_start_21
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1c

    invoke-virtual {v1}, Lcom/kwad/sdk/core/videocache/h;->close()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/e;->k:Lcom/kwad/sdk/core/videocache/b;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/e;->j:Lcom/kwad/sdk/core/videocache/q/b;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/q/b;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/e;->i:Lcom/kwad/sdk/core/videocache/h;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/videocache/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/kwad/sdk/core/videocache/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/videocache/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/e;->k:Lcom/kwad/sdk/core/videocache/b;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/videocache/d;Ljava/net/Socket;)V
    .registers 7

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/e;->b(Lcom/kwad/sdk/core/videocache/d;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p1, Lcom/kwad/sdk/core/videocache/d;->b:J

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/e;->a(Lcom/kwad/sdk/core/videocache/d;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, v0, v2, v3}, Lcom/kwad/sdk/core/videocache/e;->a(Ljava/io/OutputStream;J)V

    :goto_21
    return-void

    :cond_22
    invoke-direct {p0, v0, v2, v3}, Lcom/kwad/sdk/core/videocache/e;->b(Ljava/io/OutputStream;J)V

    goto :goto_21
.end method
