.class public Lcom/tds/common/entities/TapConfig;
.super Ljava/lang/Object;
.source "TapConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/entities/TapConfig$Builder;
    }
.end annotation


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final clientId:Ljava/lang/String;

.field public final clientToken:Ljava/lang/String;

.field public final regionType:I

.field public final serverUrl:Ljava/lang/String;

.field public tapDBConfig:Lcom/tds/common/entities/TapDBConfig;


# direct methods
.method public constructor <init>(Lcom/tds/common/entities/TapConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->clientId:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$000(Lcom/tds/common/entities/TapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    .line 30
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->clientToken:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$100(Lcom/tds/common/entities/TapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    .line 31
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->serverUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$200(Lcom/tds/common/entities/TapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig;->serverUrl:Ljava/lang/String;

    .line 32
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->regionType:I
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$300(Lcom/tds/common/entities/TapConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tds/common/entities/TapConfig;->regionType:I

    .line 33
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->appContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$400(Lcom/tds/common/entities/TapConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig;->appContext:Landroid/content/Context;

    .line 34
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$500(Lcom/tds/common/entities/TapConfig$Builder;)Lcom/tds/common/entities/TapDBConfig;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/tds/common/entities/TapDBConfig;

    invoke-direct {v0}, Lcom/tds/common/entities/TapDBConfig;-><init>()V

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    .line 35
    :cond_2e
    # getter for: Lcom/tds/common/entities/TapConfig$Builder;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;
    invoke-static {p1}, Lcom/tds/common/entities/TapConfig$Builder;->access$500(Lcom/tds/common/entities/TapConfig$Builder;)Lcom/tds/common/entities/TapDBConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    .line 36
    return-void
.end method

.method public static constructorTapConfig(Landroid/app/Activity;Ljava/lang/String;)Lcom/tds/common/entities/TapConfig;
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "dbConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    .local v2, "dbJsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_15

    const-string v3, "channel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_15
    move-object v3, v0

    .line 43
    .local v3, "channel":Ljava/lang/String;
    :goto_16
    if-eqz v2, :cond_1f

    const-string v4, "gameVersion"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_20

    :cond_1f
    move-object v4, v0

    .line 44
    .local v4, "gameVersion":Ljava/lang/String;
    :goto_20
    const/4 v5, 0x1

    if-eqz v2, :cond_2e

    const-string v6, "enable"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v6, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v5

    .line 46
    .local v6, "enable":Z
    :goto_2f
    new-instance v7, Lcom/tds/common/entities/TapDBConfig;

    invoke-direct {v7}, Lcom/tds/common/entities/TapDBConfig;-><init>()V

    .line 47
    .local v7, "dbConfig":Lcom/tds/common/entities/TapDBConfig;
    invoke-virtual {v7, v6}, Lcom/tds/common/entities/TapDBConfig;->setEnable(Z)V

    .line 48
    invoke-virtual {v7, v3}, Lcom/tds/common/entities/TapDBConfig;->setChannel(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v7, v4}, Lcom/tds/common/entities/TapDBConfig;->setGameVersion(Ljava/lang/String;)V

    .line 51
    new-instance v8, Lcom/tds/common/entities/TapConfig$Builder;

    invoke-direct {v8}, Lcom/tds/common/entities/TapConfig$Builder;-><init>()V

    invoke-virtual {v8, p0}, Lcom/tds/common/entities/TapConfig$Builder;->withAppContext(Landroid/content/Context;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v8

    const-string v9, "clientID"

    .line 52
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tds/common/entities/TapConfig$Builder;->withClientId(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v8

    const-string v9, "clientToken"

    .line 53
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tds/common/entities/TapConfig$Builder;->withClientToken(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v8

    const-string v9, "isCN"

    .line 54
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_63

    goto :goto_64

    :cond_63
    const/4 v5, 0x2

    :goto_64
    invoke-virtual {v8, v5}, Lcom/tds/common/entities/TapConfig$Builder;->withRegionType(I)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v7}, Lcom/tds/common/entities/TapConfig$Builder;->withTapDBConfig(Lcom/tds/common/entities/TapDBConfig;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lcom/tds/common/entities/TapConfig$Builder;->build()Lcom/tds/common/entities/TapConfig;

    move-result-object v0
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_70} :catch_71

    .line 51
    return-object v0

    .line 57
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "dbJsonObject":Lorg/json/JSONObject;
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "gameVersion":Ljava/lang/String;
    .end local v6    # "enable":Z
    .end local v7    # "dbConfig":Lcom/tds/common/entities/TapDBConfig;
    :catch_71
    move-exception v1

    .line 58
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    .end local v1    # "e":Lorg/json/JSONException;
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapConfig{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", clientToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", serverUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/TapConfig;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/common/entities/TapConfig;->regionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/entities/TapConfig;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tapDBConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/entities/TapConfig;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    .line 114
    invoke-virtual {v1}, Lcom/tds/common/entities/TapDBConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method
