.class public interface abstract Lcom/tds/tapdb/wrapper/TapDBService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tds/common/bridge/IBridgeService;


# annotations
.annotation runtime Lcom/tds/common/bridge/annotation/BridgeService;
    value = "TDSTapDBService"
.end annotation


# virtual methods
.method public abstract clearStaticProperties()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "clearStaticProperties"
    .end annotation
.end method

.method public abstract clearUser()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "clearUser"
    .end annotation
.end method

.method public abstract closeFetchTapTapDeviceId()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "closeFetchTapTapDeviceId"
    .end annotation
.end method

.method public abstract deviceAdd(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "deviceAdd"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "deviceAdd"
    .end annotation
.end method

.method public abstract deviceInitialize(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "deviceInitialize"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "deviceInitialize"
    .end annotation
.end method

.method public abstract deviceUpdate(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "deviceUpdate"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "deviceUpdate"
    .end annotation
.end method

.method public abstract enableLog(Z)V
    .param p1    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "enableLog"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "enableLog"
    .end annotation
.end method

.method public abstract getTapTapDID(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "getTapTapDID"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "channel"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "channel"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "gameVersion"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "channel"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "gameVersion"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "properties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "channel"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "gameVersion"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "isCN"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "channel"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "isCN"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "init"
    .end annotation
.end method

.method public abstract onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "orderId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "product"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "amount"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "currencyType"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "payment"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "onCharge"
    .end annotation
.end method

.method public abstract onChargeWithProperties(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "orderId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "product"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "amount"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "currencyType"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "payment"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "properties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "onChargeWithProperties"
    .end annotation
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "eventCode"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "properties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "onEvent"
    .end annotation
.end method

.method public abstract registerDynamicProperties(Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;)V
    .param p1    # Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "registerDynamicProperties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "registerDynamicProperties"
    .end annotation
.end method

.method public abstract registerDynamicPropertiesUE()V
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "registerDynamicPropertiesUE"
    .end annotation
.end method

.method public abstract registerStaticProperties(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "registerStaticProperties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "registerStaticProperties"
    .end annotation
.end method

.method public abstract setCustomEventHost(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "setCustomEventHost"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setCustomEventHost"
    .end annotation
.end method

.method public abstract setHost(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "setHost"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setHost"
    .end annotation
.end method

.method public abstract setLevel(I)V
    .param p1    # I
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "level"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setLevel"
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "name"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setName"
    .end annotation
.end method

.method public abstract setServer(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "server"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setServer"
    .end annotation
.end method

.method public abstract setUser(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "userId"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setUser"
    .end annotation
.end method

.method public abstract setUser(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "userId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "loginType"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "setUserWithParams"
    .end annotation
.end method

.method public abstract track(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "eventName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "properties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "track"
    .end annotation
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "eventName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "properties"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "trackEvent"
    .end annotation
.end method

.method public abstract unregisterStaticProperty(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "unregisterStaticProperty"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "unregisterStaticProperty"
    .end annotation
.end method

.method public abstract userAdd(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "userAdd"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "userAdd"
    .end annotation
.end method

.method public abstract userInitialize(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "userInitialize"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "userInitialize"
    .end annotation
.end method

.method public abstract userUpdate(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            value = "userUpdate"
        .end annotation
    .end param
    .annotation runtime Lcom/tds/common/bridge/annotation/BridgeMethod;
        value = "userUpdate"
    .end annotation
.end method
