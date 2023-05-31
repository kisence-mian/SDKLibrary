.class public interface abstract Lcom/tds/common/wrapper/TDSCommonService;
.super Ljava/lang/Object;
.source "TDSCommonService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TDSCommonService"
.end annotation


# virtual methods
.method public abstract addHost(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "hostToBeReplaced"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "replacedHost"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "addReplacedHostPair"
    .end annotation
.end method

.method public abstract getRegionCode(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "getRegionCode"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "initWithConfig"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "versionName"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initWithConfig"
    .end annotation
.end method

.method public abstract isTapGlobalInstalled(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "isTapGlobalInstalled"
    .end annotation
.end method

.method public abstract isTapTapInstalled(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "isTapTapInstalled"
    .end annotation
.end method

.method public abstract openReviewInTapGlobal(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "appId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "openReviewInTapGlobal"
    .end annotation
.end method

.method public abstract openReviewInTapTap(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "appId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "openReviewInTapTap"
    .end annotation
.end method

.method public abstract registerProperties(Ljava/lang/String;Lcom/tds/common/wrapper/TapPropertiesProxy;)V
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

.method public abstract setXUA(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "setXUA"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setXUA"
    .end annotation
.end method

.method public abstract updateGameInTapGlobal(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "appId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "updateGameInTapGlobal"
    .end annotation
.end method

.method public abstract updateGameInTapTap(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "appId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "updateGameInTapTap"
    .end annotation
.end method
