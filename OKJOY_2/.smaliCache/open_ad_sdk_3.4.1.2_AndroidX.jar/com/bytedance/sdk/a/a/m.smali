.class final Lcom/bytedance/sdk/a/a/m;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/d;


# instance fields
.field public final a:Lcom/bytedance/sdk/a/a/c;

.field public final b:Lcom/bytedance/sdk/a/a/r;

.field c:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/r;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    .line 30
    if-eqz p1, :cond_f

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    .line 32
    return-void

    .line 30
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    .line 45
    return-void

    .line 42
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 56
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/bytedance/sdk/a/a/c;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    return-object v0
.end method

.method public c([B)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 93
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([BII)Lcom/bytedance/sdk/a/a/d;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 100
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 271
    :cond_5
    const/4 v0, 0x0

    .line 273
    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v1, v1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 274
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v3, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    .line 278
    :cond_19
    goto :goto_1c

    .line 276
    :catchall_1a
    move-exception v0

    .line 277
    nop

    .line 281
    :goto_1c
    :try_start_1c
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/r;->close()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    .line 284
    goto :goto_26

    .line 282
    :catchall_22
    move-exception v1

    .line 283
    if-nez v0, :cond_26

    move-object v0, v1

    .line 285
    :cond_26
    :goto_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    .line 287
    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/u;->a(Ljava/lang/Throwable;)V

    .line 288
    :cond_2e
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_1d

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v1, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 257
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->flush()V

    .line 258
    return-void

    .line 253
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(I)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->d(I)Lcom/bytedance/sdk/a/a/c;

    .line 160
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 158
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(I)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->c(I)Lcom/bytedance/sdk/a/a/c;

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 144
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)Lcom/bytedance/sdk/a/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 137
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(J)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    .line 195
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 193
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(J)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->i(J)Lcom/bytedance/sdk/a/a/c;

    .line 188
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    return-object p1

    .line 186
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/bytedance/sdk/a/a/d;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_18

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->g()J

    move-result-wide v0

    .line 202
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 203
    :cond_17
    return-object p0

    .line 200
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_e

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    .line 110
    return p1

    .line 107
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
