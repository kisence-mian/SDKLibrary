.class public Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
.super Lcom/sigmob/windad/WindAdRequest;


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->a:I

    return-void
.end method

.method public static getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 5

    if-eqz p0, :cond_14

    new-instance v0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
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
