.class public Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsVideoPlayConfig;


# static fields
.field private static final serialVersionUID:J = -0x63f93bdac132a415L


# instance fields
.field private showLandscape:Z

.field private showScene:Ljava/lang/String;

.field private skipThirtySecond:Z

.field public videoSoundEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->videoSoundEnable:Z

    return-void
.end method


# virtual methods
.method public getShowScene()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->showScene:Ljava/lang/String;

    return-object v0
.end method

.method public isShowLandscape()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->showLandscape:Z

    return v0
.end method

.method public isSkipThirtySecond()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->skipThirtySecond:Z

    return v0
.end method

.method public isVideoSoundEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->videoSoundEnable:Z

    return v0
.end method

.method public setShowLandscape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->showLandscape:Z

    return-void
.end method

.method public setShowScene(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->showScene:Ljava/lang/String;

    return-void
.end method

.method public setSkipThirtySecond(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->skipThirtySecond:Z

    return-void
.end method

.method public setVideoSoundEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/internal/api/VideoPlayConfigImpl;->videoSoundEnable:Z

    return-void
.end method
