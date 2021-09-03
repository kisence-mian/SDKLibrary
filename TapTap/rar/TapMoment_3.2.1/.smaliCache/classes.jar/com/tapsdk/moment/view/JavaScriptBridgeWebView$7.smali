.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;
.super Landroid/webkit/WebChromeClient;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 504
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 805
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 807
    :cond_f
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 812
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 813
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 815
    :cond_f
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 821
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_11

    .line 823
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 825
    :goto_11
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "window"    # Landroid/webkit/WebView;

    .line 592
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 593
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_11

    .line 595
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 597
    :goto_11
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 787
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_11

    .line 789
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 791
    :goto_11
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .line 795
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 796
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0

    .line 798
    :cond_f
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .line 574
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 575
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0

    .line 578
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .line 719
    move-object v0, p0

    iget-object v1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_18

    .line 720
    iget-object v1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v2, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_1b

    .line 723
    :cond_18
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 726
    :goto_1b
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 748
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_11

    .line 750
    :cond_e
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 752
    :goto_11
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 738
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 739
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_11

    .line 741
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 743
    :goto_11
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 565
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_11

    .line 567
    :cond_e
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 569
    :goto_11
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 601
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$900(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 602
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 604
    :cond_b
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 605
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 606
    return v1

    .line 609
    :cond_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 611
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$1;

    invoke-direct {v3, p0, p4}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$1;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V

    .line 612
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 622
    .local v0, "alertDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 623
    return v1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 708
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 709
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 711
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .line 629
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$900(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 630
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 632
    :cond_b
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 633
    return v1

    .line 635
    :cond_1d
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$2;

    invoke-direct {v0, p0, p4}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$2;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V

    .line 647
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v3}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 649
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    .line 650
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 651
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 652
    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .line 661
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z
    invoke-static {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$900(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 662
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 664
    :cond_b
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v2, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 665
    return v1

    .line 667
    :cond_22
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 668
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 669
    if-eqz p4, :cond_39

    .line 670
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 672
    :cond_39
    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 673
    .local v2, "dpi":F
    new-instance v3, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;

    invoke-direct {v3, p0, p5, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7$3;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 685
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v5}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 687
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 688
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x104000a

    .line 689
    invoke-virtual {v4, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v6, 0x1040000

    .line 690
    invoke-virtual {v4, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 691
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 692
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 695
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 696
    .local v6, "t":I
    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 697
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 700
    .local v5, "padding":I
    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    sub-int v7, v5, v7

    invoke-virtual {v0, v7, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 701
    return v1
.end method

.method public onJsTimeout()Z
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 779
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 781
    :cond_f
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 758
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 759
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_11

    .line 761
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 763
    :goto_11
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 769
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 770
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_11

    .line 772
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 774
    :goto_11
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 508
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 509
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_11

    .line 511
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 513
    :goto_11
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 13
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .line 730
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_10

    .line 731
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 733
    :cond_10
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 734
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 526
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 527
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 529
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 531
    :goto_11
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 518
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_11

    .line 520
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 522
    :goto_11
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .line 535
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 536
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_11

    .line 538
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 540
    :goto_11
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 583
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 584
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_11

    .line 586
    :cond_e
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 588
    :goto_11
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 555
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 556
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_11

    .line 558
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 560
    :goto_11
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 544
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_e

    .line 545
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_11

    .line 547
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 549
    :goto_11
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 831
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_f

    .line 832
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0

    .line 835
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0
.end method
