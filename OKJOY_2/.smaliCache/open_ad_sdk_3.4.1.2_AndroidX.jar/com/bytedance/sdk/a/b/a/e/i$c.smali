.class Lcom/bytedance/sdk/a/b/a/e/i$c;
.super Lcom/bytedance/sdk/a/a/a;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/bytedance/sdk/a/b/a/e/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/i;)V
    .registers 2

    .line 622
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$c;->b:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a_()V
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$c;->b:Lcom/bytedance/sdk/a/b/a/e/i;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/i;->b(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 626
    return-void
.end method

.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 630
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 631
    if-eqz p1, :cond_c

    .line 632
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 634
    :cond_c
    return-object v0
.end method

.method public h()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 639
    return-void

    .line 638
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
