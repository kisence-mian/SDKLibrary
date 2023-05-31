.class public Lcom/tds/tapdb/IscTapDBService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/tds/common/isc/IscService;
    value = "TapDB"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTapDBDeviceIdCache(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "getTapDBDeviceIdCache"
    .end annotation

    invoke-static {p0}, Lcom/tds/tapdb/b/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTapTapDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "getTapTapDID"
    .end annotation

    invoke-static {p0}, Lcom/tds/tapdb/sdk/TapDB;->getTapTapDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/tds/common/entities/TapConfig;)V
    .registers 6
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "init"
    .end annotation

    iget-object v0, p1, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v1}, Lcom/tds/common/entities/TapDBConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    invoke-virtual {v2}, Lcom/tds/common/entities/TapDBConfig;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/tds/common/entities/TapConfig;->regionType:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
