.class public final Lcom/anythink/basead/ui/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 3

    .line 70
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 73
    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 74
    return-void

    .line 78
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 79
    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_36

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 83
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void

    .line 85
    :cond_36
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 86
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 88
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 2

    .line 37
    new-instance v0, Lcom/anythink/basead/ui/a/b$1;

    invoke-direct {v0}, Lcom/anythink/basead/ui/a/b$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67
    return-void
.end method

.method private static a(Landroid/webkit/WebView;Z)V
    .registers 2

    .line 28
    if-eqz p1, :cond_a

    .line 29
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 30
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 34
    return-void
.end method

.method private static b(Landroid/webkit/WebView;)V
    .registers 4

    .line 95
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    .line 97
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 99
    :cond_19
    return-void
.end method
