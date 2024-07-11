.class public final Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;
.super Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;-><init>()V

    return-void
.end method


# virtual methods
.method public getWifi_id_list()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi_mac_list()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setWifi_id_list(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->b:Ljava/lang/String;

    return-void
.end method

.method public setWifi_mac_list(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityAntiSpan;->c:Ljava/lang/String;

    return-void
.end method
