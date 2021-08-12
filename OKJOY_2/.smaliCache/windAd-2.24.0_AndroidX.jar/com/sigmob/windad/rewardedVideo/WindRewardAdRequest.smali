.class public Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
.super Lcom/sigmob/windad/WindAdRequest;


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->a:I

    return-void
.end method

.method public static getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 4

    if-eqz p0, :cond_14

    new-instance v0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isEnableKeepOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->c:Z

    return v0
.end method

.method public isEnableScreenLockDisPlayAd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->b:Z

    return v0
.end method

.method public setEnableKeepOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->c:Z

    return-void
.end method

.method public setEnableScreenLockDisPlayAd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->b:Z

    return-void
.end method
