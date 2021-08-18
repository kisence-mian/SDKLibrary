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

    .line 56
    iput-object p1, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 59
    :goto_0
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/ConnectionPool;->cleanup(J)J

    move-result-wide v0

    .line 60
    .local v0, "waitNanos":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    .line 61
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_31

    .line 62
    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 63
    .local v4, "waitMillis":J
    mul-long v2, v2, v4

    sub-long v2, v0, v2

    .line 64
    .end local v0    # "waitNanos":J
    .local v2, "waitNanos":J
    iget-object v6, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    monitor-enter v6

    .line 66
    :try_start_23
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;

    long-to-int v1, v2

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_29} :catch_2c
    .catchall {:try_start_23 .. :try_end_29} :catchall_2a

    .line 68
    goto :goto_2d

    .line 69
    :catchall_2a
    move-exception v0

    goto :goto_2f

    .line 67
    :catch_2c
    move-exception v0

    .line 69
    :goto_2d
    :try_start_2d
    monitor-exit v6

    goto :goto_31

    :goto_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    throw v0

    .line 71
    .end local v2    # "waitNanos":J
    .end local v4    # "waitMillis":J
    :cond_31
    :goto_31
    goto :goto_0
.end method
