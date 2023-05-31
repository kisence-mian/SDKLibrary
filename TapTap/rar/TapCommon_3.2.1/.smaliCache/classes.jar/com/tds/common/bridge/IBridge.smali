.class public interface abstract Lcom/tds/common/bridge/IBridge;
.super Ljava/lang/Object;
.source "IBridge.java"


# virtual methods
.method public abstract callHandler(Ljava/lang/String;)V
.end method

.method public abstract init(Landroid/app/Activity;)V
.end method

.method public abstract register(Ljava/lang/Class;Lcom/tds/common/bridge/IBridgeService;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tds/common/bridge/IBridgeService;",
            ">;",
            "Lcom/tds/common/bridge/IBridgeService;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerHandler(Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
.end method
