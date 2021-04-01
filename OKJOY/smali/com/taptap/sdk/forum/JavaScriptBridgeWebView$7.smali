.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;
.super Landroid/webkit/WebChromeClient;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 812
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 814
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 820
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 822
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_e
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 828
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 832
    :goto_d
    return-void

    .line 830
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_d
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 600
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 604
    :goto_d
    return-void

    .line 602
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_d
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 794
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    :goto_d
    return-void

    .line 796
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 803
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 805
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_e
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 582
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 585
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_e
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 21
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_17

    .line 727
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 733
    :goto_16
    return-void

    .line 730
    :cond_17
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_16
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 755
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 759
    :goto_d
    return-void

    .line 757
    :cond_e
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_d
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 746
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 750
    :goto_d
    return-void

    .line 748
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_d
.end method

.method public onHideCustomView()V
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 572
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 576
    :goto_d
    return-void

    .line 574
    :cond_e
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_d
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v4, 0x1

    .line 608
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 609
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 611
    :cond_c
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_1d

    .line 612
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 630
    :goto_1c
    return v4

    .line 616
    :cond_1d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 618
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$1;

    invoke-direct {v3, p0, p4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$1;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V

    .line 619
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 629
    .local v0, "alertDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1c
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 716
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 718
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_e
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v3, 0x1

    .line 636
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 637
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 639
    :cond_c
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 659
    :goto_1c
    return v3

    .line 642
    :cond_1d
    new-instance v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;

    invoke-direct {v0, p0, p4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$2;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V

    .line 654
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 655
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 656
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 657
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 658
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1c
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 19
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 668
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 669
    invoke-virtual/range {p5 .. p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 671
    :cond_b
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 672
    const/4 v1, 0x1

    .line 708
    :goto_24
    return v1

    .line 674
    :cond_25
    new-instance v8, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 675
    .local v8, "editText":Landroid/widget/EditText;
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 676
    if-eqz p4, :cond_3e

    .line 677
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 679
    :cond_3e
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 680
    .local v7, "dpi":F
    new-instance v10, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$3;

    move-object/from16 v0, p5

    invoke-direct {v10, p0, v0, v8}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7$3;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 692
    .local v10, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 693
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 694
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 695
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 696
    invoke-virtual {v1, v2, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 697
    invoke-virtual {v1, v2, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 698
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 699
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v9, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 702
    .local v9, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v7

    float-to-int v12, v1

    .line 703
    .local v12, "t":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v12, v1, v12, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 704
    const/4 v1, 0x1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 705
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, v7

    float-to-int v11, v1

    .line 707
    .local v11, "padding":I
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    sub-int v1, v11, v1

    invoke-virtual {v8, v1, v11, v11, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 708
    const/4 v1, 0x1

    goto :goto_24
.end method

.method public onJsTimeout()Z
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 786
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    .line 788
    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    goto :goto_e
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/webkit/PermissionRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 765
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 766
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 770
    :goto_d
    return-void

    .line 768
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_d
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/webkit/PermissionRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 777
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 781
    :goto_d
    return-void

    .line 779
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_d
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 516
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 520
    :goto_d
    return-void

    .line 518
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_d
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 13
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_10

    .line 738
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 740
    :cond_10
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 741
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 534
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 538
    :goto_d
    return-void

    .line 536
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_d
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 525
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 529
    :goto_d
    return-void

    .line 527
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 542
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 543
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 547
    :goto_d
    return-void

    .line 545
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 591
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 595
    :goto_d
    return-void

    .line 593
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_d
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 563
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 567
    :goto_d
    return-void

    .line 565
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_d
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 552
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 556
    :goto_d
    return-void

    .line 554
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_d
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

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

    .prologue
    .line 838
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 839
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    .line 842
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    goto :goto_e
.end method
