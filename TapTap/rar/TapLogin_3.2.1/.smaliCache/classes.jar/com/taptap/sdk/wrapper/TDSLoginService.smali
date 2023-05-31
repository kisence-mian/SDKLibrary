.class public interface abstract Lcom/taptap/sdk/wrapper/TDSLoginService;
.super Ljava/lang/Object;
.source "TDSLoginService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TDSLoginService"
.end annotation


# virtual methods
.method public abstract changeConfig(ZZ)V
    .param p1    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "roundCorner"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "isPortrait"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "changeConfig"
    .end annotation
.end method

.method public abstract currentAccessToken(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "currentAccessToken"
    .end annotation
.end method

.method public abstract currentProfile(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "currentProfile"
    .end annotation
.end method

.method public abstract fetchProfileForCurrentAccessToken(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "fetchProfileForCurrentAccessToken"
    .end annotation
.end method

.method public abstract getTestQualification(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "getTestQualification"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientID"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;ZZ)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientID"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "regionType"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "roundCorner"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initWithClientID"
    .end annotation
.end method

.method public abstract logout()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "logout"
    .end annotation
.end method

.method public abstract registerLoginCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "registerLoginCallback"
    .end annotation
.end method

.method public abstract startTapLogin(Landroid/app/Activity;[Ljava/lang/String;)V
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "permissions"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "startTapLogin"
    .end annotation
.end method

.method public abstract unregisterLoginCallback()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "unregisterLoginCallback"
    .end annotation
.end method
