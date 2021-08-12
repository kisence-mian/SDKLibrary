.class public Lcom/bytedance/sdk/openadsdk/core/widget/b;
.super Landroid/app/AlertDialog;
.source "AppPrivacyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 30
    const-string v0, "DialogFullscreen"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$a;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "http://sf6-ttcdn-tos.pstatp.com/obj/ad-tetris-site/personal-privacy-page.html"

    if-eqz v0, :cond_d

    .line 82
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Ljava/lang/String;

    .line 83
    return-void

    .line 85
    :cond_d
    nop

    .line 87
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_29

    .line 90
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Ljava/lang/String;

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 92
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2a

    .line 97
    :cond_29
    goto :goto_2e

    .line 95
    :catchall_2a
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :goto_2e
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    .line 125
    return-object p0
.end method

.method protected a()V
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/content/Context;

    const-string v1, "tt_privacy_webview"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/content/Context;

    const-string v1, "tt_app_privacy_back_tv"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/widget/TextView;

    .line 46
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    if-eqz v0, :cond_7

    .line 104
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a(Landroid/app/Dialog;)V

    .line 106
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 37
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/content/Context;

    const-string v0, "tt_app_privacy_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b()V

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a()V

    .line 41
    return-void
.end method
