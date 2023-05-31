.class public Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
.super Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;
.source "WindVaneWebView.java"


# instance fields
.field protected b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

.field protected c:Lcom/mintegral/msdk/mtgjscommon/windvane/b;

.field protected d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 188
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_20

    .line 189
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 195
    :goto_b
    if-eqz v1, :cond_1f

    .line 196
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "77.0.3865.92"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 202
    :cond_1f
    :goto_1f
    return v0

    .line 191
    :cond_20
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.webview"

    const/4 v3, 0x1

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_32

    move-result-object v1

    goto :goto_b

    .line 197
    :cond_30
    const/4 v0, 0x0

    goto :goto_1f

    :catch_32
    move-exception v1

    goto :goto_1f
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->a()V

    .line 76
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WindVane/3.0.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    if-nez v0, :cond_38

    .line 81
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/k;-><init>(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    .line 83
    :cond_38
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewChromeClient(Lcom/mintegral/msdk/mtgjscommon/windvane/k;)V

    .line 85
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/l;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/b;

    if-nez v0, :cond_5b

    .line 89
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/b;

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/b;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setJsBridge(Lcom/mintegral/msdk/mtgjscommon/windvane/b;)V

    .line 93
    :cond_5b
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    .line 95
    return-void
.end method

.method public clearWebView()V
    .registers 2

    .prologue
    .line 159
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getJsBridge()Lcom/mintegral/msdk/mtgjscommon/windvane/b;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/b;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    if-nez v0, :cond_6

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public getWebViewListener()Lcom/mintegral/msdk/mtgjscommon/windvane/c;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    return-object v0
.end method

.method public registerWindVanePlugin(Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    if-nez v0, :cond_5

    .line 68
    :goto_4
    return-void

    .line 67
    :cond_5
    invoke-static {p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V

    goto :goto_4
.end method

.method public release()V
    .registers 5

    .prologue
    .line 138
    const/16 v0, 0x8

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 139
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->removeAllViews()V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 142
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 143
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->destroy()V

    .line 156
    :goto_15
    return-void

    .line 145
    :cond_16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView$1;-><init>(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_15

    .line 154
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method public setApiManagerContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/f;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Landroid/content/Context;)V

    .line 101
    :cond_9
    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->f:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setJsBridge(Lcom/mintegral/msdk/mtgjscommon/windvane/b;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/b;

    .line 42
    invoke-interface {p1, p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/b;->a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 43
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->e:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setWebViewChromeClient(Lcom/mintegral/msdk/mtgjscommon/windvane/k;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    .line 110
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 111
    return-void
.end method

.method public setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/k;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/k;->a(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    if-eqz v0, :cond_14

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->mWebViewClient:Lcom/mintegral/msdk/mtgjscommon/base/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgjscommon/base/b;->a(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 129
    :cond_14
    return-void
.end method

.method public setWebViewTransparent()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/mintegral/msdk/mtgjscommon/base/BaseWebView;->setTransparent()V

    .line 164
    return-void
.end method
