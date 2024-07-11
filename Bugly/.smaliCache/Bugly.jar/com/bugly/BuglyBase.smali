.class public Lcom/bugly/BuglyBase;
.super LsdkInterface/SDKBase;
.source "BuglyBase.java"

# interfaces
.implements LsdkInterface/ILog;


# instance fields
.field appID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/bugly/BuglyBase;->appID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Init(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 19
    const-string v0, "BuglyBase Init start"

    invoke-virtual {p0, v0}, Lcom/bugly/BuglyBase;->SendLog(Ljava/lang/String;)V

    .line 21
    :try_start_5
    invoke-virtual {p0}, Lcom/bugly/BuglyBase;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "AppId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugly/BuglyBase;->appID:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuglyBase Init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bugly/BuglyBase;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugly/BuglyBase;->SendLog(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/bugly/BuglyBase;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bugly/BuglyBase;->appID:Ljava/lang/String;

    invoke-static {}, LsdkInterface/SdkInterface;->IsDebug()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3a} :catch_3b

    .line 30
    goto :goto_3f

    .line 28
    :catch_3b
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3f
    return-void
.end method

.method public LogPay(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 48
    return-void
.end method

.method public LogPaySuccess(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 53
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 43
    return-void
.end method

.method public OnEvent(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 73
    return-void
.end method

.method public PurchaseVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 63
    return-void
.end method

.method public RewardVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 58
    return-void
.end method

.method public UseItem(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 68
    return-void
.end method
