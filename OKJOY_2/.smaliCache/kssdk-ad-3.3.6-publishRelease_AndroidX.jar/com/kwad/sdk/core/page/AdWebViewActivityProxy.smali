.class public Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;
.super Lcom/kwad/sdk/b/a;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/AdWebViewActivity;
.end annotation


# static fields
.field public static final KEY_TEMPLATE:Ljava/lang/String; = "key_template"

.field private static final TAG:Ljava/lang/String; = "AdWebViewActivityProxy"


# instance fields
.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

.field private mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

.field private mJsInterface:Lcom/kwad/sdk/core/webview/a/g;

.field private mWebContainer:Landroid/view/ViewGroup;

.field private mWebTipBarCloseBtn:Landroid/widget/ImageView;

.field private mWebTipBarLayout:Landroid/widget/LinearLayout;

.field private mWebTipBarTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/a;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private clearJsInterfaceRegister()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsInterface:Lcom/kwad/sdk/core/webview/a/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/g;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsInterface:Lcom/kwad/sdk/core/webview/a/g;

    :cond_a
    return-void
.end method

.method private handlerLandingPageAtEndCard(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->l:I

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setClientParams(Lcom/kwad/sdk/core/report/o$a;)V

    return-void
.end method

.method private inflateJsBridgeContext()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kwad/sdk/core/webview/a;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebContainer:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    return-void
.end method

.method private initTipBarView()V
    .registers 4

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_tip_bar:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_tip_bar_textview:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarTitle:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_tip_close_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarCloseBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$6;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$6;-><init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->Q(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->O(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4f

    :cond_48
    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebTipBarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4f
    return-void
.end method

.method private initView()V
    .registers 7

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_webview:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->handlerLandingPageAtEndCard(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setTemplateData(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    new-instance v1, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$3;-><init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setOnWebViewScrollChangeListener(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_kwad_titlebar_title:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_kwad_web_navi_back:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/kwad/sdk/R$id;->ksad_kwad_web_navi_close:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/kwad/sdk/R$id;->ksad_landing_page_root:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mWebContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    const-string v4, "\u8be6\u60c5\u9875\u9762"

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8d

    iget-object v3, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    if-eqz v3, :cond_8d

    iget-object v5, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8d

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_90

    :cond_8d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_90
    new-instance v0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$4;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$4;-><init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$5;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$5;-><init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->initTipBarView()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    if-eqz p0, :cond_2d

    if-nez p1, :cond_5

    goto :goto_2d

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwad/sdk/api/proxy/app/AdWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    instance-of p1, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz p1, :cond_23

    check-cast p0, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {p0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p0

    :cond_23
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_2d

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private registerWebCardHandler(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;Lcom/kwad/sdk/core/webview/a/g;)V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/d;-><init>()V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    new-instance v1, Lcom/kwad/sdk/core/webview/jshandler/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    new-instance v3, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$1;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$1;-><init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/kwad/sdk/core/webview/jshandler/a;-><init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/webview/jshandler/a$b;)V

    invoke-virtual {p2, v1}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/g;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/g;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/l;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/l;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/j;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsBridgeContext:Lcom/kwad/sdk/core/webview/a;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/j;-><init>(Lcom/kwad/sdk/core/webview/a;)V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/m;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/m;-><init>()V

    new-instance v1, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;-><init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;Lcom/kwad/sdk/core/webview/jshandler/m;)V

    invoke-virtual {p1, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setDeepLinkListener(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$b;)V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/a;)V

    return-void
.end method

.method private setupJsBridge(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->clearJsInterfaceRegister()V

    new-instance v0, Lcom/kwad/sdk/core/webview/a/g;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/webview/a/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsInterface:Lcom/kwad/sdk/core/webview/a/g;

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->registerWebCardHandler(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;Lcom/kwad/sdk/core/webview/a/g;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mJsInterface:Lcom/kwad/sdk/core/webview/a/g;

    const-string v1, "KwaiAd"

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/b/a;->onBackPressed()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->goBack()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    sget p1, Lcom/kwad/sdk/R$layout;->ksad_activity_ad_webview:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->setContentView(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_template"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->initView()V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->finish()V

    :goto_1e
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->mAdWebView:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->b()V

    :cond_7
    invoke-super {p0}, Lcom/kwad/sdk/b/a;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->overridePendingTransition(II)V

    return-void
.end method
