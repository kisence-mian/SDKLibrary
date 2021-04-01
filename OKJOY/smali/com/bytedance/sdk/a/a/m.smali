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
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    .line 30
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_14
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/c;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    return-object v0
.end method

.method public c([B)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)Lcom/bytedance/sdk/a/a/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->b([BII)Lcom/bytedance/sdk/a/a/c;

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_5

    .line 288
    :cond_4
    :goto_4
    return-void

    .line 271
    :cond_5
    const/4 v0, 0x0

    .line 273
    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 274
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v4, v3, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-interface {v1, v2, v4, v5}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_2e

    .line 281
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/r;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_29

    .line 285
    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    .line 287
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/u;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 282
    :catch_29
    move-exception v1

    .line 283
    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20

    .line 276
    :catch_2e
    move-exception v0

    goto :goto_1b
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/a/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 257
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->flush()V

    .line 258
    return-void
.end method

.method public g(I)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->d(I)Lcom/bytedance/sdk/a/a/c;

    .line 160
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->c(I)Lcom/bytedance/sdk/a/a/c;

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/bytedance/sdk/a/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public k(J)Lcom/bytedance/sdk/a/a/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->j(J)Lcom/bytedance/sdk/a/a/c;

    .line 195
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public l(J)Lcom/bytedance/sdk/a/a/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/c;->i(J)Lcom/bytedance/sdk/a/a/c;

    .line 188
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
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

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->g()J

    move-result-wide v0

    .line 202
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1f

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/m;->b:Lcom/bytedance/sdk/a/a/r;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 203
    :cond_1f
    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/m;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/m;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/m;->u()Lcom/bytedance/sdk/a/a/d;

    .line 110
    return v0
.end method
