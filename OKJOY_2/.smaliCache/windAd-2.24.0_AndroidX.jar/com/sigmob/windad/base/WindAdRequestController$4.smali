.class Lcom/sigmob/windad/base/WindAdRequestController$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->getReadyAdapter(Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindVideoAdAdapter;

.field final synthetic b:Z

.field final synthetic c:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/base/WindVideoAdAdapter;Z)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->a:Lcom/sigmob/windad/base/WindVideoAdAdapter;

    iput-boolean p3, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .registers 6

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    if-eqz v0, :cond_38

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->a:Lcom/sigmob/windad/base/WindVideoAdAdapter;

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_19

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setSub_category(Ljava/lang/String;)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setSub_category(Ljava/lang/String;)V

    :goto_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->b:Z

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move-object v1, v2

    :goto_27
    const-string v2, "expired"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setOptions(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$4;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setVlist(Ljava/lang/String;)V

    :cond_38
    return-void
.end method
