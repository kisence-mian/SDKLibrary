.class Lcom/tencent/smtt/sdk/JsVirtualMachine$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/JsVirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {v0, p1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onPause()V

    goto :goto_4
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    goto :goto_4
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->freeMemory()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->pauseTimers()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    goto :goto_4
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, p1, v0}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_4

    :cond_e
    new-instance v0, Lcom/tencent/smtt/sdk/e;

    invoke-direct {v0, p0, p2}, Lcom/tencent/smtt/sdk/e;-><init>(Lcom/tencent/smtt/sdk/JsVirtualMachine$a;Landroid/webkit/ValueCallback;)V

    goto :goto_a
.end method

.method public evaluateScript(Ljava/lang/String;Ljava/net/URL;)Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_6

    :goto_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_5
.end method

.method public evaluateScriptAsync(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, p1, v0}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_4

    :cond_e
    new-instance v0, Lcom/tencent/smtt/sdk/f;

    invoke-direct {v0, p0, p2}, Lcom/tencent/smtt/sdk/f;-><init>(Lcom/tencent/smtt/sdk/JsVirtualMachine$a;Landroid/webkit/ValueCallback;)V

    goto :goto_a
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsVirtualMachine$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setExceptionHandler(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setPerContextData(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public stealValueFromOtherCtx(Ljava/lang/String;Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;Ljava/lang/String;)V
    .registers 4

    return-void
.end method
