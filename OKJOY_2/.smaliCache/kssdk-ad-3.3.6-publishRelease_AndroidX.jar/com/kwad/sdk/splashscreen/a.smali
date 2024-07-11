.class public Lcom/kwad/sdk/splashscreen/a;
.super Lcom/kwad/sdk/api/core/AbstrackKsSplashScreenAd;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private b:Lcom/kwad/sdk/api/KsScene;

.field private final c:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/api/core/AbstrackKsSplashScreenAd;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/splashscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a;->b:Lcom/kwad/sdk/api/KsScene;

    iget-object p1, p2, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method


# virtual methods
.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->v(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method protected getFragment2(Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)Lcom/kwad/sdk/api/core/fragment/KsFragment;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a;->b:Lcom/kwad/sdk/api/KsScene;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-static {v0, v1}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/splashscreen/KsSplashScreenFragment;->a(Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)V

    return-object v0
.end method

.method public getView2(Landroid/content/Context;Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a;->b:Lcom/kwad/sdk/api/KsScene;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/splashscreen/b;->a(Landroid/content/Context;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/splashscreen/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/splashscreen/b;->setSplashScreenAdListener(Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)V

    return-object p1
.end method

.method public isAdEnable()Z
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public isVideo()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    return v0
.end method

.method public setBidEcpm(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
