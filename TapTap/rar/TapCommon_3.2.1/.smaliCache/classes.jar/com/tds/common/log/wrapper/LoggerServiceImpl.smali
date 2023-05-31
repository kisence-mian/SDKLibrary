.class public Lcom/tds/common/log/wrapper/LoggerServiceImpl;
.super Ljava/lang/Object;
.source "LoggerServiceImpl.java"

# interfaces
.implements Lcom/tds/common/log/wrapper/LoggerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "logConfig"    # Ljava/lang/String;

    .line 16
    :try_start_0
    const-class v0, Lcom/tds/common/log/entities/LogConfig;

    invoke-static {p2, v0}, Lcom/tds/common/net/json/JsonUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/log/entities/LogConfig;

    .line 17
    .local v0, "originConfig":Lcom/tds/common/log/entities/LogConfig;
    new-instance v1, Lcom/tds/common/log/entities/LogConfig$Builder;

    invoke-direct {v1}, Lcom/tds/common/log/entities/LogConfig$Builder;-><init>()V

    iget-object v2, v0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Lcom/tds/common/log/entities/LogConfig$Builder;->withTopic(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v1

    iget v2, v0, Lcom/tds/common/log/entities/LogConfig;->sdkVersionCode:I

    .line 19
    invoke-virtual {v1, v2}, Lcom/tds/common/log/entities/LogConfig$Builder;->withSdkVersionCode(I)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/tds/common/log/entities/LogConfig;->sdkVersionName:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Lcom/tds/common/log/entities/LogConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/tds/common/log/entities/LogConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/log/entities/LogConfig;

    move-result-object v1

    .line 22
    .local v1, "targetConfig":Lcom/tds/common/log/entities/LogConfig;
    invoke-static {v1}, Lcom/tds/common/log/Logger;->init(Lcom/tds/common/log/entities/LogConfig;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_27

    .line 25
    .end local v0    # "originConfig":Lcom/tds/common/log/entities/LogConfig;
    .end local v1    # "targetConfig":Lcom/tds/common/log/entities/LogConfig;
    goto :goto_2b

    .line 23
    :catch_27
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2b
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
