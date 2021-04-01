.class public Lcom/kwad/sdk/fullscreen/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/i/KsFullScreenVideoAd;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/video/VideoPlayConfig;)V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/a;->isAdEnable()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "KsFullScreenVideoAdControl"

    const-string v1, "isAdEnable is false"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    if-nez p2, :cond_19

    new-instance v0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->build()Lcom/kwad/sdk/video/VideoPlayConfig;

    move-result-object p2

    :cond_19
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a;->c:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-static {p1, v0, p2, v1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/video/VideoPlayConfig;Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    goto :goto_d
.end method


# virtual methods
.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/reward/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    return v0
.end method

.method public setFullScreenVideoAdInteractionListener(Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/a;->c:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/video/VideoPlayConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/fullscreen/a;->a(Landroid/content/Context;Lcom/kwad/sdk/video/VideoPlayConfig;)V

    return-void
.end method
