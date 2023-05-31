.class Lcom/tds/common/wrapper/TDSCommonServiceImpl$1;
.super Ljava/lang/Object;
.source "TDSCommonServiceImpl.java"

# interfaces
.implements Lcom/tds/common/region/TdsRegionHelper$RegionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/wrapper/TDSCommonServiceImpl;->getRegionCode(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/wrapper/TDSCommonServiceImpl;

.field final synthetic val$callback:Lcom/tds/common/bridge/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/tds/common/wrapper/TDSCommonServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/wrapper/TDSCommonServiceImpl;

    .line 109
    iput-object p1, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl$1;->this$0:Lcom/tds/common/wrapper/TDSCommonServiceImpl;

    iput-object p2, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegion(Z)V
    .registers 5
    .param p1, "isMainland"    # Z

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isMainland"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 115
    return-void
.end method
