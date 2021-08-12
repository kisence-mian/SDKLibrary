.class Lcom/sigmob/sdk/rewardVideoAd/e$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->d:Lcom/sigmob/sdk/rewardVideoAd/e;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->a:Ljava/lang/String;

    iput p3, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->b:I

    iput-object p4, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlacement_id(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAdtype(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$14;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setLoad_id(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
