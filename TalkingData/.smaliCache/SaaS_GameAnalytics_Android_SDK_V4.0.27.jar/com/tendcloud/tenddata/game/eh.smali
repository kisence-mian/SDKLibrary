.class public Lcom/tendcloud/tenddata/game/eh;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 14
    invoke-static {}, Lcom/tendcloud/tenddata/game/eh;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bootTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "activeTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/tendcloud/tenddata/game/eh;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "freeDiskSpace"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static b()I
    .registers 2

    .line 22
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->s()[I

    move-result-object v0

    .line 24
    if-eqz v0, :cond_a

    .line 25
    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_b

    return v0

    .line 31
    :cond_a
    goto :goto_c

    .line 27
    :catchall_b
    move-exception v0

    .line 32
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public static c()J
    .registers 4

    .line 36
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_a

    sub-long/2addr v0, v2

    return-wide v0

    .line 37
    :catchall_a
    move-exception v0

    .line 40
    const-wide/16 v0, -0x1

    return-wide v0
.end method
