.class final Lcom/bytedance/sdk/a/b/a/d/a$d;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/a/d/a;

.field private final b:Lcom/bytedance/sdk/a/a/i;

.field private c:Z

.field private d:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;J)V
    .registers 6

    .prologue
    .line 297
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/bytedance/sdk/a/a/i;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/d;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/i;-><init>(Lcom/bytedance/sdk/a/a/t;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->b:Lcom/bytedance/sdk/a/a/i;

    .line 298
    iput-wide p2, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->d:J

    .line 299
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->b:Lcom/bytedance/sdk/a/a/i;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_c
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/c;->a(JJJ)V

    .line 310
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_41

    .line 311
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_41
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 315
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->d:J

    .line 316
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->c:Z

    if-eqz v0, :cond_5

    .line 332
    :goto_4
    return-void

    .line 328
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->c:Z

    .line 329
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->b:Lcom/bytedance/sdk/a/a/i;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/a/i;)V

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    goto :goto_4
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->c:Z

    if-eqz v0, :cond_5

    .line 323
    :goto_4
    return-void

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$d;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V

    goto :goto_4
.end method
