.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;
.super Landroid/webkit/WebViewClient;
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
    .line 846
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1001
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 1006
    :goto_d
    return-void

    .line 1003
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 992
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 996
    :goto_d
    return-void

    .line 994
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_d
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 905
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 909
    :goto_d
    return-void

    .line 907
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 915
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 919
    :goto_d
    return-void

    .line 917
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    monitor-enter v2

    .line 886
    :try_start_3
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-static {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$1000(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 887
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-static {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$1000(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 888
    iget-object v3, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-static {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$1000(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    invoke-static {v3, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$500(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 890
    :cond_2c
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$1002(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 892
    .end local v0    # "i":I
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_41

    .line 894
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_44

    .line 895
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 900
    :goto_40
    return-void

    .line 892
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 897
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 860
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 865
    :goto_d
    return-void

    .line 862
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_d
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1022
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 1027
    :goto_d
    return-void

    .line 1024
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_d
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 962
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 966
    :goto_d
    return-void

    .line 964
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 972
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 976
    :goto_d
    return-void

    .line 974
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_d
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1032
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :goto_d
    return-void

    .line 1034
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 982
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 987
    :goto_d
    return-void

    .line 985
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_d
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1071
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_d
    return-void

    .line 1073
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1011
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1016
    :goto_d
    return-void

    .line 1013
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_d
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1061
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 1066
    :goto_d
    return-void

    .line 1063
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_d
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 952
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 956
    :goto_d
    return-void

    .line 954
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_d
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_e

    .line 1051
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 1056
    :goto_d
    return-void

    .line 1053
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_d
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_f

    .line 942
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 944
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_e
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 924
    if-eqz p2, :cond_17

    const-string v0, "/api/account/v1/profile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 925
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_26

    .line 926
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 931
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2e

    .line 932
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 934
    :goto_25
    return-object v0

    .line 928
    :cond_26
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_17

    .line 934
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_25
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_f

    .line 1041
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1043
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_f

    .line 851
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 853
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method
