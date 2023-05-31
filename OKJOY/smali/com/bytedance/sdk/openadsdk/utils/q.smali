.class public Lcom/bytedance/sdk/openadsdk/utils/q;
.super Ljava/lang/Object;
.source "JsBridgeUtils.java"


# direct methods
.method public static a(Landroid/webkit/WebView;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 28
    if-nez p0, :cond_5

    .line 29
    const-string v0, ""

    .line 39
    :goto_4
    return-object v0

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 33
    const-string v0, ""

    goto :goto_4

    .line 36
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v0, " open_news"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " open_news_u_s/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 6

    .prologue
    .line 18
    if-eqz p1, :cond_b

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 20
    :try_start_8
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 25
    :cond_b
    :goto_b
    return-void

    .line 21
    :catch_c
    move-exception v0

    .line 22
    const-string v1, "WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTAndroidObj handleUri exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
