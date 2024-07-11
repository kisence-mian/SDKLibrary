.class public Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;
.super Lcom/kwad/sdk/contentalliance/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/contentalliance/a<",
        "Lcom/kwad/sdk/splashscreen/c;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

.field private e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field private f:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field private h:Lcom/kwad/sdk/core/download/b/b;

.field private i:Lcom/kwad/sdk/core/i/a;

.field private j:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private k:Lcom/kwad/sdk/api/KsScene;

.field private l:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method public static a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "adScene"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_20

    iget-object p0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    const-string p1, "KsSplashScreenFragment"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_20
    new-instance p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->d:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/core/e/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/core/e/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/core/e/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->f:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    return-object p0
.end method

.method private f()V
    .registers 6

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KsSplashScreenFragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    const-string v2, "FullScreenVideo"

    const/4 v3, 0x0

    if-nez v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is not instanceof AdTemplate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->d:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    const-string v1, "\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    invoke-interface {v0, v3, v1}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowError(ILjava/lang/String;)V

    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "adScene"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v4, v1, Lcom/kwad/sdk/api/KsScene;

    if-nez v4, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is not instanceof AdScene"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->d:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    const-string v1, "AdScene \u6570\u636e\u9519\u8bef"

    invoke-interface {v0, v3, v1}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowError(ILjava/lang/String;)V

    return-void

    :cond_62
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    check-cast v1, Lcom/kwad/sdk/api/KsScene;

    iput-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->k:Lcom/kwad/sdk/api/KsScene;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->mute:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7f

    move v3, v2

    :cond_7f
    invoke-virtual {v0, v3}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->skipThirtySecond(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v2, 0x2

    :cond_96
    iput v2, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    new-instance v0, Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->h:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->h:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->c:Landroid/view/ViewGroup;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_root_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->f:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->c:Landroid/view/ViewGroup;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_video_player:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setAd(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->f:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    new-instance v1, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment$1;-><init>(Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->m:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->m:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/splashscreen/b/a;->f()V

    :cond_14
    return-void
.end method

.method public a(Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->d:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iput-object p1, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    :cond_c
    return-void
.end method

.method protected b()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_splash_screen:I

    return v0
.end method

.method protected synthetic c()Lcom/kwad/sdk/core/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->e()Lcom/kwad/sdk/splashscreen/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/kwad/sdk/mvp/Presenter;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/a;

    invoke-direct {v1}, Lcom/kwad/sdk/splashscreen/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/b;

    invoke-direct {v1}, Lcom/kwad/sdk/splashscreen/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/d;

    invoke-direct {v1}, Lcom/kwad/sdk/splashscreen/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/f;

    invoke-direct {v1}, Lcom/kwad/sdk/splashscreen/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/e;

    invoke-direct {v1}, Lcom/kwad/sdk/splashscreen/a/e;-><init>()V

    goto :goto_38

    :cond_33
    new-instance v1, Lcom/kwad/sdk/splashscreen/a/c;

    invoke-direct {v1}, Lcom/kwad/sdk/splashscreen/a/c;-><init>()V

    :goto_38
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method

.method protected e()Lcom/kwad/sdk/splashscreen/c;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/i/a;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->c:Landroid/view/ViewGroup;

    const/16 v2, 0x46

    invoke-direct {v0, p0, v1, v2}, Lcom/kwad/sdk/core/i/a;-><init>(Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->i:Lcom/kwad/sdk/core/i/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/i/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    if-nez v0, :cond_31

    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->mute:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->skipThirtySecond(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    :cond_31
    new-instance v0, Lcom/kwad/sdk/splashscreen/c;

    invoke-direct {v0}, Lcom/kwad/sdk/splashscreen/c;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->d:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->f:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->k:Lcom/kwad/sdk/api/KsScene;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->g:Lcom/kwad/sdk/api/KsScene;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->b:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->i:Lcom/kwad/sdk/core/i/a;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->h:Lcom/kwad/sdk/core/download/b/b;

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->f:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->l:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v1, Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->j:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v3, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->g:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v4, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-direct {v1, v2, v3, v4}, Lcom/kwad/sdk/splashscreen/b/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    iput-object v1, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v2, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v2, v1}, Lcom/kwad/sdk/core/i/b;->a(Lcom/kwad/sdk/core/i/c;)V

    :cond_6c
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/a;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    check-cast p1, Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->b:Lcom/kwad/sdk/core/e/b;

    check-cast p1, Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/splashscreen/b/a;->g()V

    :cond_14
    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/a;->onDestroy()V

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->h()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/a;->onDestroyView()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->i:Lcom/kwad/sdk/core/i/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/i/a;->b()V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/a;->onPause()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->i:Lcom/kwad/sdk/core/i/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/i/a;->d()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/a;->onResume()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->i:Lcom/kwad/sdk/core/i/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/i/a;->c()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->f()V

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->g()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/a;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->i:Lcom/kwad/sdk/core/i/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/i/a;->a(Z)V

    return-void
.end method
