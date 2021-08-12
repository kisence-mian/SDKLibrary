.class Lcom/bytedance/sdk/openadsdk/j/b;
.super Ljava/lang/Object;
.source "DelegateRunnable.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/j/g;

.field private b:Lcom/bytedance/sdk/openadsdk/j/a;

.field private c:J

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/j/g;Lcom/bytedance/sdk/openadsdk/j/a;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->b:Lcom/bytedance/sdk/openadsdk/j/a;

    .line 16
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/j/b;->c:J

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->d:Ljava/lang/Thread;

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    .line 22
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/b;->b:Lcom/bytedance/sdk/openadsdk/j/a;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/j/b;->c:J

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/j/g;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 56
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/j/b;

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/b;->a()Lcom/bytedance/sdk/openadsdk/j/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/g;->a(Lcom/bytedance/sdk/openadsdk/j/g;)I

    move-result p1

    return p1

    .line 59
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 69
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/j/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/b;->a()Lcom/bytedance/sdk/openadsdk/j/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 7

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/j/b;->c:J

    sub-long v2, v0, v2

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/j/b;->d:Ljava/lang/Thread;

    .line 32
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Lcom/bytedance/sdk/openadsdk/j/g;

    if-eqz v4, :cond_15

    .line 33
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/j/g;->run()V

    .line 35
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->b:Lcom/bytedance/sdk/openadsdk/j/a;

    if-eqz v0, :cond_21

    .line 37
    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/j/d;->a(Lcom/bytedance/sdk/openadsdk/j/a;JJ)V

    .line 39
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: pool  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/b;->b:Lcom/bytedance/sdk/openadsdk/j/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " waitTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskCost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelegateRunnable"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
