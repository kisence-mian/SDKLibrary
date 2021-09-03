.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;
.super Landroid/webkit/WebViewClient;
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

    .line 839
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 993
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 994
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_11

    .line 996
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 999
    :goto_11
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .line 984
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 985
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_11

    .line 987
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 989
    :goto_11
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 898
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_11

    .line 900
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 902
    :goto_11
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 908
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_11

    .line 910
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 912
    :goto_11
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$1000(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 880
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$1000(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 881
    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # getter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$1000(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    # invokes: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->dispatchMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    invoke-static {v2, v3}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$500(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 883
    .end local v1    # "i":I
    :cond_2a
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    const/4 v2, 0x0

    # setter for: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$1002(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 885
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_43

    .line 887
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_3f

    .line 888
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_42

    .line 890
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 893
    :goto_42
    return-void

    .line 885
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 852
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 853
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 855
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 858
    :goto_11
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;

    .line 1014
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1015
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_11

    .line 1017
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 1020
    :goto_11
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 954
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 955
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 957
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_11
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .line 964
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 965
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_11

    .line 967
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 969
    :goto_11
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1025
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1027
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :goto_11
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .line 974
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 975
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_11

    .line 978
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 980
    :goto_11
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .line 1063
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1064
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1066
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_11
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 1003
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1004
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_11

    .line 1006
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1009
    :goto_11
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .line 1053
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1054
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_11

    .line 1056
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 1059
    :goto_11
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 945
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_11

    .line 947
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 949
    :goto_11
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1044
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_11

    .line 1046
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 1049
    :goto_11
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 934
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_f

    .line 935
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 937
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 917
    if-eqz p2, :cond_1f

    const-string v0, "/api/account/v1/profile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 918
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    .line 919
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_1f

    .line 921
    :cond_18
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 924
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2e

    .line 925
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 927
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1033
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_f

    .line 1034
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1036
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_f

    .line 844
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 846
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
