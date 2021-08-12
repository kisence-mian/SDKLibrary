.class public interface abstract Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/KsLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewardVideoAdListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract onRewardVideoAdLoad(Ljava/util/List;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation
.end method
