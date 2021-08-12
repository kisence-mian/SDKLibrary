.class public Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dataFlowAutoStart:Z

.field private isNoCache:Z

.field private videoSoundEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->isNoCache:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    const-class v1, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/loader/Loader;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    iget-boolean v1, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable:Z

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->setVideoSoundEnable(Z)V

    iget-boolean v1, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart:Z

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->setDataFlowAutoStart(Z)V

    iget-boolean v1, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->isNoCache:Z

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->setNoCache()V

    :cond_1d
    return-object v0
.end method

.method public dataFlowAutoStart(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart:Z

    return-object p0
.end method

.method public noCache()Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->isNoCache:Z

    return-object p0
.end method

.method public videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable:Z

    return-object p0
.end method
