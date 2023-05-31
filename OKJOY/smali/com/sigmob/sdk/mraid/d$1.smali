.class Lcom/sigmob/sdk/mraid/d$1;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d$1;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$1;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$1;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/f;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_12
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$1;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$1;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/sigmob/sdk/mraid/f;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_12
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
