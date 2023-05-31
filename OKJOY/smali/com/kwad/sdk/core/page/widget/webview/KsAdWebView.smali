.class public Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;
.super Lcom/kwad/sdk/core/page/widget/webview/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;
    }
.end annotation


# instance fields
.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field protected f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->g:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->g:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/widget/webview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->g:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->g:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KSADSDK_V2.6.4.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_57

    :goto_e
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_21

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_21
    new-instance v1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;-><init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$b;-><init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;-><init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void

    :catch_57
    move-exception v1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/webview/b;->a()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_e
.end method


# virtual methods
.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public g()V
    .registers 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_17
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public setInsideDownloadEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->g:Z

    return-void
.end method

.method public setTemplateData(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method
