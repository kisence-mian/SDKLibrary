.class Lcom/bytedance/sdk/a/b/a/d/a$e;
.super Lcom/bytedance/sdk/a/b/a/d/a$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic e:Lcom/bytedance/sdk/a/b/a/d/a;

.field private f:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 427
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/a/b/a/d/a$a;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/a/d/a$1;)V

    .line 428
    iput-wide p2, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    .line 429
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/bytedance/sdk/a/b/a/d/a$e;->a(ZLjava/io/IOException;)V

    .line 432
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v4, 0x0

    .line 436
    cmp-long v2, p2, v4

    if-gez v2, :cond_21

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

    .line 437
    :cond_21
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->b:Z

    if-eqz v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_2d
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_34

    .line 451
    :goto_33
    return-wide v0

    .line 440
    :cond_34
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lcom/bytedance/sdk/a/b/a/d/a$a;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    .line 441
    cmp-long v0, v2, v0

    if-nez v0, :cond_4e

    .line 442
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/a/b/a/d/a$e;->a(ZLjava/io/IOException;)V

    .line 444
    throw v0

    .line 447
    :cond_4e
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    .line 448
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5e

    .line 449
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a$e;->a(ZLjava/io/IOException;)V

    :cond_5e
    move-wide v0, v2

    .line 451
    goto :goto_33
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->b:Z

    if-eqz v0, :cond_5

    .line 463
    :goto_4
    return-void

    .line 458
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 459
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a$e;->a(ZLjava/io/IOException;)V

    .line 462
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$e;->b:Z

    goto :goto_4
.end method
