.class public Lcom/bytedance/sdk/openadsdk/playable/f;
.super Ljava/lang/Object;
.source "PlayableWebSettings.java"


# direct methods
.method private static a(Landroid/webkit/WebSettings;)V
    .registers 3

    .line 26
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 31
    :cond_a
    goto :goto_13

    .line 29
    :catchall_b
    move-exception p0

    .line 30
    const-string v0, "WebViewSettings"

    const-string v1, "allowMediaPlayWithoutUserGesture error"

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_13
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 7

    .line 35
    const-string v0, "WebViewSettings"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/playable/f;->b(Landroid/webkit/WebView;)V

    .line 36
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/playable/f;->a(Landroid/webkit/WebSettings;)V

    .line 38
    if-nez v1, :cond_f

    .line 39
    return-void

    .line 44
    :cond_f
    const/4 v2, 0x1

    :try_start_10
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 47
    goto :goto_1a

    .line 45
    :catchall_14
    move-exception v3

    .line 46
    const-string v4, "setJavaScriptEnabled error"

    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_1a
    const/4 v3, 0x0

    :try_start_1b
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 53
    goto :goto_25

    .line 51
    :catchall_1f
    move-exception v4

    .line 52
    const-string v5, "setSupportZoom error"

    invoke-static {v0, v5, v4}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :goto_25
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 59
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 60
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    .line 65
    :goto_3f
    :try_start_3f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-lt v1, v4, :cond_4c

    if-nez v2, :cond_4c

    .line 66
    invoke-virtual {p0, v3, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_58

    .line 67
    :cond_4c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_58

    if-eqz v2, :cond_58

    .line 68
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_59

    .line 72
    :cond_58
    :goto_58
    goto :goto_5f

    .line 70
    :catchall_59
    move-exception v1

    .line 71
    const-string v2, "setLayerType error"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_5f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6c

    .line 75
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 77
    :cond_6c
    return-void
.end method

.method private static b(Landroid/webkit/WebView;)V
    .registers 3

    .line 15
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 16
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 17
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 20
    goto :goto_18

    .line 18
    :catchall_10
    move-exception p0

    .line 19
    const-string v0, "WebViewSettings"

    const-string v1, "removeJavascriptInterfacesSafe error"

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_18
    return-void
.end method
