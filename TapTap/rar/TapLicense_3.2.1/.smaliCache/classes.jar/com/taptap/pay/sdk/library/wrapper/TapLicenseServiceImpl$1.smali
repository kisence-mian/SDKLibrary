.class Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$1;
.super Ljava/lang/Object;
.source "TapLicenseServiceImpl.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/TapLicenseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;->setLicenseCallback(Lcom/tds/common/bridge/BridgeCallback;)V
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

    .line 30
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$1;->this$0:Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseSuccess()V
    .registers 4

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "login"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_d

    .line 38
    goto :goto_11

    .line 36
    :catch_d
    move-exception v1

    .line 37
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_11
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/wrapper/TapLicenseServiceImpl$1;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 40
    return-void
.end method
