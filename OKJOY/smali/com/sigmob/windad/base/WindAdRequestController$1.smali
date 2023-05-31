.class Lcom/sigmob/windad/base/WindAdRequestController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->showAd(Landroid/app/Activity;Ljava/util/HashMap;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/util/HashMap;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_ae

    :cond_9
    :goto_9
    packed-switch v0, :pswitch_data_bc

    :goto_c
    return-void

    :sswitch_d
    const-string v1, "STRATEGY_EMPTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :sswitch_17
    const-string v1, "READY_EMPTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :sswitch_21
    const-string v1, "NOT_ADAPTER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    goto :goto_9

    :pswitch_2b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v4, v4, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    sget-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    goto :goto_c

    :pswitch_56
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v4, v4, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    sget-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    goto :goto_c

    :pswitch_81
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v4, v4, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    sget-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    goto/16 :goto_c

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x450b1e9f -> :sswitch_d
        -0x2fab9c8f -> :sswitch_17
        -0x266b5e5d -> :sswitch_21
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_56
        :pswitch_81
    .end packed-switch
.end method

.method public onSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 10

    const/4 v6, 0x0

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, v1, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdRequest;->setLoadId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->setSig_load_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->addOptions(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->a:Ljava/util/HashMap;

    const-string v2, "ad_scene"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;)Ljava/lang/String;

    :goto_2d
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->presentRewardVideoAd(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0, v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2d

    :cond_39
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v4, v4, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    sget-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$1;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    goto :goto_32
.end method
