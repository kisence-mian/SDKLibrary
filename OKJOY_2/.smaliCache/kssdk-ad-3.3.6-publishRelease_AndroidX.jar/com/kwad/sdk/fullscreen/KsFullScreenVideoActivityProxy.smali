.class public Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;
.super Lcom/kwad/sdk/core/e/a;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/KsFullScreenVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/e/a<",
        "Lcom/kwad/sdk/reward/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_TEMPLATE:Ljava/lang/String; = "key_template"

.field public static final KEY_VIDEO_PLAY_CONFIG:Ljava/lang/String; = "key_video_play_config"

.field private static final TAG:Ljava/lang/String; = "FullScreenVideo"

.field public static mInteractionListener:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# instance fields
.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdOpenInteractionListener:Lcom/kwad/sdk/reward/a/b;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mContext:Landroid/app/Activity;

.field private mDetailVideoView:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private mIsBackEnable:Z

.field private mPageDismissCalled:Z

.field private mPageListener:Lcom/kwad/sdk/reward/a/f;

.field private mReportExtData:Lorg/json/JSONObject;

.field private mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field public mScreenOrientation:I

.field private mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$1;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mPageListener:Lcom/kwad/sdk/reward/a/f;

    new-instance v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$2;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdOpenInteractionListener:Lcom/kwad/sdk/reward/a/b;

    return-void
.end method

.method static synthetic access$002(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mIsBackEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->notifyPageDismiss()V

    return-void
.end method

.method private initData()Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_video_play_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/api/KsVideoPlayConfig;

    const-string v2, "FullScreenVideo"

    const/4 v3, 0x0

    if-nez v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is not instanceof VideoPlayConfigImpl:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2a
    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "key_template"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v4, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v4, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is not instanceof AdTemplate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_22

    :cond_4a
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->w()I

    move-result v2

    if-gez v2, :cond_6f

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6f

    :cond_6e
    return v3

    :cond_6f
    check-cast v0, Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mScreenOrientation:I

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_86

    const/4 v1, 0x2

    goto :goto_87

    :cond_86
    move v1, v2

    :goto_87
    iput v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->initVideoPlayConfig(Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    return v2
.end method

.method private initVideoPlayConfig(Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->getShowScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->getShowScene()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ext_showscene"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private initView()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mDetailVideoView:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setAd(Z)V

    return-void
.end method

.method private isShowNewStyle()Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->e(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mCallerContext:Lcom/kwad/sdk/reward/a;

    iget v2, v2, Lcom/kwad/sdk/reward/a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    if-gt v0, v1, :cond_1b

    :goto_16
    move v3, v4

    goto :goto_1b

    :cond_18
    if-lt v0, v1, :cond_1b

    goto :goto_16

    :cond_1b
    :goto_1b
    return v3
.end method

.method public static launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsVideoPlayConfig;Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    invoke-interface {p2}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v0

    if-nez v0, :cond_13

    const-class v0, Lcom/kwad/sdk/api/proxy/app/FeedDownloadActivity;

    const-class v1, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;

    invoke-static {v0, v1}, Lcom/kwad/sdk/KsAdSDKImpl;->putComponentProxy(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p2}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-class v1, Lcom/kwad/sdk/api/proxy/app/KsFullScreenLandScapeVideoActivity;

    goto :goto_20

    :cond_1e
    const-class v1, Lcom/kwad/sdk/api/proxy/app/FeedDownloadActivity;

    :goto_20
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "key_video_play_config"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sput-object p3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyPageDismiss()V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mPageDismissCalled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mPageDismissCalled:Z

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onPageDismiss()V

    :cond_17
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->notifyPageDismiss()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mIsBackEnable:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Lcom/kwad/sdk/core/e/a;->onBackPressed()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->initData()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->finish()V

    return-void

    :cond_10
    sget p1, Lcom/kwad/sdk/R$layout;->ksad_activity_fullscreen_video:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->setContentView(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->initView()V

    iget-object p1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->onActivityCreated(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateCallerContext()Lcom/kwad/sdk/reward/a;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/reward/a;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/a;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mContext:Landroid/app/Activity;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdOpenInteractionListener:Lcom/kwad/sdk/reward/a/b;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    iget v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mScreenOrientation:I

    iput v1, v0, Lcom/kwad/sdk/reward/a;->e:I

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/c/a;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mDetailVideoView:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v4, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-direct {v1, v2, v3, v4}, Lcom/kwad/sdk/reward/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v2, v0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_46

    new-instance v1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    :cond_46
    new-instance v1, Lcom/kwad/sdk/reward/b/b/a/a;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v3, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mScreenOrientation:I

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/reward/b/b/a/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->k:Lcom/kwad/sdk/reward/b/b/a/a;

    iget-object v1, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mPageListener:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/kwad/sdk/c/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLorg/json/JSONObject;)Lcom/kwad/sdk/c/c;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->l:Lcom/kwad/sdk/c/c;

    iput-boolean v3, v0, Lcom/kwad/sdk/reward/a;->q:Z

    return-object v0
.end method

.method protected onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/reward/b/d;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/fullscreen/a/a/c;

    invoke-direct {v1}, Lcom/kwad/sdk/fullscreen/a/a/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/a/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_2d
    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->G(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Lcom/kwad/sdk/reward/b/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_3d
    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->H(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->isShowNewStyle()Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v1, Lcom/kwad/sdk/reward/b/b/c;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_53
    new-instance v1, Lcom/kwad/sdk/fullscreen/a/a;

    invoke-direct {v1}, Lcom/kwad/sdk/fullscreen/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v1

    if-nez v1, :cond_6b

    new-instance v1, Lcom/kwad/sdk/fullscreen/a/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/fullscreen/a/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_6b
    new-instance v1, Lcom/kwad/sdk/reward/b/c/a;

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/kwad/sdk/reward/b/c/a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/reward/b/a/a;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/e/a;->onDestroy()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->notifyPageDismiss()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/c/a;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/videocache/f;->c(Ljava/lang/String;)Z

    :cond_19
    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-void
.end method
