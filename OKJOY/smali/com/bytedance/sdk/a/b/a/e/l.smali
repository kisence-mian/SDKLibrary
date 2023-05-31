.class final Lcom/bytedance/sdk/a/b/a/e/l;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->a:Ljava/util/concurrent/CountDownLatch;

    .line 26
    iput-wide v2, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    .line 27
    iput-wide v2, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 34
    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    .line 35
    return-void
.end method

.method b()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 38
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 39
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    return-void
.end method

.method c()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 44
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 45
    :cond_14
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    return-void
.end method
