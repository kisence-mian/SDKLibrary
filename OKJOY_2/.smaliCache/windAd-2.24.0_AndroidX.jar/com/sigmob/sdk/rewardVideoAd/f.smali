.class public Lcom/sigmob/sdk/rewardVideoAd/f;
.super Lcom/sigmob/sdk/base/common/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/rewardVideoAd/f$a;
    }
.end annotation


# instance fields
.field private e:Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/v;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/v;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    instance-of v0, v0, Lcom/sigmob/sdk/rewardVideoAd/f$a;

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    check-cast v1, Lcom/sigmob/sdk/rewardVideoAd/f$a;

    iget-wide v2, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->a:J

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/rewardVideoAd/f$a;J)V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->e:Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;

    invoke-virtual {v0, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    invoke-interface {v0, p2}, Lcom/sigmob/sdk/base/common/k$a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1e
    const-class v2, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-wide v4, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->a:J

    invoke-virtual {p0}, Lcom/sigmob/sdk/rewardVideoAd/f;->a()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/v;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/v;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/f;->e:Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/rewardVideoAd/RewardVideoAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_a
    return-void
.end method
