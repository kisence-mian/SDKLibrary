.class public Lcom/bytedance/sdk/openadsdk/a/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    const-string v0, "open_news"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    const-string v0, "1371"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    const-string v0, "2.9.5.3"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
