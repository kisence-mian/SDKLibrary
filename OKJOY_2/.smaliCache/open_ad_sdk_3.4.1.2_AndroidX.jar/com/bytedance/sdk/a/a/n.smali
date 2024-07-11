.class final Lcom/bytedance/sdk/a/a/n;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/e;


# instance fields
.field public final a:Lcom/bytedance/sdk/a/a/c;

.field public final b:Lcom/bytedance/sdk/a/a/s;

.field c:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/s;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    .line 31
    if-eqz p1, :cond_f

    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    .line 33
    return-void

    .line 31
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(B)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/n;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v0, :cond_5d

    .line 382
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_40

    cmp-long v0, p4, p2

    if-ltz v0, :cond_40

    .line 387
    :goto_e
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_3f

    .line 388
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/a/a/c;->a(BJJ)J

    move-result-wide v0

    .line 389
    cmp-long v2, v0, v7

    if-eqz v2, :cond_22

    return-wide v0

    .line 393
    :cond_22
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 394
    cmp-long v2, v0, p4

    if-gez v2, :cond_3e

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_39

    goto :goto_3e

    .line 397
    :cond_39
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 398
    goto :goto_e

    .line 394
    :cond_3e
    :goto_3e
    return-wide v7

    .line 399
    :cond_3f
    return-wide v7

    .line 383
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 384
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    if-eqz p1, :cond_55

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3c

    .line 49
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v2, :cond_34

    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_25

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    .line 53
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    return-wide v2

    .line 56
    :cond_25
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1

    return-wide p1

    .line 49
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    if-eqz p1, :cond_10

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/s;)J

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 220
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 69
    return-void

    .line 68
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_c

    .line 148
    nop

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a([B)V

    .line 150
    return-void

    .line 139
    :catch_c
    move-exception v0

    .line 141
    const/4 v1, 0x0

    .line 142
    :goto_e
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    .line 143
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v3, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/bytedance/sdk/a/a/c;->a([BII)I

    move-result v2

    .line 144
    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 145
    add-int/2addr v1, v2

    .line 146
    goto :goto_e

    .line 144
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 147
    :cond_2c
    throw v0
.end method

.method public a(JLcom/bytedance/sdk/a/a/f;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/n;->a(JLcom/bytedance/sdk/a/a/f;II)Z

    move-result p1

    return p1
.end method

.method public a(JLcom/bytedance/sdk/a/a/f;II)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v0, :cond_3b

    .line 454
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3a

    if-ltz p4, :cond_3a

    if-ltz p5, :cond_3a

    .line 457
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_17

    goto :goto_3a

    .line 460
    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p5, :cond_38

    .line 461
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 462
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v4

    if-nez v4, :cond_26

    return v1

    .line 463
    :cond_26
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/a/a/f;->a(I)B

    move-result v3

    if-eq v2, v3, :cond_35

    return v1

    .line 460
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 465
    :cond_38
    const/4 p1, 0x1

    return p1

    .line 458
    :cond_3a
    :goto_3a
    return v1

    .line 452
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 74
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v0, :cond_26

    .line 75
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_24

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_24
    const/4 p1, 0x1

    return p1

    .line 74
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/c;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    return-object v0
.end method

.method public c(J)Lcom/bytedance/sdk/a/a/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->c(J)Lcom/bytedance/sdk/a/a/f;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 525
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->close()V

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->r()V

    .line 528
    return-void
.end method

.method public e(J)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_ac

    .line 252
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_13

    move-wide v5, v0

    goto :goto_15

    :cond_13
    add-long v5, p1, v3

    .line 253
    :goto_15
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/bytedance/sdk/a/a/n;->a(BJJ)J

    move-result-wide v7

    .line 254
    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_2c

    iget-object p1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p1, v7, v8}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 255
    :cond_2c
    cmp-long v0, v5, v0

    if-gez v0, :cond_5a

    .line 256
    invoke-virtual {p0, v5, v6}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    sub-long v1, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5a

    add-long/2addr v3, v5

    .line 257
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    .line 258
    iget-object p1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p1, v5, v6}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 260
    :cond_5a
    new-instance v6, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v6}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;

    .line 262
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " content="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 263
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/a/c;->n()Lcom/bytedance/sdk/a/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2026

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v0, :cond_20

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 62
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/io/InputStream;
    .registers 2

    .line 475
    new-instance v0, Lcom/bytedance/sdk/a/a/n$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/n$1;-><init>(Lcom/bytedance/sdk/a/a/n;)V

    return-object v0
.end method

.method public g(J)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object p1

    return-object p1
.end method

.method public h()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v0

    return v0
.end method

.method public h(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v0, :cond_3b

    .line 359
    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3a

    .line 360
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    goto :goto_29

    .line 361
    :cond_23
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 363
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 364
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/a/c;->h(J)V

    .line 365
    sub-long/2addr p1, v0

    .line 366
    goto :goto_4

    .line 367
    :cond_3a
    return-void

    .line 358
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->i()S

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 519
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->j()I

    move-result v0

    return v0
.end method

.method public k()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->k()S

    move-result v0

    return v0
.end method

.method public l()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->l()I

    move-result v0

    return v0
.end method

.method public m()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 341
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 342
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v3

    .line 343
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_30

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_30

    goto :goto_32

    .line 341
    :cond_30
    move v1, v2

    goto :goto_7

    .line 345
    :cond_32
    :goto_32
    if-eqz v1, :cond_35

    goto :goto_4a

    .line 346
    :cond_35
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 347
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    .line 346
    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    .line 169
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/4 p1, -0x1

    return p1

    .line 172
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
