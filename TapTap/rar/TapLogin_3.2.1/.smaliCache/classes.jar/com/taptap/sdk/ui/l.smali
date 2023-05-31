.class public Lcom/taptap/sdk/ui/l;
.super Lcom/taptap/sdk/ui/d;
.source "WebBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/ui/l$e;,
        Lcom/taptap/sdk/ui/l$f;
    }
.end annotation


# instance fields
.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/view/View;

.field private j:I

.field private k:Lcom/taptap/sdk/ui/l$e;

.field private l:Ljava/lang/String;

.field m:Lcom/taptap/sdk/LoginRequest;

.field n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/d;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/ui/l;->j:I

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    .line 105
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_1f

    .line 108
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/taptap/sdk/ui/l;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/l;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    if-eqz p0, :cond_5c

    .line 84
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    :try_start_f
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 89
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_50

    const/16 v4, 0x26

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 100
    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_57
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_57} :catch_58

    return-object p0

    .line 102
    :catch_58
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/taptap/sdk/ui/l;)Lcom/taptap/sdk/ui/l$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/l;->k:Lcom/taptap/sdk/ui/l$e;

    return-object p0
.end method

.method private b(Landroid/content/res/Configuration;)V
    .registers 7

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4d

    .line 3
    iget v0, p0, Lcom/taptap/sdk/ui/l;->j:I

    if-eq v0, v3, :cond_39

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iget v4, p0, Lcom/taptap/sdk/ui/l;->j:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    iget-object v4, p0, Lcom/taptap/sdk/ui/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/taptap/sdk/l;->a(Landroid/content/Context;F)I

    move-result v1

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 13
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    iget-object v1, p0, Lcom/taptap/sdk/ui/l;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :cond_39
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_47

    .line 18
    iget-object p1, p0, Lcom/taptap/sdk/ui/l;->i:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_83

    .line 20
    :cond_47
    iget-object p1, p0, Lcom/taptap/sdk/ui/l;->i:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_83

    :cond_4d
    const/4 p1, 0x1

    if-ne v0, p1, :cond_83

    .line 23
    iget p1, p0, Lcom/taptap/sdk/ui/l;->j:I

    if-eq p1, v3, :cond_7e

    .line 24
    iget-object p1, p0, Lcom/taptap/sdk/ui/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 25
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object p1, p0, Lcom/taptap/sdk/ui/l;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->a(Landroid/content/Context;F)I

    move-result v0

    .line 31
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 33
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 34
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 35
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_7e
    iget-object p1, p0, Lcom/taptap/sdk/ui/l;->i:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_83
    :goto_83
    return-void
.end method

.method static synthetic c(Lcom/taptap/sdk/ui/l;)Landroid/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/l;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic d(Lcom/taptap/sdk/ui/l;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/l;->g()V

    return-void
.end method

.method static synthetic e(Lcom/taptap/sdk/ui/l;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    return-object p0
.end method

.method private f()V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_16

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    new-instance v2, Lcom/taptap/sdk/ui/l$b;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/ui/l$b;-><init>(Lcom/taptap/sdk/ui/l;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClipToOutline(Z)V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    new-instance v2, Lcom/taptap/sdk/ui/l$c;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/ui/l$c;-><init>(Lcom/taptap/sdk/ui/l;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 37
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    new-instance v2, Lcom/taptap/sdk/ui/l$d;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/ui/l$d;-><init>(Lcom/taptap/sdk/ui/l;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_62

    .line 100
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 104
    :cond_62
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    new-instance v2, Lcom/taptap/sdk/ui/l$f;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/ui/l$f;-><init>(Lcom/taptap/sdk/ui/l;)V

    const-string v3, "urlResource"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 106
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    const-string v1, "javascript:window.TapTapAPI = function(action, params) {return window.urlResource.TapTapAPI(action, params);}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    const-string v1, "javascript:window.TapTapAPI.openBrowser = function(param){return window.TapTapAPI(\'openBrowser\', param)}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 4
    const-string v1, "https://www.xdrnd.com/"

    const-string v2, "skip_captcha=1"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_20

    .line 6
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_27

    .line 8
    :cond_20
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_27
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/app/Activity;
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 8
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment_webview_login"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(IILandroid/content/Intent;)V
    .registers 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/taptap/sdk/ui/d;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Intent;I)V
    .registers 3

    .line 5
    invoke-super {p0, p1, p2}, Lcom/taptap/sdk/ui/d;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/taptap/sdk/ui/d;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/content/res/Configuration;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/l;->b(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/os/Bundle;)V
    .registers 2

    .line 4
    invoke-super {p0, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 6

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/taptap/sdk/ui/l;->n:I

    .line 10
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "container"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/taptap/sdk/ui/l;->e:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "web_container"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/taptap/sdk/ui/l;->f:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "trickView"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/ui/l;->i:Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "progress"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/taptap/sdk/ui/l;->g:Landroid/widget/ProgressBar;

    .line 14
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    .line 15
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/ui/l;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8e

    .line 19
    iput v0, p0, Lcom/taptap/sdk/ui/l;->j:I

    .line 22
    :cond_8e
    new-instance v0, Lcom/taptap/sdk/ui/l$a;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/ui/l$a;-><init>(Lcom/taptap/sdk/ui/l;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-direct {p0}, Lcom/taptap/sdk/ui/l;->f()V

    .line 30
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/l;->b(Landroid/content/res/Configuration;)V

    .line 31
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->b()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/LoginRequest;

    iput-object p1, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    const/16 p1, 0x80

    .line 32
    invoke-static {p1}, Lcom/taptap/sdk/ui/h;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/ui/l;->l:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-static {}, Lcom/taptap/sdk/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "response_type"

    const-string v1, "code"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "version"

    const-string v1, "2.6.0"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v1}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_123

    const/4 v1, 0x0

    .line 50
    :goto_ef
    iget-object v2, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v2}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_123

    .line 51
    iget-object v2, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v2}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_10f

    .line 52
    iget-object v2, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v2}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_120

    .line 54
    :cond_10f
    iget-object v2, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v2}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_ef

    .line 59
    :cond_123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "redirect_uri"

    const-string v1, "tapoauth://authorize"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v0}, Lcom/taptap/sdk/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/taptap/sdk/ui/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code_challenge"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "code_challenge_method"

    const-string v1, "S256"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "device_id"

    .line 67
    :try_start_157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_175
    .catch Lorg/json/JSONException; {:try_start_157 .. :try_end_175} :catch_176

    goto :goto_17a

    .line 69
    :catch_176
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    :goto_17a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taptap/sdk/e;->b()Lcom/taptap/sdk/RegionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/RegionType;->authorizeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/taptap/sdk/ui/l;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v0, "Inhouse"

    const-string v1, "Publish"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 75
    invoke-direct {p0}, Lcom/taptap/sdk/ui/l;->h()V

    .line 77
    :cond_1b3
    iget-object v0, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapTapAndroidSDK/2.6.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    .line 78
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/taptap/sdk/ui/l;->m:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v1}, Lcom/taptap/sdk/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-SDK-UA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/taptap/sdk/ui/l;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/taptap/sdk/ui/l$e;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/taptap/sdk/ui/l;->k:Lcom/taptap/sdk/ui/l$e;

    return-void
.end method

.method public bridge synthetic c()Lcom/taptap/sdk/ui/f;
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/taptap/sdk/ui/d;->c()Lcom/taptap/sdk/ui/f;

    move-result-object v0

    return-object v0
.end method
