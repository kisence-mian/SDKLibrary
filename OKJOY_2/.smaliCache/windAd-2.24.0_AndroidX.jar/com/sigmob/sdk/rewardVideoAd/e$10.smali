.class Lcom/sigmob/sdk/rewardVideoAd/e$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/rewardVideoAd/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    iput-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdExpiredTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    invoke-static {v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->b:Lcom/sigmob/sdk/rewardVideoAd/e;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e$10;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
