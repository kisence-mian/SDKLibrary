.class public Lcom/anythink/basead/ui/web/BaseWebView;
.super Landroid/webkit/WebView;


# static fields
.field private static b:Z


# instance fields
.field protected a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/basead/ui/web/BaseWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 36
    nop

    .line 1087
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1088
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 1089
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_2b

    .line 1090
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 1091
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 37
    :cond_2b
    invoke-static {p0}, Lcom/anythink/basead/ui/a/b;->a(Landroid/webkit/WebView;)V

    .line 39
    sget-boolean p1, Lcom/anythink/basead/ui/web/BaseWebView;->b:Z

    if-nez p1, :cond_7d

    .line 40
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-ne v1, v2, :cond_7b

    .line 1109
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1110
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1114
    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v6, ""

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1116
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1117
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1119
    const/16 v2, 0x7d5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1120
    const v2, 0x1000018

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1123
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1124
    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1125
    nop

    .line 1126
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1128
    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :cond_7b
    sput-boolean v3, Lcom/anythink/basead/ui/web/BaseWebView;->b:Z

    .line 43
    :cond_7d
    return-void
.end method

.method private a()V
    .registers 3

    .line 74
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 9

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_46

    .line 109
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 114
    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 116
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 120
    const v2, 0x1000018

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 124
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    nop

    .line 126
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 128
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_46
    return-void
.end method

.method private b()V
    .registers 4

    .line 87
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_23

    .line 90
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 93
    :cond_23
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/anythink/basead/ui/web/BaseWebView;->a:Z

    if-eqz v0, :cond_5

    .line 54
    return-void

    .line 57
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/web/BaseWebView;->a:Z

    .line 61
    nop

    .line 3018
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3022
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 3023
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_20
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/BaseWebView;->removeAllViews()V

    .line 66
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 67
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 47
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 48
    nop

    .line 2095
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 2096
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1d

    .line 2097
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 49
    :cond_1d
    return-void
.end method
