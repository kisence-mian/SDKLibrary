.class public Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;
.super Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/AdWebViewActivity;
.end annotation


# static fields
.field public static final KEY_REPORTED:Ljava/lang/String; = "key_reported"

.field public static final KEY_TEMPLATE:Ljava/lang/String; = "key_template"


# instance fields
.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

.field private mFragment:Lcom/kwad/sdk/core/page/a;

.field private mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;

.field private mWebDownloadContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method

.method private initView()V
    .registers 8

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_download_progress:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/widget/DownloadProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_download_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mWebDownloadContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mWebDownloadContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v3, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v4, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;

    invoke-direct {v4, p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;-><init>(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;Lcom/kwad/sdk/core/response/model/AdInfo;)V

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;

    new-instance v1, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;-><init>(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Landroid/content/Context;)V

    goto :goto_4f

    :cond_48
    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mWebDownloadContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4f
    sget v0, Lcom/kwad/sdk/R$id;->ksad_kwad_titlebar_title:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_kwad_web_navi_back:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v3, Lcom/kwad/sdk/R$id;->ksad_kwad_web_navi_close:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    const-string v5, "\u8be6\u60c5\u9875\u9762"

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9d

    iget-object v4, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v6, v4, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9d

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a0

    :cond_9d
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a0
    new-instance v0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$3;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$3;-><init>(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$4;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$4;-><init>(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/t;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/d;->a(Landroid/app/Activity;IZ)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_recycler_container:I

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/page/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/page/a;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mFragment:Lcom/kwad/sdk/core/page/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/page/a;->a(Lcom/kwad/sdk/core/download/b/b;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getSupportFragmentManager()Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;->beginTransaction()Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mFragment:Lcom/kwad/sdk/core/page/a;

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->replace(ILcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    if-eqz p0, :cond_34

    if-nez p1, :cond_5

    goto :goto_34

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwad/sdk/api/proxy/app/BaseFragmentActivity$FragmentActivity3;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-boolean p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    const-string v1, "key_reported"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    instance-of p1, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz p1, :cond_2a

    check-cast p0, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {p0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p0

    :cond_2a
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_34

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mFragment:Lcom/kwad/sdk/core/page/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_a
    invoke-super {p0}, Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;->onBackPressed()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    sget p1, Lcom/kwad/sdk/R$layout;->ksad_activity_ad_video_webview:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->setContentView(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_template"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_28

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_reported"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->initView()V

    goto :goto_2b

    :cond_28
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->finish()V

    :goto_2b
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;->onDestroy()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/b/b;->f()V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->overridePendingTransition(II)V

    return-void
.end method
