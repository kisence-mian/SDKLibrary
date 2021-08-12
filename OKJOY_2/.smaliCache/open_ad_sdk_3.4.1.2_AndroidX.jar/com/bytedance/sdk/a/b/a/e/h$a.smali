.class final Lcom/bytedance/sdk/a/b/a/e/h$a;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lcom/bytedance/sdk/a/a/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/e;)V
    .registers 2

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    .line 366
    return-void
.end method

.method private b()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    .line 396
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/a/e;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->a:I

    .line 397
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 398
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->b:B

    .line 399
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    iget v5, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->a:I

    iget-byte v6, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->b:B

    invoke-static {v3, v4, v5, v1, v6}, Lcom/bytedance/sdk/a/b/a/e/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 400
    :cond_3a
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    .line 401
    const/16 v4, 0x9

    const/4 v5, 0x0

    if-ne v1, v4, :cond_57

    .line 402
    if-ne v2, v0, :cond_4e

    .line 404
    return-void

    .line 403
    :cond_4e
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 401
    :cond_57
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1c

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    iget-short v3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->e:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 372
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->e:S

    .line 373
    iget-byte v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->b:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    return-wide v1

    .line 374
    :cond_18
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/h$a;->b()V

    goto :goto_0

    .line 378
    :cond_1c
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1

    .line 379
    cmp-long p3, p1, v1

    if-nez p3, :cond_2c

    return-wide v1

    .line 380
    :cond_2c
    iget p3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    .line 381
    return-wide p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    return-void
.end method
