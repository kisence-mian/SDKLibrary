.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;
.super Ljava/lang/Object;
.source "CloseableUtils.java"


# direct methods
.method public static a(Landroid/database/Cursor;)Z
    .registers 3

    .line 35
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 36
    return v0

    .line 39
    :cond_4
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    .line 43
    nop

    .line 44
    return v0

    .line 40
    :catch_9
    move-exception p0

    .line 41
    const-string v0, "gecko-debug-tag"

    const-string v1, "close:"

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/Closeable;)Z
    .registers 3

    .line 22
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 23
    return v0

    .line 26
    :cond_4
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_9

    .line 30
    nop

    .line 31
    return v0

    .line 27
    :catch_9
    move-exception p0

    .line 28
    const-string v0, "gecko-debug-tag"

    const-string v1, "close:"

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    const/4 p0, 0x0

    return p0
.end method
