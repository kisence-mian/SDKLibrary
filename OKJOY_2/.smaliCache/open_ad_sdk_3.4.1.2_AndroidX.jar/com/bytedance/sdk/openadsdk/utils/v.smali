.class public Lcom/bytedance/sdk/openadsdk/utils/v;
.super Ljava/lang/Object;
.source "MemorySize.java"


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 9

    .line 16
    const-string v0, ", "

    const-string v1, "getAvailableSize="

    const-string v2, "MemorySize"

    .line 18
    const-wide/16 v3, 0x0

    :try_start_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 19
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    .line 21
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    int-to-long v3, v3

    .line 22
    mul-long/2addr v3, v6

    .line 26
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2a

    .line 24
    :catchall_24
    move-exception v5

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    nop

    .line 28
    return-wide v3
.end method
