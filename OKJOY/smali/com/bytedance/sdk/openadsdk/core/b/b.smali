.class public Lcom/bytedance/sdk/openadsdk/core/b/b;
.super Ljava/lang/Object;
.source "FrequentCallControllerAdapter.java"


# direct methods
.method public static a()Z
    .registers 1

    .prologue
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/b;->c()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Z

    move-result v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/b;->d()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
