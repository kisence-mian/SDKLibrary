.class public Lcom/kwad/sdk/core/page/widget/webview/c;
.super Landroid/webkit/WebViewClient;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 6

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_10

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    return v1

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
