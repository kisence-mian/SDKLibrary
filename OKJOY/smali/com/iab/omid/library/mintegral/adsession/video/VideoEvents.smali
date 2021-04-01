.class public final Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
.super Ljava/lang/Object;


# instance fields
.field private final adSession:Lcom/iab/omid/library/mintegral/adsession/a;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    return-void
.end method

.method private confirmValidDuration(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Video duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private confirmValidVolume(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Video volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void
.end method

.method public static createVideoEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->g(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->b(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->e(Lcom/iab/omid/library/mintegral/adsession/a;)V

    new-instance v1, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;-><init>(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)V

    return-object v1
.end method


# virtual methods
.method public adUserInteraction(Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;)V
    .registers 5

    const-string v0, "InteractionType is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "interactionType"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v1

    const-string v2, "adUserInteraction"

    invoke-virtual {v1, v2, v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bufferFinish()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "bufferFinish"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bufferStart()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "bufferStart"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public complete()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public firstQuartile()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "firstQuartile"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loaded(Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;)V
    .registers 5

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->b(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "loaded"

    invoke-virtual {p1}, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public midpoint()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "midpoint"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public playerStateChange(Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;)V
    .registers 5

    const-string v0, "PlayerState is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v1

    const-string v2, "playerStateChange"

    invoke-virtual {v1, v2, v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public skipped()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "skipped"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public start(FF)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->confirmValidDuration(F)V

    invoke-direct {p0, p2}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->confirmValidVolume(F)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "videoPlayerVolume"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/e;->a()Lcom/iab/omid/library/mintegral/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/b/e;->d()F

    move-result v1

    const-string v2, "deviceVolume"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public thirdQuartile()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;)V

    return-void
.end method

.method public volumeChange(F)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->confirmValidVolume(F)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "videoPlayerVolume"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/e;->a()Lcom/iab/omid/library/mintegral/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/b/e;->d()F

    move-result v1

    const-string v2, "deviceVolume"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v1

    const-string v2, "volumeChange"

    invoke-virtual {v1, v2, v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
