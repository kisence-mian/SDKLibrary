.class public Lcom/bytedance/sdk/openadsdk/utils/r;
.super Ljava/lang/Object;
.source "JsBridgeUtils.java"


# direct methods
.method public static a(Landroid/webkit/WebView;I)Ljava/lang/String;
    .registers 4

    .line 28
    const-string v0, ""

    if-nez p0, :cond_5

    .line 29
    return-object v0

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 33
    return-object v0

    .line 36
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    const-string p0, " open_news"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " open_news_u_s/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 18
    if-eqz p1, :cond_25

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 20
    :try_start_8
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 23
    goto :goto_25

    .line 21
    :catch_c
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TTAndroidObj handleUri exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebView"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_25
    :goto_25
    return-void
.end method
