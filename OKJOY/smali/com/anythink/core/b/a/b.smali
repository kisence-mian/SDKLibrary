.class public abstract Lcom/anythink/core/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field isRefresh:Z

.field protected mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingInfo:Lcom/anythink/core/b/c/b;

.field private mUnitgroupInfo:Lcom/anythink/core/c/c$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clean()V
.end method

.method public abstract getNetworkName()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public getTrackingInfo()Lcom/anythink/core/b/c/b;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    return-object v0
.end method

.method public getmUnitgroupInfo()Lcom/anythink/core/c/c$b;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/core/b/a/b;->mUnitgroupInfo:Lcom/anythink/core/c/c$b;

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAdReady()Z
.end method

.method public isRefresh()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/anythink/core/b/a/b;->isRefresh:Z

    return v0
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 64
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 65
    iget-object v0, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    if-eqz v0, :cond_e5

    .line 67
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->o()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 69
    const-string v1, "isDefault"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 71
    :cond_1d
    const-string v1, "placemengId"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "adType"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "refresh"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->v()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "position"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v1, "networkType"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->x()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v1, "networkName"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "networkVersion"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    .line 1226
    iget-object v2, v2, Lcom/anythink/core/b/c/b;->o:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "networkUnit"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "isHB"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v1, "msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "hourly_frequency"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string v1, "daily_frequency"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v1, "network_list"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "request_network_num"

    iget-object v2, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v1, "handle_class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e5} :catch_e6

    .line 96
    :cond_e5
    :goto_e5
    return-void

    :catch_e6
    move-exception v0

    goto :goto_e5
.end method

.method public refreshActivityContext(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/b/a/b;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method

.method public setRefresh(Z)V
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/anythink/core/b/a/b;->isRefresh:Z

    .line 43
    return-void
.end method

.method public setTrackingInfo(Lcom/anythink/core/b/c/b;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/anythink/core/b/a/b;->mTrackingInfo:Lcom/anythink/core/b/c/b;

    .line 27
    return-void
.end method

.method public setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anythink/core/b/a/b;->mUnitgroupInfo:Lcom/anythink/core/c/c$b;

    .line 39
    return-void
.end method
