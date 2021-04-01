.class Lcom/bytedance/sdk/a/a/n$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/n;->f()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/n;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/n;)V
    .registers 2

    .prologue
    .line 475
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/n;->close()V

    .line 508
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    .line 481
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    const/4 v0, -0x1

    .line 483
    :goto_2f
    return v0

    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_2f
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/a/n;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_e
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    iget-wide v0, v0, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->b:Lcom/bytedance/sdk/a/a/s;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    .line 493
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    const/4 v0, -0x1

    .line 496
    :goto_36
    return v0

    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/n;->a:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a([BII)I

    move-result v0

    goto :goto_36
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/n$1;->a:Lcom/bytedance/sdk/a/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
