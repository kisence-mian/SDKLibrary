.class Lcom/bytedance/sdk/a/b/j$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/j;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/j;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/j;->a(J)J

    move-result-wide v0

    .line 63
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    return-void

    .line 64
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2f

    .line 65
    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 66
    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v2

    .line 69
    :try_start_21
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    long-to-int v0, v0

    invoke-virtual {v3, v4, v5, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_27} :catch_2a
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    .line 71
    goto :goto_2b

    .line 72
    :catchall_28
    move-exception v0

    goto :goto_2d

    .line 70
    :catch_2a
    move-exception v0

    .line 72
    :goto_2b
    :try_start_2b
    monitor-exit v2

    goto :goto_2f

    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    throw v0

    .line 74
    :cond_2f
    :goto_2f
    goto :goto_0
.end method
