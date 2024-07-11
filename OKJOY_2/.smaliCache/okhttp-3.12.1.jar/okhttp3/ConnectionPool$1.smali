.class Lokhttp3/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/ConnectionPool;


# direct methods
.method constructor <init>(Lokhttp3/ConnectionPool;)V
    .registers 2
    .param p1, "this$0"    # Lokhttp3/ConnectionPool;

    .line 57
    iput-object p1, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 60
    :goto_0
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/ConnectionPool;->cleanup(J)J

    move-result-wide v0

    .line 61
    .local v0, "waitNanos":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    return-void

    .line 62
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_30

    .line 63
    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 64
    .local v4, "waitMillis":J
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 65
    .end local v0    # "waitNanos":J
    .local v2, "waitNanos":J
    iget-object v6, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    monitor-enter v6

    .line 67
    :try_start_22
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    long-to-int v1, v2

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_2b
    .catchall {:try_start_22 .. :try_end_28} :catchall_29

    .line 69
    goto :goto_2c

    .line 70
    :catchall_29
    move-exception v0

    goto :goto_2e

    .line 68
    :catch_2b
    move-exception v0

    .line 70
    :goto_2c
    :try_start_2c
    monitor-exit v6

    goto :goto_30

    :goto_2e
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    throw v0

    .line 72
    .end local v2    # "waitNanos":J
    .end local v4    # "waitMillis":J
    :cond_30
    :goto_30
    goto :goto_0
.end method
