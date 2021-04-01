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

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    .line 366
    return-void
.end method

.method private b()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

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

    if-eqz v2, :cond_3b

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->a:I

    iget-byte v5, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->b:B

    invoke-static {v7, v3, v4, v1, v5}, Lcom/bytedance/sdk/a/b/a/e/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 400
    :cond_3b
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    .line 401
    const/16 v2, 0x9

    if-eq v1, v2, :cond_5a

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 402
    :cond_5a
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    if-eq v1, v0, :cond_67

    .line 403
    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 404
    :cond_67
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

    .line 370
    :goto_2
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    if-nez v2, :cond_1c

    .line 371
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    iget-short v3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 372
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->e:S

    .line 373
    iget-byte v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    .line 381
    :cond_17
    :goto_17
    return-wide v0

    .line 374
    :cond_18
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/h$a;->b()V

    goto :goto_2

    .line 378
    :cond_1c
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->f:Lcom/bytedance/sdk/a/a/e;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    .line 379
    cmp-long v4, v2, v0

    if-eqz v4, :cond_17

    .line 380
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    move-wide v0, v2

    .line 381
    goto :goto_17
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
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

    .prologue
    .line 391
    return-void
.end method
