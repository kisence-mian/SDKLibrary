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

    .prologue
    .line 538
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->e:Lcom/bytedance/sdk/a/b/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/d/a$a;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/a/d/a$1;)V

    .line 539
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
    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    .line 544
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_22

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

    .line 545
    :cond_22
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->b:Z

    if-eqz v2, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_2e
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->f:Z

    if-eqz v2, :cond_33

    .line 554
    :goto_32
    return-wide v0

    .line 548
    :cond_33
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/d/a$a;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    .line 549
    cmp-long v4, v2, v0

    if-nez v4, :cond_42

    .line 550
    iput-boolean v5, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->f:Z

    .line 551
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/bytedance/sdk/a/b/a/d/a$f;->a(ZLjava/io/IOException;)V

    goto :goto_32

    :cond_42
    move-wide v0, v2

    .line 554
    goto :goto_32
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$f;->b:Z

    if-eqz v0, :cond_5

    .line 564
    :goto_4
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

    goto :goto_4
.end method
