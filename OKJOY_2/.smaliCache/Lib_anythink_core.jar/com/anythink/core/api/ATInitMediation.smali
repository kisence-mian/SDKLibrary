.class public abstract Lcom/anythink/core/api/ATInitMediation;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityStatus()Ljava/util/List;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaValutStatus()Ljava/util/List;
    .registers 2

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 25
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, ""

    return-object v0
.end method

.method public getPluginClassStatus()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceStatus()Ljava/util/List;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public setUserDataConsent(Landroid/content/Context;ZZ)Z
    .registers 4

    .line 21
    const/4 p1, 0x0

    return p1
.end method
