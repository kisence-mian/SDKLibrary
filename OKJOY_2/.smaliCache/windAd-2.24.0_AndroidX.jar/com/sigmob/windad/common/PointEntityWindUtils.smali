.class public Lcom/sigmob/windad/common/PointEntityWindUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V
    .registers 6

    invoke-static {p0, p3, p4}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object p0

    if-eqz p5, :cond_9

    invoke-interface {p5, p0}, Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;->onAddExtra(Ljava/lang/Object;)V

    :cond_9
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    :cond_28
    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlatform(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAggr_channel_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAggr_appid(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAggr_placement_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlatform(Ljava/lang/String;)V

    :cond_4d
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    return-void
.end method

.method public static WindInit(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;-><init>()V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAc_type(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setPlacement_id(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setCategory(Ljava/lang/String;)V

    if-eqz p2, :cond_31

    invoke-interface {p2, v0}, Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;->onAddExtra(Ljava/lang/Object;)V

    :cond_31
    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->commit()V

    return-void
.end method

.method public static WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWind;

    move-result-object p0

    if-eqz p3, :cond_15

    invoke-interface {p3, p0}, Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;->onAddExtra(Ljava/lang/Object;)V

    :cond_15
    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setPlatform(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAggr_channel_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAggr_appid(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAggr_placement_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setPlatform(Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->commit()V

    return-void
.end method
