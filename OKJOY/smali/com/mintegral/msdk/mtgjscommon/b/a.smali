.class public Lcom/mintegral/msdk/mtgjscommon/b/a;
.super Ljava/lang/Object;
.source "DefaultWebViewListener.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 21
    const-string v0, "WindVaneWebView"

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 53
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 32
    const-string v0, "WindVaneWebView"

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    .prologue
    .line 37
    const-string v0, "WindVaneWebView"

    const-string v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 42
    const-string v0, "WindVaneWebView"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 26
    const-string v0, "WindVaneWebView"

    const-string v1, "shouldOverrideUrlLoading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 47
    const-string v0, "WindVaneWebView"

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
