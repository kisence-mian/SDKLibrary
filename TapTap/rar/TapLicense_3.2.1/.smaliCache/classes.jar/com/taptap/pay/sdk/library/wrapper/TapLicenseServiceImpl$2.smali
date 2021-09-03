.class Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;
.super Ljava/lang/Object;
.source "TapLicenseServiceImpl.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->setDLCCallbackWithParams(Lcom/tds/common/bridge/BridgeCallback;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;

.field final synthetic val$callback:Lcom/tds/common/bridge/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;

    .line 56
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;->this$0:Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderCallBack(Ljava/lang/String;I)V
    .registers 6
    .param p1, "dlc"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "orderDLC"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "orderStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_10

    .line 83
    goto :goto_14

    .line 81
    :catch_10
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_14
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onQueryCallBack(ILjava/util/HashMap;)Z
    .registers 6
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 59
    .local p2, "queryList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "queryCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v1, "queryResult"

    invoke-static {p2}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    .line 65
    goto :goto_18

    .line 63
    :catch_14
    move-exception v1

    .line 64
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_18
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    return v1
.end method
