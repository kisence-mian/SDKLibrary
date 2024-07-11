.class Lcom/bytedance/sdk/a/b/a/d/a$c;
.super Lcom/bytedance/sdk/a/b/a/d/a$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Lcom/bytedance/sdk/a/b/a/d/a;

.field private final f:Lcom/bytedance/sdk/a/b/s;

.field private g:J

.field private h:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/s;)V
    .registers 5

    .line 475
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/d/a$a;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/a/d/a$1;)V

    .line 472
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    .line 473
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->h:Z

    .line 476
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->f:Lcom/bytedance/sdk/a/b/s;

    .line 477
    return-void
.end method

.method private b()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->p()Ljava/lang/String;

    .line 506
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-wide v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_39} :catch_83

    if-eqz v1, :cond_5e

    .line 514
    :cond_3b
    nop

    .line 515
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_5d

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->h:Z

    .line 517
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->f()Lcom/bytedance/sdk/a/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->f:Lcom/bytedance/sdk/a/b/s;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/d/a;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/m;Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)V

    .line 518
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a$c;->a(ZLjava/io/IOException;)V

    .line 520
    :cond_5d
    return-void

    .line 509
    :cond_5e
    :try_start_5e
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_83} :catch_83

    .line 512
    :catch_83
    move-exception v0

    .line 513
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    .line 482
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->b:Z

    if-nez v2, :cond_43

    .line 483
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->h:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    .line 485
    :cond_11
    iget-wide v5, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1b

    cmp-long v0, v5, v3

    if-nez v0, :cond_23

    .line 486
    :cond_1b
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/d/a$c;->b()V

    .line 487
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->h:Z

    if-nez v0, :cond_23

    return-wide v3

    .line 490
    :cond_23
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/d/a$a;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1

    .line 491
    cmp-long p3, p1, v3

    if-eqz p3, :cond_37

    .line 496
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->g:J

    .line 497
    return-wide p1

    .line 492
    :cond_37
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 493
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/a/b/a/d/a$c;->a(ZLjava/io/IOException;)V

    .line 494
    throw p1

    .line 482
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_4b
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
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 525
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->h:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a$c;->a(ZLjava/io/IOException;)V

    .line 528
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$c;->b:Z

    .line 529
    return-void
.end method
