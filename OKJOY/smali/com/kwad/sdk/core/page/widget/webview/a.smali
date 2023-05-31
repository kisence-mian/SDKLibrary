.class public Lcom/kwad/sdk/core/page/widget/webview/a;
.super Landroid/webkit/WebChromeClient;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 13

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_14
    return v1

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    goto :goto_14
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
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
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    instance-of v1, p1, Lcom/kwad/sdk/core/page/widget/webview/b;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/b;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;->a(Landroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
