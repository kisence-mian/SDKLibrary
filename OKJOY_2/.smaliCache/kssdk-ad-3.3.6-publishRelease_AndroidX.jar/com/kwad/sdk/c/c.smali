.class public Lcom/kwad/sdk/c/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/view/View;

.field private b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/webkit/WebView;

.field private e:Lorg/json/JSONObject;

.field private f:I

.field private g:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private h:Lcom/kwad/sdk/core/download/b/b;

.field private i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

.field private j:Lcom/kwad/sdk/core/webview/a/g;

.field private k:Lcom/kwad/sdk/core/webview/a;

.field private l:I

.field private m:Lcom/kwad/sdk/core/webview/jshandler/n;

.field private n:Lcom/kwad/sdk/core/webview/jshandler/h$a;

.field private o:Lcom/kwad/sdk/core/webview/jshandler/k$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/c/c;->l:I

    new-instance v0, Lcom/kwad/sdk/c/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/c$1;-><init>(Lcom/kwad/sdk/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->n:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    new-instance v0, Lcom/kwad/sdk/c/c$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/c$2;-><init>(Lcom/kwad/sdk/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->o:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/c/c;->l:I

    new-instance v0, Lcom/kwad/sdk/c/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/c$1;-><init>(Lcom/kwad/sdk/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->n:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    new-instance v0, Lcom/kwad/sdk/c/c$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/c$2;-><init>(Lcom/kwad/sdk/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->o:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    iput-object p1, p0, Lcom/kwad/sdk/c/c;->e:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/c;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/c/c;->l:I

    return p1
.end method

.method private a(Lcom/kwad/sdk/core/webview/a/g;)V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/a;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/c/c;->h:Lcom/kwad/sdk/core/download/b/b;

    iget-object v3, p0, Lcom/kwad/sdk/c/c;->i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/webview/jshandler/a;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/webview/jshandler/a$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/e;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/e;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/f;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/f;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/c;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/k;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->o:Lcom/kwad/sdk/core/webview/jshandler/k$b;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/k;-><init>(Lcom/kwad/sdk/core/webview/jshandler/k$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/n;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->m:Lcom/kwad/sdk/core/webview/jshandler/n;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/o;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, p0, Lcom/kwad/sdk/c/c;->h:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/h;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->n:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/h;-><init>(Lcom/kwad/sdk/core/webview/jshandler/h$a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/j;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/j;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    return-void
.end method

.method private j()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/kwad/sdk/c/c;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_web_card_webView:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private k()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget v1, p0, Lcom/kwad/sdk/c/c;->f:I

    iput v1, v0, Lcom/kwad/sdk/core/webview/a;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->k:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->e:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->d:Lorg/json/JSONObject;

    return-void
.end method

.method private l()V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ak;->a(Landroid/webkit/WebView;)Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    new-instance v0, Lcom/kwad/sdk/core/webview/a/g;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/a/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->j:Lcom/kwad/sdk/core/webview/a/g;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/c;->a(Lcom/kwad/sdk/core/webview/a/g;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->j:Lcom/kwad/sdk/core/webview/a/g;

    const-string v2, "KwaiAd"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->j:Lcom/kwad/sdk/core/webview/a/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/c/c;->j:Lcom/kwad/sdk/core/webview/a/g;

    :cond_a
    return-void
.end method

.method private n()V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/c/c;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const-string v0, "timeout"

    goto :goto_10

    :cond_8
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const-string v0, "h5error"

    goto :goto_10

    :cond_e
    const-string v0, "others"

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show webCard fail, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayEndWebCard"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_ad_web_card_layout:I

    return v0
.end method

.method protected a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/b;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdStyleInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo;->playEndInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->adWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/core/config/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url host is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayEndWebCard"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_29
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/c/c;->a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V

    return-void
.end method

.method public a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V
    .registers 6

    iput-object p4, p0, Lcom/kwad/sdk/c/c;->h:Lcom/kwad/sdk/core/download/b/b;

    iput-object p2, p0, Lcom/kwad/sdk/c/c;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object p1, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    iput p5, p0, Lcom/kwad/sdk/c/c;->f:I

    iput-object p3, p0, Lcom/kwad/sdk/c/c;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->j()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->k()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/webview/jshandler/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/c;->i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-void
.end method

.method protected b()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/c;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->m()V

    return-void
.end method

.method public d()Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/c/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->m:Lcom/kwad/sdk/core/webview/jshandler/n;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->c()V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/kwad/sdk/c/c;->m:Lcom/kwad/sdk/core/webview/jshandler/n;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->d()V

    :cond_1c
    const/4 v0, 0x1

    return v0

    :cond_1e
    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->n()V

    return v1
.end method

.method public e()Lcom/kwad/sdk/core/webview/jshandler/a$b;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->i:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-object v0
.end method

.method public f()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/c/c;->l:I

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->g:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/c/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->l()V

    iget-object v1, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->d:Landroid/webkit/WebView;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;IZ)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/c/c;->m:Lcom/kwad/sdk/core/webview/jshandler/n;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->e()V

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/c/c;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/c/c;->m:Lcom/kwad/sdk/core/webview/jshandler/n;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->f()V

    :cond_20
    return-void
.end method

.method public i()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/c;->m()V

    return-void
.end method
