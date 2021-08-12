.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/c;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .registers 4

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/e;->a()Z

    move-result v0

    const-string v1, "throwIfDebug:"

    const-string v2, "gecko-debug-tag"

    if-nez v0, :cond_e

    .line 14
    invoke-static {v2, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void

    .line 11
    :cond_e
    invoke-static {v2, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
