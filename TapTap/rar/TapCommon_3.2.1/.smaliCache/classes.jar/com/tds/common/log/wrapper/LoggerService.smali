.class public interface abstract Lcom/tds/common/log/wrapper/LoggerService;
.super Ljava/lang/Object;
.source "LoggerService.java"

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TDSLoggerService"
.end annotation


# virtual methods
.method public abstract init(Landroid/app/Activity;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "LogConfig"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "sdkName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "tag"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "message"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "log"
    .end annotation
.end method
