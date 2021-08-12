.class public Lcom/kwad/sdk/fullscreen/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsFullScreenVideoAd;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/b;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/b;->isAdEnable()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "KsFullScreenVideoAdControl"

    const-string p2, "isAdEnable is false"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p2, :cond_19

    new-instance p2, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {p2}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object p2

    :cond_19
    const-class v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    const-string v1, "KEY_INIT_VOICE_STATUS"

    invoke-interface {v0, v1}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;->a(Ljava/lang/String;)Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->setVideoSoundEnable(Z)V

    :cond_36
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/b;->c:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-static {p1, v0, p2, v1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsVideoPlayConfig;Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    return-void
.end method


# virtual methods
.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/b;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->v(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->w()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/reward/f;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    return v0
.end method

.method public setBidEcpm(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    iget-object p1, p0, Lcom/kwad/sdk/fullscreen/b;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public setFullScreenVideoAdInteractionListener(Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/b;->c:Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/fullscreen/b;->a(Landroid/content/Context;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    return-void
.end method
