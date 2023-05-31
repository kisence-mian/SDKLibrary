.class Lcom/tencent/smtt/sdk/SystemWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/SystemWebChromeClient$c;,
        Lcom/tencent/smtt/sdk/SystemWebChromeClient$b;,
        Lcom/tencent/smtt/sdk/SystemWebChromeClient$f;,
        Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;,
        Lcom/tencent/smtt/sdk/SystemWebChromeClient$d;,
        Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/smtt/sdk/WebView;

.field private b:Lcom/tencent/smtt/sdk/WebChromeClient;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebChromeClient;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1b

    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1b

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080024

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1c

    move-result-object v0

    :cond_1b
    :goto_1b
    return-object v0

    :catch_1c
    move-exception v1

    goto :goto_1b
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/y;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/y;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->getVisitedHistory(Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCloseWindow(Lcom/tencent/smtt/sdk/WebView;)V

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;

    invoke-direct {v1, p1, p3, p2}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;

    invoke-direct {v1, p1}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$a;-><init>(Landroid/webkit/ConsoleMessage;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 8

    new-instance v0, Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView$WebViewTransport;-><init>(Lcom/tencent/smtt/sdk/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/smtt/sdk/z;

    invoke-direct {v2, p0, v0, p4}, Lcom/tencent/smtt/sdk/z;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Lcom/tencent/smtt/sdk/WebView$WebViewTransport;Landroid/os/Message;)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2, p2, p3, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCreateWindow(Lcom/tencent/smtt/sdk/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 23
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v3, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v12, Lcom/tencent/smtt/sdk/SystemWebChromeClient$f;

    move-object/from16 v0, p9

    invoke-direct {v12, p0, v0}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$f;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/WebStorage$QuotaUpdater;)V

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v12}, Lcom/tencent/smtt/sdk/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient$c;

    invoke-direct {v1, p0, p2}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$c;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback;)V

    return-void
.end method

.method public onHideCustomView()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v2, Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;

    invoke-direct {v2, p0, p4}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v2, Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;

    invoke-direct {v2, p0, p4}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsBeforeUnload(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v2, Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;

    invoke-direct {v2, p0, p4}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$e;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v5, Lcom/tencent/smtt/sdk/SystemWebChromeClient$d;

    invoke-direct {v5, p0, p5}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$d;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/JsPromptResult;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onJsTimeout()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v6, Lcom/tencent/smtt/sdk/SystemWebChromeClient$f;

    invoke-direct {v6, p0, p5}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$f;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/WebStorage$QuotaUpdater;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReachedMaxAppCacheSize(JJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedIcon(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTouchIconUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onRequestFocus(Lcom/tencent/smtt/sdk/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient$b;

    invoke-direct {v1, p0, p3}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$b;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;ILcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient$b;

    invoke-direct {v1, p0, p2}, Lcom/tencent/smtt/sdk/SystemWebChromeClient$b;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    new-instance v0, Lcom/tencent/smtt/sdk/ab;

    invoke-direct {v0, p0, p2}, Lcom/tencent/smtt/sdk/ab;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/ValueCallback;)V

    new-instance v1, Lcom/tencent/smtt/sdk/ac;

    invoke-direct {v1, p0, p3}, Lcom/tencent/smtt/sdk/ac;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebChromeClient;->b:Lcom/tencent/smtt/sdk/WebChromeClient;

    new-instance v1, Lcom/tencent/smtt/sdk/aa;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/aa;-><init>(Lcom/tencent/smtt/sdk/SystemWebChromeClient;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .registers 2

    return-void
.end method
