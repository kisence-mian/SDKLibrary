.class public Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;
.super Lcom/kwad/sdk/core/e/a;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/KsRewardVideoActivity;
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

.field private static final TAG:Ljava/lang/String; = "RewardVideo"

.field public static mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;


# instance fields
.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdOpenInteractionListener:Lcom/kwad/sdk/reward/a/b;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mContext:Landroid/content/Context;

.field private mDetailVideoView:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private mIsBackEnable:Z

.field private mPageDismissCalled:Z

.field private mPageListener:Lcom/kwad/sdk/reward/a/f;

.field private mReportExtData:Lorg/json/JSONObject;

.field private mRewardTopBarNewStyle:Z

.field private mRewardVerifyCalled:Z

.field private mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field public mScreenOrientation:I

.field private mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$1;-><init>(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mPageListener:Lcom/kwad/sdk/reward/a/f;

    new-instance v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$2;-><init>(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdOpenInteractionListener:Lcom/kwad/sdk/reward/a/b;

    return-void
.end method

.method static synthetic access$002(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mIsBackEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyRewardVerify()V

    return-void
.end method

.method static synthetic access$200(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyPageDismiss(Z)V

    return-void
.end method

.method private initData()Z
    .registers 6

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_video_play_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/api/KsVideoPlayConfig;

    const-string v2, "RewardVideo"

    const/4 v3, 0x0

    if-nez v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is not instanceof VideoPlayConfigImpl:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_28
    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "key_template"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v4, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v4, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is not instanceof AdTemplate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_20

    :cond_46
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->w()I

    move-result v2

    if-gez v2, :cond_6b

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6b

    :cond_6a
    return v3

    :cond_6b
    check-cast v0, Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iput-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mScreenOrientation:I

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_82

    const/4 v1, 0x2

    goto :goto_83

    :cond_82
    move v1, v2

    :goto_83
    iput v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->initVideoPlayConfig(Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRewardTopBarNewStyle:Z

    return v2
.end method

.method private initVideoPlayConfig(Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->getShowScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->getShowScene()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ext_showscene"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private initView()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mDetailVideoView:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setAd(Z)V

    return-void
.end method

.method private isShowNewStyle()Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->e(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mCallerContext:Lcom/kwad/sdk/reward/a;

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

.method public static launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsVideoPlayConfig;Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    new-instance v0, Landroid/content/Intent;

    invoke-interface {p2}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isShowLandscape()Z

    move-result v1

    if-eqz v1, :cond_11

    const-class v1, Lcom/kwad/sdk/api/proxy/app/KSRewardLandScapeVideoActivity;

    goto :goto_13

    :cond_11
    const-class v1, Lcom/kwad/sdk/api/proxy/app/KsRewardVideoActivity;

    :goto_13
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "key_video_play_config"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sput-object p3, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyPageDismiss(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mPageDismissCalled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mPageDismissCalled:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mCallerContext:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    goto :goto_16

    :cond_11
    iget-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    :goto_16
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    sget-object p1, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;->onPageDismiss()V

    :cond_20
    return-void
.end method

.method private notifyRewardVerify()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRewardVerifyCalled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRewardVerifyCalled:Z

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;->onRewardVerify()V

    :cond_f
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyPageDismiss(Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mIsBackEnable:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyRewardVerify()V

    invoke-super {p0}, Lcom/kwad/sdk/core/e/a;->onBackPressed()V

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/e/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->initData()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->finish()V

    return-void

    :cond_17
    iget-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mContext:Landroid/content/Context;

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_activity_reward_video:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->initView()V

    iget-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->onActivityCreated(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateCallerContext()Lcom/kwad/sdk/reward/a;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/reward/a;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/a;-><init>()V

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdOpenInteractionListener:Lcom/kwad/sdk/reward/a/b;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    iget v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mScreenOrientation:I

    iput v1, v0, Lcom/kwad/sdk/reward/a;->e:I

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/c/a;

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mDetailVideoView:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v4, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-direct {v1, v2, v3, v4}, Lcom/kwad/sdk/reward/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v2, v0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    :cond_48
    new-instance v1, Lcom/kwad/sdk/reward/b/b/a/a;

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v3, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mScreenOrientation:I

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/reward/b/b/a/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->k:Lcom/kwad/sdk/reward/b/b/a/a;

    iget-object v1, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mPageListener:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/kwad/sdk/c/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLorg/json/JSONObject;)Lcom/kwad/sdk/c/c;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->l:Lcom/kwad/sdk/c/c;

    new-instance v1, Lcom/kwad/sdk/c/b;

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mReportExtData:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/kwad/sdk/c/b;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/kwad/sdk/reward/a;->m:Lcom/kwad/sdk/c/b;

    iput-boolean v3, v0, Lcom/kwad/sdk/reward/a;->q:Z

    iget-boolean v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRewardTopBarNewStyle:Z

    iput-boolean v1, v0, Lcom/kwad/sdk/reward/a;->r:Z

    return-object v0
.end method

.method protected onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;
    .registers 7

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/reward/b/d;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/reward/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b;

    iget-boolean v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mRewardTopBarNewStyle:Z

    invoke-direct {v1, v2}, Lcom/kwad/sdk/reward/b/b/b;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Lcom/kwad/sdk/reward/b/b/a/c;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/a/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_37
    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->G(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v1, Lcom/kwad/sdk/reward/b/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_47
    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->H(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-direct {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->isShowNewStyle()Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Lcom/kwad/sdk/reward/b/b/c;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/b/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_5d
    new-instance v1, Lcom/kwad/sdk/reward/b/e;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/kwad/sdk/reward/b/g;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v2, v3, v4}, Lcom/kwad/sdk/reward/b/g;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    if-nez v1, :cond_8d

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->p()Z

    move-result v2

    if-eqz v2, :cond_8d

    new-instance v2, Lcom/kwad/sdk/reward/b/c;

    invoke-direct {v2}, Lcom/kwad/sdk/reward/b/c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_8d
    new-instance v2, Lcom/kwad/sdk/reward/b/c/a;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/kwad/sdk/reward/b/c/a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/c;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v2

    if-nez v2, :cond_ac

    new-instance v2, Lcom/kwad/sdk/reward/b/c/b;

    invoke-direct {v2, v1}, Lcom/kwad/sdk/reward/b/c/b;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_ac
    new-instance v1, Lcom/kwad/sdk/reward/b/a/a;

    invoke-direct {v1}, Lcom/kwad/sdk/reward/b/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/e/a;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyPageDismiss(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/c/a;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/videocache/f;->c(Ljava/lang/String;)Z

    :cond_1a
    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    return-void
.end method
