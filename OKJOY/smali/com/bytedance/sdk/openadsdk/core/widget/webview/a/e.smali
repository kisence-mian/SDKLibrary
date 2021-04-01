.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;
    .registers 4

    .prologue
    .line 18
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 22
    :try_start_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_1c

    .line 25
    const-string v2, ".css"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 26
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    .line 38
    :cond_1c
    :goto_1c
    return-object v0

    .line 27
    :cond_1d
    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    goto :goto_1c

    .line 29
    :cond_28
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, ".png"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, ".webp"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 32
    :cond_58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5a} :catch_5b

    goto :goto_1c

    .line 35
    :catch_5b
    move-exception v1

    goto :goto_1c
.end method
