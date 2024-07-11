.class public Lcom/kwad/sdk/core/page/a/b;
.super Lcom/kwad/sdk/mvp/Presenter;


# instance fields
.field private a:Lcom/kwad/sdk/core/webview/a/g;

.field private b:Lcom/kwad/sdk/core/webview/a;

.field private c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

.field private d:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private e:Lcom/kwad/sdk/core/webview/jshandler/k$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/page/a/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/page/a/b$1;-><init>(Lcom/kwad/sdk/core/page/a/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->e:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/webview/a/g;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/e;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->b:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/e;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/f;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->b:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/f;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/k;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->e:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/k;-><init>(Lcom/kwad/sdk/core/webview/jshandler/k$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/j;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->b:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/j;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    return-void
.end method

.method private e()V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/a/b;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ak;->a(Landroid/webkit/WebView;)Landroid/webkit/WebSettings;

    new-instance v0, Lcom/kwad/sdk/core/webview/a/g;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/a/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->a:Lcom/kwad/sdk/core/webview/a/g;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/page/a/b;->a(Lcom/kwad/sdk/core/webview/a/g;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->a:Lcom/kwad/sdk/core/webview/a/g;

    const-string v2, "KwaiAd"

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->a:Lcom/kwad/sdk/core/webview/a/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->a:Lcom/kwad/sdk/core/webview/a/g;

    :cond_a
    return-void
.end method

.method private n()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->b:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->b:Lcom/kwad/sdk/core/webview/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kwad/sdk/core/webview/a;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->b:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->f:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/a/b;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/recycle/e;

    iget-object v0, v0, Lcom/kwad/sdk/core/page/recycle/e;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/a/b;->i()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_webView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->setTemplateData(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->setNestedScrollingEnabled(Z)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/a/b;->n()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/a/b;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a/b;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->a()V

    return-void
.end method

.method protected d()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/a/b;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/b;->c:Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->b()V

    return-void
.end method
