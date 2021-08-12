.class public Lcom/kwad/sdk/c/a;
.super Lcom/kwad/sdk/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/a$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private d:J

.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

.field private h:Z

.field private i:Z

.field private j:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private k:Lcom/kwad/sdk/c/a$a;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/c/c;-><init>(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/c/a;->b:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kwad/sdk/c/a;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/c/a;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kwad/sdk/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/c/a;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/c/a;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/c/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/c/a;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/c/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/c/a;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/kwad/sdk/c/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/c/a;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/c/a;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/c/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/c/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/c/a;->h:Z

    return p0
.end method

.method static synthetic g(Lcom/kwad/sdk/c/a;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/c/a;->e:Landroid/app/Activity;

    return-object p0
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/a;->k:Lcom/kwad/sdk/c/a$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kwad/sdk/c/a$a;->a()V

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/c/a;->e:Landroid/app/Activity;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_e
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_ad_landingpage_layout:I

    return v0
.end method

.method public a(Z)Lcom/kwad/sdk/c/a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/c/a;->i:Z

    return-object p0
.end method

.method protected a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/a;->e:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/kwad/sdk/c/c;->a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V

    iput-object p3, p0, Lcom/kwad/sdk/c/a;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/sdk/c/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object p1, p0, Lcom/kwad/sdk/c/a;->a:Landroid/view/View;

    sget p2, Lcom/kwad/sdk/R$id;->ksad_end_close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kwad/sdk/c/a;->f:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/c/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/c/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    instance-of p1, p1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lcom/kwad/sdk/c/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    new-instance p2, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {p2}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    const/4 p4, 0x1

    iput p4, p2, Lcom/kwad/sdk/core/report/o$a;->l:I

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setClientParams(Lcom/kwad/sdk/core/report/o$a;)V

    :cond_39
    invoke-virtual {p0}, Lcom/kwad/sdk/c/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    instance-of p2, p1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    if-eqz p2, :cond_53

    check-cast p1, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object p1, p0, Lcom/kwad/sdk/c/a;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {p1, p3}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setTemplateData(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/c/a;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    new-instance p2, Lcom/kwad/sdk/c/a$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/c/a$1;-><init>(Lcom/kwad/sdk/c/a;)V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setHttpErrorListener(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$d;)V

    goto :goto_5b

    :cond_53
    new-instance p2, Lcom/kwad/sdk/c/a$2;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/c/a$2;-><init>(Lcom/kwad/sdk/c/a;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_5b
    iget-object p1, p0, Lcom/kwad/sdk/c/a;->f:Landroid/widget/ImageView;

    new-instance p2, Lcom/kwad/sdk/c/a$3;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/c/a$3;-><init>(Lcom/kwad/sdk/c/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/c/a;->b:Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/a;->k:Lcom/kwad/sdk/c/a$a;

    return-void
.end method

.method protected b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/c/a;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/c/c;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/c/a;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .registers 6

    invoke-super {p0}, Lcom/kwad/sdk/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/kwad/sdk/c/a;->e:Landroid/app/Activity;

    if-eqz v1, :cond_42

    invoke-static {v1}, Lcom/kwad/sdk/utils/t;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kwad/sdk/c/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    new-instance v2, Lcom/kwad/sdk/c/a$4;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/c/a$4;-><init>(Lcom/kwad/sdk/c/a;)V

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->setDispatchTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->o()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/kwad/sdk/c/a;->i:Z

    if-nez v3, :cond_2a

    goto :goto_35

    :cond_2a
    iget-object v3, p0, Lcom/kwad/sdk/c/a;->l:Landroid/os/Handler;

    new-instance v4, Lcom/kwad/sdk/c/a$5;

    invoke-direct {v4, p0}, Lcom/kwad/sdk/c/a$5;-><init>(Lcom/kwad/sdk/c/a;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/kwad/sdk/c/a;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3b
    iget-object v1, p0, Lcom/kwad/sdk/c/a;->g:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->a()V

    :cond_42
    return v0
.end method
