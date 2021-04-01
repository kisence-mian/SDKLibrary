.class public Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# instance fields
.field protected a:Landroid/content/Context;

.field public mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a()V

    .line 40
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/base/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgjscommon/base/b;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    :cond_12
    invoke-virtual {p0, v5}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    invoke-virtual {p0, v5}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setVerticalScrollBarEnabled(Z)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setVerticalScrollBarEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->requestFocus()Z

    .line 60
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 63
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 65
    const-wide/32 v2, 0x500000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 67
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 68
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 72
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 73
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 74
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 75
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 76
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 79
    const/4 v0, 0x1

    :try_start_52
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_a5

    .line 84
    :goto_55
    :try_start_55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5f

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_aa

    .line 94
    :cond_5f
    :goto_5f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7c

    .line 95
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a:Landroid/content/Context;

    const-string v2, "database"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 101
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 104
    :cond_7c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_a4

    .line 107
    :try_start_82
    const-class v0, Landroid/webkit/WebSettings;

    const-string v2, "setDisplayZoomControls"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 109
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a4} :catch_af

    .line 113
    :cond_a4
    :goto_a4
    return-void

    .line 81
    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_55

    .line 88
    :catch_aa
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    :catch_af
    move-exception v0

    goto :goto_a4
.end method

.method public reload()V
    .registers 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 124
    return-void
.end method

.method public setFilter(Lcom/mintegral/msdk/mtgjscommon/base/a;)V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgjscommon/base/b;->a(Lcom/mintegral/msdk/mtgjscommon/base/a;)V

    .line 46
    :cond_9
    return-void
.end method

.method public setTransparent()V
    .registers 3

    .prologue
    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setBackgroundColor(I)V

    .line 118
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/base/b;

    if-eqz v0, :cond_b

    .line 130
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/base/b;

    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    .line 132
    :cond_b
    return-void
.end method
