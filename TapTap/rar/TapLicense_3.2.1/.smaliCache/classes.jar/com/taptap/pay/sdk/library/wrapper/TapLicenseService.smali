.class public interface abstract Lcom/taptap/pay/sdk/library/wrapper/TapLicenseService;
.super Ljava/lang/Object;
.source "TapLicenseService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TapLicenseService"
.end annotation


# virtual methods
.method public abstract check(Landroid/app/Activity;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "check"
    .end annotation
.end method

.method public abstract purchaseDLC(Landroid/app/Activity;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "dlc"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "purchaseDLC"
    .end annotation
.end method

.method public abstract queryDLC(Landroid/app/Activity;[Ljava/lang/String;)V
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "dlcList"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "queryDLC"
    .end annotation
.end method

.method public abstract setDLCCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setDLCCallback"
    .end annotation
.end method

.method public abstract setDLCCallbackWithParams(Lcom/tds/common/bridge/BridgeCallback;ZLjava/lang/String;)V
    .param p2    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "checkOnce"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "publicKey"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setDLCCallbackWithParams"
    .end annotation
.end method

.method public abstract setLicenseCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setLicenseCallback"
    .end annotation
.end method
