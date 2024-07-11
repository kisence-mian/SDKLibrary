.class Lcom/sigmob/sdk/rewardVideoAd/e$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field final synthetic b:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$9;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$9;->a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 6

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$9;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$9;->a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "1"

    if-eqz v1, :cond_1d

    move-object v1, v2

    goto :goto_1f

    :cond_1d
    const-string v1, "0"

    :goto_1f
    const-string v3, "expired"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setOptions(Ljava/util/Map;)V

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setSub_category(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method
