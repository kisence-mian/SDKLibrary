.class Lcom/sigmob/windad/base/WindAdRequestController$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidRreLoadSuccessRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/ADStrategy;

.field final synthetic b:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$6;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$6;->a:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$6;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$6;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$6;->a:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;->onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_17
.end method
