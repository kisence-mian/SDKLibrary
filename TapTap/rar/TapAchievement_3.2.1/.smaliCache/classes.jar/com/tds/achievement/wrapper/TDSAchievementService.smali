.class public interface abstract Lcom/tds/achievement/wrapper/TDSAchievementService;
.super Ljava/lang/Object;
.source "TDSAchievementService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TDSAchievementService"
.end annotation


# virtual methods
.method public abstract fetchAllAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "fetchAllAchievementList"
    .end annotation
.end method

.method public abstract fetchUserAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "fetchUserAchievementList"
    .end annotation
.end method

.method public abstract getLocalAllAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "getLocalAllAchievementList"
    .end annotation
.end method

.method public abstract getLocalUserAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "getLocalUserAchievementList"
    .end annotation
.end method

.method public abstract growSteps(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "displayId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "growStep"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "growSteps"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "initWithConfig"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract initData()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initData"
    .end annotation
.end method

.method public abstract initWithTap(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "appId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "tapToken"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initWithTap"
    .end annotation
.end method

.method public abstract initWithXD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "appId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "xdToken"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initWithXD"
    .end annotation
.end method

.method public abstract makeSteps(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "displayId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "numStep"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "makeSteps"
    .end annotation
.end method

.method public abstract reach(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "displayId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "reach"
    .end annotation
.end method

.method public abstract registerCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "registerBridgeCallback"
    .end annotation
.end method

.method public abstract setShowToast(Z)V
    .param p1    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "showToast"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setShowToast"
    .end annotation
.end method

.method public abstract showAchievementPage()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "showAchievementPage"
    .end annotation
.end method
