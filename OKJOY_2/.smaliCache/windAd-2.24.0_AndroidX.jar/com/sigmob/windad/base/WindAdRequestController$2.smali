.class Lcom/sigmob/windad/base/WindAdRequestController$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;-><init>(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_cc

    goto/16 :goto_cb

    :sswitch_7
    :try_start_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/sigmob/sdk/common/models/ADStrategy;

    if-eqz v0, :cond_cb

    check-cast p1, Lcom/sigmob/sdk/common/models/ADStrategy;

    const-string v0, "loadAd strategy name %s, placementId %s Timeout load id %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v2, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const-string v0, "loadAd strategy name %s, placementId %s Timeout"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_55

    goto :goto_cb

    :catchall_55
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd strategy name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_cb

    :sswitch_71
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object p1, p1, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne p1, v0, :cond_cb

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadAd Timeout load id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timeout"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object p1

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object p1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$2;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    return-void

    :sswitch_data_cc
    .sparse-switch
        0x3e8 -> :sswitch_71
        0x7d0 -> :sswitch_7
    .end sparse-switch
.end method
