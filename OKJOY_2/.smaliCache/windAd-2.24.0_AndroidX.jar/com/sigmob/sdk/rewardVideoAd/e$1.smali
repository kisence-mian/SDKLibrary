.class Lcom/sigmob/sdk/rewardVideoAd/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$1;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$1;->a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$1;->a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setAdtype(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$1;->a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setPlacement_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$1;->a:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setLoad_id(Ljava/lang/String;)V

    :cond_25
    return-void
.end method
