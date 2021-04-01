.class public Lcom/mintegral/msdk/mtgjscommon/base/b;
.super Landroid/webkit/WebViewClient;
.source "BaseWebViewClient.java"


# instance fields
.field private a:Lcom/mintegral/msdk/mtgjscommon/base/a;

.field private b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/mtgjscommon/base/a;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->a:Lcom/mintegral/msdk/mtgjscommon/base/a;

    .line 16
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    .line 59
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 55
    :cond_c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_c
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    if-eqz v0, :cond_c

    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 46
    :cond_c
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->a:Lcom/mintegral/msdk/mtgjscommon/base/a;

    if-eqz v0, :cond_e

    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->a:Lcom/mintegral/msdk/mtgjscommon/base/a;

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/mtgjscommon/base/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 22
    const/4 v0, 0x1

    .line 28
    :goto_d
    return v0

    .line 25
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    if-eqz v0, :cond_17

    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/b;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->b()Z

    .line 28
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method
