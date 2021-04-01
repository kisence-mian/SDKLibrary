.class Lcom/sigmob/windad/WindAds$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/WindAds;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAds;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/WindAds;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAds$1;->a:Lcom/sigmob/windad/WindAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/a;->b()V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/windad/WindAds$1;->a:Lcom/sigmob/windad/WindAds;

    invoke-static {v0}, Lcom/sigmob/windad/WindAds;->a(Lcom/sigmob/windad/WindAds;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->autoLoadAd()V

    :cond_1e
    return-void
.end method
