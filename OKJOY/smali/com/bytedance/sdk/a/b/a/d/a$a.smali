.class abstract Lcom/bytedance/sdk/a/b/a/d/a$a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/bytedance/sdk/a/a/i;

.field protected b:Z

.field protected c:J

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/d/a;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;)V
    .registers 4

    .prologue
    .line 379
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Lcom/bytedance/sdk/a/a/i;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/a/i;-><init>(Lcom/bytedance/sdk/a/a/t;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->a:Lcom/bytedance/sdk/a/a/i;

    .line 382
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/a/d/a$1;)V
    .registers 3

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/d/a$a;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    .line 393
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    .line 394
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->c:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 396
    :cond_13
    return-wide v0

    .line 397
    :catch_14
    move-exception v0

    .line 398
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/a/b/a/d/a$a;->a(ZLjava/io/IOException;)V

    .line 399
    throw v0
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->a:Lcom/bytedance/sdk/a/a/i;

    return-object v0
.end method

.method protected final a(ZLjava/io/IOException;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    if-ne v0, v2, :cond_8

    .line 418
    :cond_7
    :goto_7
    return-void

    .line 409
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2c

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget v2, v2, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->a:Lcom/bytedance/sdk/a/a/i;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/a/i;)V

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iput v2, v0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    if-eqz v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    if-nez p1, :cond_4d

    const/4 v2, 0x1

    :goto_44
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->d:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/d/a$a;->c:J

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/b/g;->a(ZLcom/bytedance/sdk/a/b/a/c/c;JLjava/io/IOException;)V

    goto :goto_7

    :cond_4d
    const/4 v2, 0x0

    goto :goto_44
.end method
