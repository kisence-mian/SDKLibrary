.class Lcom/sigmob/sdk/mraid/a$1;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a$1;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a$1;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a$1;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/a$b;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_13
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a$1;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a$1;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/sigmob/sdk/mraid/a$b;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
