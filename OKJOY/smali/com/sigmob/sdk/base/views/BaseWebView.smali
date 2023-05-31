.class public Lcom/sigmob/sdk/base/views/BaseWebView;
.super Landroid/webkit/WebView;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sigmob/sdk/base/views/BaseWebView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->a(Landroid/webkit/WebSettings;)V

    sget-boolean v0, Lcom/sigmob/sdk/base/views/BaseWebView;->a:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sigmob/sdk/base/views/BaseWebView;->a:Z

    :cond_18
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_46

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x1000018

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_46

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_46
    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_31

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_31
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_46

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4f

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_4f
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 4

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_14

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_14
    return-void
.end method

.method public static b()V
    .registers 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {v3}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {v2}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2a

    invoke-virtual {v0, v4}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v4}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_13

    :cond_2a
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    goto :goto_13
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/base/views/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/BaseWebView$1;-><init>(Lcom/sigmob/sdk/base/views/BaseWebView;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_6

    :cond_13
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_6
.end method

.method public b(Z)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->stopLoading()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->loadUrl(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->onPause()V

    return-void
.end method

.method public c()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    const-string v0, " BaseWebView destroy called "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/ai;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->removeAllViews()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method
