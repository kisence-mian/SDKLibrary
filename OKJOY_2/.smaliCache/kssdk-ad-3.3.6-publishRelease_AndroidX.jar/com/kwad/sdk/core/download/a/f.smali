.class public Lcom/kwad/sdk/core/download/a/f;
.super Lcom/kwad/sdk/core/download/a/c;


# instance fields
.field private b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

.field private c:Lcom/kwad/sdk/core/webview/jshandler/i$a;

.field private d:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

.field private e:Lcom/kwad/sdk/core/download/b/b;

.field private f:Lcom/kwad/sdk/core/webview/a/g;

.field private g:Lcom/kwad/sdk/core/webview/a;

.field private h:Lcom/kwad/sdk/core/webview/jshandler/n;

.field private i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

.field private j:Lcom/kwad/sdk/core/webview/jshandler/i$b;

.field private k:Lcom/kwad/sdk/core/webview/jshandler/h$a;

.field private l:Lcom/kwad/sdk/core/webview/jshandler/k$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/c;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/download/a/f$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/download/a/f$1;-><init>(Lcom/kwad/sdk/core/download/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    new-instance v0, Lcom/kwad/sdk/core/download/a/f$3;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/download/a/f$3;-><init>(Lcom/kwad/sdk/core/download/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->j:Lcom/kwad/sdk/core/webview/jshandler/i$b;

    new-instance v0, Lcom/kwad/sdk/core/download/a/f$4;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/download/a/f$4;-><init>(Lcom/kwad/sdk/core/download/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->k:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    new-instance v0, Lcom/kwad/sdk/core/download/a/f$5;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/download/a/f$5;-><init>(Lcom/kwad/sdk/core/download/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->l:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/a/f;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/a/f;Lcom/kwad/sdk/core/webview/jshandler/i$a;)Lcom/kwad/sdk/core/webview/jshandler/i$a;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/f;->c:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    return-object p1
.end method

.method private a(Lcom/kwad/sdk/core/webview/a/g;)V
    .registers 6

    const-string v0, "DownloadTipsDialogWebCardPresenter"

    const-string v1, "registerWebCardHandler"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/download/a/f;->e:Lcom/kwad/sdk/core/download/b/b;

    iget-object v3, p0, Lcom/kwad/sdk/core/download/a/f;->i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/webview/jshandler/a;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/webview/jshandler/a$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/e;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/e;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/f;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/f;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/c;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/i;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/download/a/f;->j:Lcom/kwad/sdk/core/webview/jshandler/i$b;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/i;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/i$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/k;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->l:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/k;-><init>(Lcom/kwad/sdk/core/webview/jshandler/k$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/n;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->h:Lcom/kwad/sdk/core/webview/jshandler/n;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/o;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/download/a/f;->e:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/h;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->k:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/h;-><init>(Lcom/kwad/sdk/core/webview/jshandler/h$a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/j;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/j;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/download/a/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->q()V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->c()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->p()V

    return-void
.end method

.method private m()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v1, v1, Lcom/kwad/sdk/core/download/a/d;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget v1, v1, Lcom/kwad/sdk/core/download/a/d;->a:I

    iput v1, v0, Lcom/kwad/sdk/core/webview/a;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v1, v1, Lcom/kwad/sdk/core/download/a/d;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v1, v1, Lcom/kwad/sdk/core/download/a/d;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->g:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->f:Landroid/webkit/WebView;

    return-void
.end method

.method private n()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->o()V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadPanelUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->d:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->windowPopUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTipsDialogWebCardPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .registers 4

    const-string v0, "DownloadTipsDialogWebCardPresenter"

    const-string v1, "setupJsBridge"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->p()V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ak;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    new-instance v1, Lcom/kwad/sdk/core/download/a/f$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/download/a/f$2;-><init>(Lcom/kwad/sdk/core/download/a/f;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setHttpErrorListener(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$d;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/a/g;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/a/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->f:Lcom/kwad/sdk/core/webview/a/g;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/download/a/f;->a(Lcom/kwad/sdk/core/webview/a/g;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->f:Lcom/kwad/sdk/core/webview/a/g;

    const-string v2, "KwaiAd"

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/f;->d:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->windowPopUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->f:Lcom/kwad/sdk/core/webview/a/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->f:Lcom/kwad/sdk/core/webview/a/g;

    :cond_a
    return-void
.end method

.method private q()V
    .registers 3

    const-string v0, "DownloadTipsDialogWebCardPresenter"

    const-string v1, "hideWithOutAnimation"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->h:Lcom/kwad/sdk/core/webview/jshandler/n;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->e()V

    :cond_17
    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->h:Lcom/kwad/sdk/core/webview/jshandler/n;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->f()V

    :cond_24
    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/d;->b:Lcom/kwad/sdk/core/download/a/e;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/d;->b:Lcom/kwad/sdk/core/download/a/e;

    invoke-interface {v0}, Lcom/kwad/sdk/core/download/a/e;->a()V

    :cond_31
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/core/download/a/c;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/d;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->P(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->d:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->a:Lcom/kwad/sdk/core/download/a/d;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/a/d;->f:Lcom/kwad/sdk/core/download/b/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->e:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->m()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->n()V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/core/download/a/c;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_download_tips_web_card_webView:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/download/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/f;->b:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    return-void
.end method

.method protected c()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/core/download/a/c;->c()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/f;->e()V

    return-void
.end method
