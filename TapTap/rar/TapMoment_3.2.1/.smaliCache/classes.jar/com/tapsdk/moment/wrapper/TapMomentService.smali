.class public interface abstract Lcom/tapsdk/moment/wrapper/TapMomentService;
.super Ljava/lang/Object;
.source "TapMomentService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TapMomentService"
.end annotation


# virtual methods
.method public abstract close()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "close"
    .end annotation
.end method

.method public abstract closeWithConfirmWindow(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "content"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "closeWithConfirmWindow"
    .end annotation
.end method

.method public abstract directlyOpen(ILjava/lang/String;Ljava/lang/String;)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "extras"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "directlyOpen"
    .end annotation
.end method

.method public abstract fetchNotification()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "fetchNotification"
    .end annotation
.end method

.method public abstract init(Ljava/lang/String;Landroid/app/Activity;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract init(Ljava/lang/String;Landroid/app/Activity;Z)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "regionType"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "initWithRegion"
    .end annotation
.end method

.method public abstract open(I)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "open"
    .end annotation
.end method

.method public abstract openSceneEntry(ILjava/lang/String;)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "sceneId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "openSceneEntry"
    .end annotation
.end method

.method public abstract openUserCenter(ILjava/lang/String;)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "userId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "openUserCenter"
    .end annotation
.end method

.method public abstract publish(I[Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "imagePaths"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "content"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "publish"
    .end annotation
.end method

.method public abstract publishVideo(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "videoPaths"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "title"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "desc"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "publishVideo"
    .end annotation
.end method

.method public abstract publishVideo(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "config"
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "videoPaths"
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "imagePaths"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "title"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "desc"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "publishVideoImage"
    .end annotation
.end method

.method public abstract setCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setCallback"
    .end annotation
.end method

.method public abstract setRequestOrientation(Landroid/app/Activity;I)V
    .param p2    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "orientation"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setRequestOrientation"
    .end annotation
.end method
