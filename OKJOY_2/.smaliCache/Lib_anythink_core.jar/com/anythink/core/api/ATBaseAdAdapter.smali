.class public abstract Lcom/anythink/core/api/ATBaseAdAdapter;
.super Lcom/anythink/core/common/b/b;


# instance fields
.field protected mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

.field protected mScenario:Ljava/lang/String;

.field protected mUserData:Ljava/lang/String;

.field protected mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/anythink/core/common/b/b;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mScenario:Ljava/lang/String;

    return-void
.end method

.method private cleanLoadListener()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 71
    return-void
.end method


# virtual methods
.method public abstract destory()V
.end method

.method public getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;
    .registers 2

    .line 56
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBidManager()Lcom/anythink/core/api/MediationBidManager;
    .registers 2

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 91
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNetworkName()Ljava/lang/String;
.end method

.method public abstract getNetworkPlacementId()Ljava/lang/String;
.end method

.method public abstract getNetworkSDKVersion()Ljava/lang/String;
.end method

.method public getUserCustomData()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 48
    const/4 p1, 0x0

    return p1
.end method

.method public final internalInitNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 61
    if-eqz p3, :cond_2a

    .line 62
    const-string v0, "user_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_15

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v2

    :goto_16
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserId:Ljava/lang/String;

    .line 63
    const-string v0, "user_custom_data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_28
    iput-object v2, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    .line 65
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public final internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATCustomLoadListener;",
            ")V"
        }
    .end annotation

    .line 74
    iput-object p4, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 75
    if-eqz p3, :cond_2c

    .line 76
    const-string p4, "user_id"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_17

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_18

    :cond_17
    move-object p4, v1

    :goto_18
    iput-object p4, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserId:Ljava/lang/String;

    .line 77
    const-string p4, "user_custom_data"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2a
    iput-object v1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    .line 79
    :cond_2c
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public abstract isAdReady()Z
.end method

.method public abstract loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public releaseLoadResource()V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->cleanLoadListener()V

    .line 84
    return-void
.end method

.method public final setScenario(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mScenario:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUserDataConsent(Landroid/content/Context;ZZ)Z
    .registers 4

    .line 44
    const/4 p1, 0x0

    return p1
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    .line 87
    const/4 p1, 0x0

    return p1
.end method

.method public supportImpressionCallback()Z
    .registers 2

    .line 100
    const/4 v0, 0x1

    return v0
.end method
