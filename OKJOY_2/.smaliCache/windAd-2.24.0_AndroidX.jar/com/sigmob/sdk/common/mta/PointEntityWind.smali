.class public Lcom/sigmob/sdk/common/mta/PointEntityWind;
.super Lcom/sigmob/sdk/common/mta/PointEntityBase;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntityBase;-><init>()V

    return-void
.end method

.method public static WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWind;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;-><init>()V

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setPlacement_id(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAggr_appid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAggr_channel_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAggr_placement_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getGdpr_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getInit_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLoad_count()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLoading_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaying_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getPldempty_filters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVlist()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAggr_appid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->d:Ljava/lang/String;

    return-void
.end method

.method public setAggr_channel_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->c:Ljava/lang/String;

    return-void
.end method

.method public setAggr_placement_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->e:Ljava/lang/String;

    return-void
.end method

.method public setGdpr_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->g:Ljava/lang/String;

    return-void
.end method

.method public setInit_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->l:Ljava/lang/String;

    return-void
.end method

.method public setInterval_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->k:Ljava/lang/String;

    return-void
.end method

.method public setLoad_count(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->f:Ljava/lang/String;

    return-void
.end method

.method public setLoading_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->i:Ljava/lang/String;

    return-void
.end method

.method public setPlaying_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->j:Ljava/lang/String;

    return-void
.end method

.method public setPldempty_filters(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->h:Ljava/lang/String;

    return-void
.end method

.method public setVlist(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityWind;->b:Ljava/lang/String;

    return-void
.end method
