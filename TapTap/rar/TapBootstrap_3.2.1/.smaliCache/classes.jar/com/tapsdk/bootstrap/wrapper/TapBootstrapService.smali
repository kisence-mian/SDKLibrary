.class public interface abstract Lcom/tapsdk/bootstrap/wrapper/TapBootstrapService;
.super Ljava/lang/Object;
.source "TapBootstrapService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TapBootstrapService"
.end annotation


# virtual methods
.method public abstract anonymouslyLogin(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "anonymouslyLogin"
    .end annotation
.end method

.method public abstract getUser(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "getUser"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "initWithConfig"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initWithConfig"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Z)V
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
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract login(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;[Ljava/lang/String;)V
    .param p3    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "permissions"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "login"
    .end annotation
.end method

.method public abstract logout()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "logout"
    .end annotation
.end method

.method public abstract setPreferredLanguage(I)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "preferredLanguage"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setPreferredLanguage"
    .end annotation
.end method
