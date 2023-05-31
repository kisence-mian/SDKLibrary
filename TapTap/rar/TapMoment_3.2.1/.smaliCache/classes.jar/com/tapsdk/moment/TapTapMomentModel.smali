.class public Lcom/tapsdk/moment/TapTapMomentModel;
.super Ljava/lang/Object;
.source "TapTapMomentModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken(ZLcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V
    .registers 4
    .param p1, "useXDCache"    # Z
    .param p2, "listener"    # Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;

    .line 15
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/tapsdk/moment/TapTapMomentModel;->getTapTokenByXDSDK(ZLcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    goto :goto_d

    .line 18
    :cond_a
    invoke-virtual {p0, p2}, Lcom/tapsdk/moment/TapTapMomentModel;->getTapTokenByISCAsync(Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    .line 20
    :goto_d
    return-void
.end method

.method public getTapTokenByISCAsync(Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;

    .line 33
    :try_start_0
    const-string v0, "TapLogin"

    .line 34
    invoke-static {v0}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v0

    const-string v1, "currentAccessToken"

    .line 35
    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    .local v0, "accessToken":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;->onSuccess(Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/tds/common/isc/IscException; {:try_start_0 .. :try_end_18} :catch_19

    .line 41
    .end local v0    # "accessToken":Ljava/lang/String;
    goto :goto_2b

    .line 38
    :catch_19
    move-exception v0

    .line 39
    .local v0, "e":Lcom/tds/common/isc/IscException;
    invoke-virtual {v0}, Lcom/tds/common/isc/IscException;->printStackTrace()V

    .line 40
    new-instance v1, Lcom/tds/common/reactor/exceptions/FlowException;

    const/16 v2, 0x270f

    invoke-virtual {v0}, Lcom/tds/common/isc/IscException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tds/common/reactor/exceptions/FlowException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;->onFail(Lcom/tds/common/reactor/exceptions/FlowException;)V

    .line 42
    .end local v0    # "e":Lcom/tds/common/isc/IscException;
    :goto_2b
    return-void
.end method

.method public getTapTokenByXDSDK(ZLcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V
    .registers 4
    .param p1, "useCache"    # Z
    .param p2, "listener"    # Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;

    .line 23
    new-instance v0, Lcom/tapsdk/moment/TapTapMomentModel$1;

    invoke-direct {v0, p0, p2}, Lcom/tapsdk/moment/TapTapMomentModel$1;-><init>(Lcom/tapsdk/moment/TapTapMomentModel;Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    invoke-static {p1, v0}, Lcom/tapsdk/moment/XDSDKHelper;->getCurrentTapToken(ZLcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V

    .line 29
    return-void
.end method
