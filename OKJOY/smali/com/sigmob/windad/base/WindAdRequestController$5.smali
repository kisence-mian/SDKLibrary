.class Lcom/sigmob/windad/base/WindAdRequestController$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/ADStrategy;

.field final synthetic b:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$5;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$5;->a:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$5;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->d(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$5;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->d(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$5;->a:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;->onVideoAdClicked(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
