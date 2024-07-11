.class public Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;
.super Landroid/app/Activity;
.source "TTDislikeWebViewActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string p1, "tt_activity_lite_web_layout"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->setContentView(I)V

    .line 50
    const-string p1, "tt_lite_web_back"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a:Landroid/view/View;

    .line 51
    const-string p1, "tt_lite_web_title"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->b:Landroid/widget/TextView;

    .line 52
    const-string p1, "tt_lite_web_view"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a:Landroid/view/View;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a()V

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->e:Ljava/lang/String;

    .line 65
    :try_start_71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "meta"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8c} :catch_8d

    goto :goto_91

    .line 69
    :catch_8d
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_91
    :goto_91
    goto :goto_95

    .line 73
    :cond_92
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->finish()V

    .line 75
    :goto_95
    return-void
.end method
