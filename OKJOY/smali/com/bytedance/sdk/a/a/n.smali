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
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    .line 31
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_14
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    .line 33
    return-void
.end method


# virtual methods
.method public a(B)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 381
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_18

    cmp-long v0, p4, p2

    if-gez v0, :cond_64

    .line 383
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex=%s toIndex=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 384
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_35
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 387
    :goto_39
    cmp-long v0, v2, p4

    if-gez v0, :cond_62

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    move v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(BJJ)J

    move-result-wide v0

    .line 389
    cmp-long v4, v0, v6

    if-eqz v4, :cond_4a

    .line 399
    :goto_49
    return-wide v0

    .line 393
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 394
    cmp-long v4, v0, p4

    if-gez v4, :cond_60

    iget-object v4, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v5, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v4, v5, v8, v9}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_35

    :cond_60
    move-wide v0, v6

    goto :goto_49

    :cond_62
    move-wide v0, v6

    .line 399
    goto :goto_49

    :cond_64
    move-wide v2, p2

    goto :goto_39
.end method

.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 47
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_e
    cmp-long v2, p2, v4

    if-gez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2b
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v2, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_37
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4e

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    .line 53
    cmp-long v2, v2, v0

    if-nez v2, :cond_4e

    .line 57
    :goto_4d
    return-wide v0

    .line 56
    :cond_4e
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v2, p1, v0, v1}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    goto :goto_4d
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 69
    :cond_c
    return-void
.end method

.method public a([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->a(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_b

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a([B)V

    .line 150
    return-void

    .line 139
    :catch_b
    move-exception v0

    move-object v1, v0

    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_e
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2e

    .line 143
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v4, v3, Lcom/bytedance/sdk/a/a/c;->b:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, Lcom/bytedance/sdk/a/a/c;->a([BII)I

    move-result v2

    .line 144
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_2c
    add-int/2addr v0, v2

    .line 146
    goto :goto_e

    .line 147
    :cond_2e
    throw v1
.end method

.method public b(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1f
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_45

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    .line 78
    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x1

    goto :goto_44
.end method

.method public c()Lcom/bytedance/sdk/a/a/c;
    .registers 2

    .prologue
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

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->c(J)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_5

    .line 528
    :goto_4
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

    goto :goto_4
.end method

.method public e(J)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1f
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_43

    const-wide v4, 0x7fffffffffffffffL

    .line 253
    :goto_2d
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/n;->a(BJJ)J

    move-result-wide v0

    .line 254
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_42
    return-object v0

    .line 252
    :cond_43
    const-wide/16 v0, 0x1

    add-long v4, p1, v0

    goto :goto_2d

    .line 255
    :cond_48
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-gez v0, :cond_7f

    .line 256
    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7f

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7f

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/a/a/c;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 260
    :cond_7f
    new-instance v1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;

    .line 262
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/c;->n()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public f()Ljava/io/InputStream;
    .registers 2

    .prologue
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

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->g(J)[B

    move-result-object v0

    return-object v0
.end method

.method public h()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 358
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_e
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

    .line 359
    :cond_1e
    cmp-long v0, p1, v4

    if-lez v0, :cond_40

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 361
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 367
    :cond_40
    return-void
.end method

.method public i()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public j()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    const/4 v1, 0x0

    .line 339
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/a/n;->a(J)V

    move v0, v1

    .line 341
    :goto_7
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/a/n;->b(J)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 342
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v2

    .line 343
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x39

    if-le v2, v3, :cond_46

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_27

    const/16 v3, 0x66

    if-le v2, v3, :cond_46

    :cond_27
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x46

    if-le v2, v3, :cond_46

    .line 345
    :cond_2f
    if-nez v0, :cond_49

    .line 346
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 347
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    .line 346
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 353
    :cond_49
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

    .prologue
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

    .prologue
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

    const/4 v0, -0x1

    .line 172
    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
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
