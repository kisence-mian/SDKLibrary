.class public Lcom/appsflyer/AppsFlyerSDK;
.super LsdkInterface/SDKBase;
.source "AppsFlyerSDK.java"

# interfaces
.implements LsdkInterface/IOther;
.implements LsdkInterface/ILog;


# instance fields
.field AF_DEV_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 18
    const-string v0, "xxx"

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerSDK;->AF_DEV_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetFunctionName()[Ljava/lang/String;
    .registers 2

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public LogError(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 146
    return-void
.end method

.method public LogPay(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppsFlyer LogPay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerSDK;->SendLog(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public LogPaySuccess(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 101
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 86
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 91
    return-void
.end method

.method public OnApplicationCreate()V
    .registers 5

    .line 22
    invoke-super {p0}, LsdkInterface/SDKBase;->OnApplicationCreate()V

    .line 24
    :try_start_3
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "AF_DEV_KEY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerSDK;->AF_DEV_KEY:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppsFlyerSDK OnApplicationCreate AF_DEV_KEY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerSDK;->AF_DEV_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerSDK;->SendLog(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/appsflyer/AppsFlyerSDK$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/AppsFlyerSDK$1;-><init>(Lcom/appsflyer/AppsFlyerSDK;)V

    .line 56
    .local v0, "conversionListener":Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerSDK;->AF_DEV_KEY:Ljava/lang/String;

    sget-object v3, LsdkInterface/application/MainApplication;->instance:LsdkInterface/application/MainApplication;

    invoke-virtual {v3}, LsdkInterface/application/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3f

    .line 60
    nop

    .end local v0    # "conversionListener":Lcom/appsflyer/AppsFlyerConversionListener;
    goto :goto_5a

    .line 58
    :catch_3f
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppsFlyerSDK Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/appsflyer/AppsFlyerSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method public OnEvent(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 120
    const-string v0, "EventMap"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v1, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_7
    const-string v2, "EventID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "eventID":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "map":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "jsonMap":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 129
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 131
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    nop

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_20

    .line 136
    .end local v0    # "map":Ljava/lang/String;
    .end local v3    # "jsonMap":Lorg/json/JSONObject;
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_35
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_40} :catch_41

    .line 140
    .end local v2    # "eventID":Ljava/lang/String;
    goto :goto_45

    .line 138
    :catch_41
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_45
    return-void
.end method

.method public OnPause()V
    .registers 3

    .line 70
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->onPause(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public OnStart()V
    .registers 3

    .line 65
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public Other(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 76
    return-void
.end method

.method public PurchaseVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 111
    return-void
.end method

.method public RewardVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 106
    return-void
.end method

.method public UseItem(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 116
    return-void
.end method
