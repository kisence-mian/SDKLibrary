.class Lcom/bytedance/sdk/a/b/a/d/a$f;
.super Lcom/bytedance/sdk/a/b/a/d/a$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Lcom/bytedance/sdk/a/b/a/d/a;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;)V
    .registers 3

    .line 538
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/d/a$a;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/a/d/a$1;)V

    .line 539
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2a

    .line 545
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->b:Z

    if-nez v0, :cond_22

    .line 546
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->f:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    return-wide v1

    .line 548
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/d/a$a;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1

    .line 549
    cmp-long p3, p1, v1

    if-nez p3, :cond_21

    .line 550
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->f:Z

    .line 551
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/d/a$f;->a(ZLjava/io/IOException;)V

    .line 552
    return-wide v1

    .line 554
    :cond_21
    return-wide p1

    .line 545
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 544
    :cond_2a
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

    .line 559
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 560
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->f:Z

    if-nez v0, :cond_e

    .line 561
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a$f;->a(ZLjava/io/IOException;)V

    .line 563
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->b:Z

    .line 564
    return-void
.end method
