.class Lcom/sigmob/windad/base/WindAdRequestController$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;-><init>(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c4

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v0, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd Timeout load id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, v1, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const-string v1, "timeout"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v4, v4, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    sget-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v1, v0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    const-string v1, "loadAd strategy name %s, placementId %s Timeout load id %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const-string v1, "loadAd strategy name %s, placementId %s Timeout"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    goto/16 :goto_8

    :sswitch_data_c4
    .sparse-switch
        0x3e8 -> :sswitch_9
        0x7d0 -> :sswitch_78
    .end sparse-switch
.end method
