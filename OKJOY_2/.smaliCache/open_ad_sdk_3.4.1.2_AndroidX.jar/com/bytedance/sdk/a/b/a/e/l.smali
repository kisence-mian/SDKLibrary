.class final Lcom/bytedance/sdk/a/b/a/e/l;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->a:Ljava/util/concurrent/CountDownLatch;

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    .line 27
    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 33
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    .line 35
    return-void

    .line 33
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method b()V
    .registers 5

    .line 38
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    return-void

    .line 38
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method c()V
    .registers 5

    .line 44
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->b:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 45
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->c:J

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/l;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    return-void

    .line 44
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
