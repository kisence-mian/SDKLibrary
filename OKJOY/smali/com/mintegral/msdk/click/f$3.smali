.class final Lcom/mintegral/msdk/click/f$3;
.super Landroid/webkit/WebChromeClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/f;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/f;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mintegral/msdk/click/f$3;->a:Lcom/mintegral/msdk/click/f;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6

    .prologue
    .line 329
    const/16 v0, 0x64

    if-ne p2, v0, :cond_4b

    .line 330
    :try_start_4
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u9875\u9762-\u8fdb\u5ea6\u5b8c\u6210\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$3;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->b(Lcom/mintegral/msdk/click/f;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/mintegral/msdk/click/f$3;->a:Lcom/mintegral/msdk/click/f;

    iget-boolean v0, v0, Lcom/mintegral/msdk/click/f;->c:Z

    if-nez v0, :cond_36

    .line 335
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$3;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->m(Lcom/mintegral/msdk/click/f;)V

    .line 338
    :cond_36
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$3;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$3;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/click/f$a;->c(Ljava/lang/String;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_4c

    .line 345
    :cond_4b
    :goto_4b
    return-void

    .line 343
    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b
.end method
