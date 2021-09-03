.class Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl$1;
.super Ljava/lang/Object;
.source "TapMomentServiceImpl.java"

# interfaces
.implements Lcom/tapsdk/moment/TapMoment$TapMomentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;->setCallback(Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;

.field final synthetic val$callback:Lcom/tds/common/bridge/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;

    .line 37
    iput-object p1, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl$1;->this$0:Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl;

    iput-object p2, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/tapsdk/moment/wrapper/TapMomentServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 44
    return-void
.end method
