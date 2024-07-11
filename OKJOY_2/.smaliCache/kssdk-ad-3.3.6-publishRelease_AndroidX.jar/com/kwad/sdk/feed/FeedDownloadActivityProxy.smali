.class public Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;
.super Lcom/kwad/sdk/b/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/FeedDownloadActivity;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_AD_DATA:Ljava/lang/String; = "key_template"

.field private static final TAG:Ljava/lang/String; = "FeedDownloadActivity"

.field private static mAdClickListener:Lcom/kwad/sdk/feed/widget/base/a$a;


# instance fields
.field private mAdContainer:Lcom/kwad/sdk/core/view/KsAdContainer;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

.field private mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

.field private mContext:Landroid/app/Activity;

.field private mProgressBarTv:Lcom/kwad/sdk/core/page/widget/TextProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/a;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mProgressBarTv:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->notifyAdClick()V

    return-void
.end method

.method private bindDownloadListener()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy$1;-><init>(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method

.method private initData()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_template"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    return v0

    :cond_17
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    const/4 v0, 0x1

    return v0
.end method

.method private intiView()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mContext:Landroid/app/Activity;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/KsAdContainer;

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdContainer:Lcom/kwad/sdk/core/view/KsAdContainer;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/view/KsAdContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mContext:Landroid/app/Activity;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_download_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->getTextProgressBar()Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mProgressBarTv:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->bindDownloadListener()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/feed/widget/base/a$a;)V
    .registers 5

    const-class v0, Lcom/kwad/sdk/api/proxy/app/FeedDownloadActivity;

    const-class v1, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;

    invoke-static {v0, v1}, Lcom/kwad/sdk/KsAdSDKImpl;->putComponentProxy(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwad/sdk/api/proxy/app/FeedDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sput-object p2, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdClickListener:Lcom/kwad/sdk/feed/widget/base/a$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyAdClick()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdContainer:Lcom/kwad/sdk/core/view/KsAdContainer;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/KsAdContainer;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/utils/o$a;)V

    sget-object v0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdClickListener:Lcom/kwad/sdk/feed/widget/base/a$a;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$a;->a()V

    :cond_12
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAppTailFrameView:Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitVertical;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mProgressBarTv:Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    if-ne p1, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy$2;-><init>(Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;)V

    iget-object v2, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mContext:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->initData()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_12
    sget p1, Lcom/kwad/sdk/R$layout;->ksad_activity_feed_download:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->setContentView(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/FeedDownloadActivityProxy;->intiView()V

    return-void
.end method
