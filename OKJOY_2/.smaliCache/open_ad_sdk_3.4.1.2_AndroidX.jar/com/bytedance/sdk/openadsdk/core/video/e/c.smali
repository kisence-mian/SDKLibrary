.class public Lcom/bytedance/sdk/openadsdk/core/video/e/c;
.super Ljava/lang/Object;
.source "VideoPreloadUtils.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/i/f/b;)V
    .registers 9

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/f/b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/i/f/b;->c:Ljava/lang/String;

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/i/f/b;->b:I

    int-to-long v6, p0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->b()V

    .line 19
    goto :goto_22

    .line 20
    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f/a;->a()Lcom/bytedance/sdk/openadsdk/i/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/f/a;->a(Lcom/bytedance/sdk/openadsdk/i/f/b;)Z

    .line 22
    :goto_22
    return-void
.end method
