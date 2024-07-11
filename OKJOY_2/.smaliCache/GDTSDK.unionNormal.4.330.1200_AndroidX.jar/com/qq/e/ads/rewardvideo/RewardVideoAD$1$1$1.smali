.class Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCached()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z

    return-void
.end method

.method public onLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z

    return-void
.end method
