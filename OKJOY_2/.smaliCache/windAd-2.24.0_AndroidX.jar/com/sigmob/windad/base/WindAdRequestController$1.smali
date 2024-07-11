.class Lcom/sigmob/windad/base/WindAdRequestController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->showAd(Landroid/app/Activity;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/sigmob/windad/base/WindAdRequestController;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/util/HashMap;Lcom/sigmob/windad/base/WindAdRequestController;Landroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p4, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    goto :goto_1c

    :sswitch_8
    const-string v0, "READY_EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :sswitch_12
    const-string v0, "STRATEGY_EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    const/4 v1, 0x0

    const-string v2, "play"

    packed-switch v0, :pswitch_data_6c

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v3}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v3

    invoke-static {v0, v2, v1, v3, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    goto :goto_60

    :pswitch_36
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-static {p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    goto :goto_59

    :pswitch_48
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-static {p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    :goto_59
    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v1, v0, v3}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    :goto_60
    return-void

    nop

    :sswitch_data_62
    .sparse-switch
        -0x450b1e9f -> :sswitch_12
        -0x2fab9c8f -> :sswitch_8
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_36
    .end packed-switch
.end method

.method public onSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v2, v1, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, v1, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v2, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/WindAdRequest;->setLoadId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, v1, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/common/models/ADStrategy;->setSig_load_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_37

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    const-string v2, "ad_scene"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/common/models/ADStrategy;->addOptions(Ljava/util/HashMap;)V

    goto :goto_3c

    :cond_37
    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v1, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;)Ljava/lang/String;

    :goto_3c
    invoke-static {}, Lcom/sigmob/windad/base/WindVideoAdBridge;->Bridge()Lcom/sigmob/windad/base/WindVideoAdBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeInitListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeLoadListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->b:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeShowListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->presentVideoAd(Landroid/app/Activity;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    goto :goto_73

    :cond_59
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object p2, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p2

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play"

    invoke-static {p1, v2, v0, p2, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->d:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object p2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-static {p1, p2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    :goto_73
    return-void
.end method
